                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_getdfa_α
proc_getdfa_α:
proc_getdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 880
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
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], 34
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n1_call_proc_staged_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "Enter states (1 character names): "
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:
                        lea              rsi, [rbp + 1072]
                        call             proc_readset_dcα
                                                                                        jmp   .Lx49_2
.Lx49_2:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n2_assign_α
n1_call_proc_staged_β:
                                                                                        jmp   n3_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 22
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n4_call_proc_staged_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "Enter input alphabet: "
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:
                        lea              rsi, [rbp + 1008]
                        call             proc_readset_dcα
                                                                                        jmp   .Lx53_2
.Lx53_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n6_lit_string_α
                                                                                        jmp   n5_assign_α
n4_call_proc_staged_β:
                                                                                        jmp   n6_lit_string_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 39
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n7_call_proc_staged_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "Enter Final states (subset of states): "
#-----------------------------------------------------------------------------------------------------------------------
n7_call_proc_staged_α:
                        lea              rsi, [rbp + 944]
                        call             proc_readset_dcα
                                                                                        jmp   .Lx57_2
.Lx57_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n8_assign_α
n7_call_proc_staged_β:
                                                                                        jmp   n9_lit_string_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 880], 2                       # result
                        mov              dword ptr [rbp + 884], 25
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n10_call_builtin_icon_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "What is the start state? "
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn61:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]                          # fn
                        lea              rsi, [rbp + 848]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n11_call_builtin_icon_α
                                                                                        jmp   n11_call_builtin_icon_α
n10_call_builtin_icon_β:
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn63:               .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]                          # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_builtin_icon_α
                                                                                        jmp   n12_assign_α
n11_call_builtin_icon_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn66:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]                          # fn
                        lea              rsi, [rbp + 784]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n15_var_α
                                                                                        jmp   n14_assign_α
n13_call_builtin_icon_β:
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n16_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n16_iterate_α:
                        mov              qword ptr [rbp + 320], 0
.Lx71_0:
                        mov              rdi, qword ptr [rbp + 336]                     # obj
                        mov              rsi, qword ptr [rbp + 344]                     # obj
                        mov              rdx, qword ptr [rbp + 320]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx71_240
                        add              rsp, 880
                                                                                        jmp   n40_var_α
.Lx71_240:
                                                                                        jmp   n17_assign_α
n16_iterate_β:
                        inc              qword ptr [rbp + 320]
                                                                                        jmp   .Lx71_0
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n19_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n19_iterate_α:
                        mov              qword ptr [rbp + 256], 0
.Lx76_0:
                        mov              rdi, qword ptr [rbp + 272]                     # obj
                        mov              rsi, qword ptr [rbp + 280]                     # obj
                        mov              rdx, qword ptr [rbp + 256]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              rax, 99
                                                                                        je    n16_iterate_β
                                                                                        jmp   n20_assign_α
n19_iterate_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx76_0
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n21_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_conjunction_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n22_bound_α
n21_conjunction_β:
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_bound_α:
                        mov              qword ptr [rbp + 352], rsp
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 12
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n24_var_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "enter delta("
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n26_var_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 4
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n28_call_builtin_icon_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn89:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]                          # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n29_var_ref_α
                                                                                        jmp   n29_var_ref_α
n28_call_builtin_icon_β:
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n32_binop_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]                    # a
                        mov              rsi, qword ptr [rbp + 1192]                    # a
                        mov              rdx, qword ptr [rbp + 480]                     # b
                        mov              rcx, qword ptr [rbp + 488]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n34_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        mov              rdi, qword ptr [rbp + 448]                     # a
                        mov              rsi, qword ptr [rbp + 456]                     # a
                        mov              rdx, qword ptr [rbp + 1168]                    # b
                        mov              rcx, qword ptr [rbp + 1176]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n35_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:
                        mov              rdi, qword ptr [rbp + 416]                     # base
                        mov              rsi, qword ptr [rbp + 424]                     # base
                        mov              rdx, qword ptr [rbp + 432]                     # idx
                        mov              rcx, qword ptr [rbp + 440]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n39_unmark_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn101:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n39_unmark_α
                                                                                        jmp   n37_assign_var_α
n36_call_builtin_icon_β:
                                                                                        jmp   n39_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_var_α:
                        mov              rdi, qword ptr [rbp + 512]                     # var
                        mov              rsi, qword ptr [rbp + 520]                     # var
                        mov              rdx, qword ptr [rbp + 544]                     # val
                        mov              rcx, qword ptr [rbp + 552]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n39_unmark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n38_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n38_conjunction_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n39_unmark_α
n38_conjunction_β:
                                                                                        jmp   n39_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n39_unmark_α:
                        mov              rsp, qword ptr [rbp + 352]
                                                                                        jmp   n19_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n45_call_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn117:              .string          "dfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_getdfa_ω
                                                                                        jmp   n46_return_α
n45_call_β:
                                                                                        jmp   proc_getdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_β:
                                                                                        jmp   proc_getdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_dcα:
                        pop              r11
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1216], r11
                        lea              rax, [rip + .Lx119_2]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rax, [rip + .Lx119_3]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1088                                      # suffix_off
                        mov              edx, 1216                                      # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_getdfa_α_body
.Lx119_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx119_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_readset_α
proc_readset_α:
proc_readset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        sub              rsp, 224
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n121_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn134:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]                         # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n122_make_list_α
                                                                                        jmp   n122_make_list_α
n121_call_builtin_icon_β:
                                                                                        jmp   n122_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n122_make_list_α:
                        lea              rdi, [rbp + 272]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n123_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n125_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn141:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]                         # fn
                        lea              rsi, [rbp + 224]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx140_240
                        add              rsp, 224
                                                                                        jmp   n129_var_α
.Lx140_240:
                                                                                        jmp   n126_call_builtin_icon_α
n125_call_builtin_icon_β:
                        add              rsp, 224
                                                                                        jmp   n129_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn143:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx142_240
                        add              rsp, 224
                                                                                        jmp   n129_var_α
.Lx142_240:
                                                                                        jmp   n127_iterate_α
n126_call_builtin_icon_β:
                        add              rsp, 224
                                                                                        jmp   n129_var_α
#-----------------------------------------------------------------------------------------------------------------------
n127_iterate_α:
                        mov              qword ptr [rbp + 144], 0
.Lx145_0:
                        mov              rdi, qword ptr [rbp + 160]                     # obj
                        mov              rsi, qword ptr [rbp + 168]                     # obj
                        mov              rdx, qword ptr [rbp + 144]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx145_240
                        add              rsp, 224
                                                                                        jmp   n129_var_α
.Lx145_240:
                                                                                        jmp   n128_call_builtin_icon_α
n127_iterate_β:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx145_0
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn147:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n127_iterate_β
                                                                                        jmp   n127_iterate_β
n128_call_builtin_icon_β:
                                                                                        jmp   n127_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n130_return_α
#-----------------------------------------------------------------------------------------------------------------------
n130_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_readset_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_β:
                                                                                        jmp   proc_readset_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_dcα:
                        pop              r11
                        sub              rsp, 416
                        mov              qword ptr [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 368], r11
                        lea              rax, [rip + .Lx151_2]
                        mov              qword ptr [rbp + 376], rax
                        lea              rax, [rip + .Lx151_3]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 336                                       # suffix_off
                        mov              edx, 368                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_readset_α_body
.Lx151_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -400
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx151_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -400
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_showdfa_α
proc_showdfa_α:
proc_showdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        sub              rsp, 112
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
                        mov              qword ptr [rbp + 1520], 3                      # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n153_lit_integer_α
.Lx214_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 3                      # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n154_to_α
.Lx215_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n154_to_α:
                        mov              rdi, qword ptr [rbp + 1520]                    # v
                        mov              rsi, qword ptr [rbp + 1528]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1520], 3
                        mov              qword ptr [rbp + 1528], rax
                        mov              rdi, qword ptr [rbp + 1536]                    # v
                        mov              rsi, qword ptr [rbp + 1544]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1536], 3
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1504], rax
.Lx217_0:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1544]
                        cmp              rax, rcx
                                                                                        jle   .Lx217_240
                        add              rsp, 112
                                                                                        jmp   n158_var_α
.Lx217_240:
                        mov              qword ptr [rbp + 1488], 3
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n155_bound_α
n154_to_β:
                        inc              qword ptr [rbp + 1504]
                                                                                        jmp   .Lx217_0
#-----------------------------------------------------------------------------------------------------------------------
n155_bound_α:
                        mov              qword ptr [rbp + 1552], rsp
                                                                                        jmp   n156_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn221:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]                         # fn
                        lea              rsi, [rbp + 1616]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 104
                                                                                        je    n157_unmark_α
                                                                                        jmp   n157_unmark_α
n156_call_builtin_icon_β:
                                                                                        jmp   n157_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n157_unmark_α:
                        mov              rsp, qword ptr [rbp + 1552]
                                                                                        jmp   n154_to_β
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 35
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n160_call_builtin_icon_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          " Deterministic Finite Automaton is:"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn228:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]                         # fn
                        lea              rsi, [rbp + 1408]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 104
                                                                                        je    n161_call_builtin_icon_α
                                                                                        jmp   n161_call_builtin_icon_α
n160_call_builtin_icon_β:
                                                                                        jmp   n161_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn230:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]                         # fn
                        lea              rsi, [rbp + 1376]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 104
                                                                                        je    n162_lit_string_α
                                                                                        jmp   n162_lit_string_α
n161_call_builtin_icon_β:
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 1344], 2                      # result
                        mov              dword ptr [rbp + 1348], 17
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n163_call_builtin_icon_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "\t(Q,S,delta,q0,F)"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn233:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]                         # fn
                        lea              rsi, [rbp + 1312]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n164_call_builtin_icon_α
                                                                                        jmp   n164_call_builtin_icon_α
n163_call_builtin_icon_β:
                                                                                        jmp   n164_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn235:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]                         # fn
                        lea              rsi, [rbp + 1280]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    n165_lit_string_α
                                                                                        jmp   n165_lit_string_α
n164_call_builtin_icon_β:
                                                                                        jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 6
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n166_call_builtin_icon_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "where:"
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn238:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]                         # fn
                        lea              rsi, [rbp + 1216]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n167_call_builtin_icon_α
                                                                                        jmp   n167_call_builtin_icon_α
n166_call_builtin_icon_β:
                                                                                        jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn240:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]                         # fn
                        lea              rsi, [rbp + 1184]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n168_lit_string_α
                                                                                        jmp   n168_lit_string_α
n167_call_builtin_icon_β:
                                                                                        jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n169_var_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n170_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n170_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx244_0]                # fname
                        mov              rsi, qword ptr [rbp + 1152]                    # obj
                        mov              rdx, qword ptr [rbp + 1160]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n172_lit_string_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n171_call_proc_staged_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        lea              rsi, [rbp + 1120]
                        lea              rdx, [rbp + 1136]
                        call             proc_writeset_dcα
                                                                                        jmp   .Lx246_2
.Lx246_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n172_lit_string_α
                                                                                        jmp   n172_lit_string_α
n171_call_proc_staged_β:
                                                                                        jmp   n172_lit_string_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n173_var_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n174_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n174_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx250_0]                # fname
                        mov              rsi, qword ptr [rbp + 1040]                    # obj
                        mov              rdx, qword ptr [rbp + 1048]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n176_lit_string_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n175_call_proc_staged_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 1024]
                        call             proc_writeset_dcα
                                                                                        jmp   .Lx252_2
.Lx252_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n176_lit_string_α
                                                                                        jmp   n176_lit_string_α
n175_call_proc_staged_β:
                                                                                        jmp   n176_lit_string_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n177_var_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n178_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n178_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx256_0]                # fname
                        mov              rsi, qword ptr [rbp + 928]                     # obj
                        mov              rdx, qword ptr [rbp + 936]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n180_lit_string_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n179_call_proc_staged_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n179_call_proc_staged_α:
                        lea              rsi, [rbp + 896]
                        lea              rdx, [rbp + 912]
                        call             proc_writeset_dcα
                                                                                        jmp   .Lx258_2
.Lx258_2:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n180_lit_string_α
                                                                                        jmp   n180_lit_string_α
n179_call_proc_staged_β:
                                                                                        jmp   n180_lit_string_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 16
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n181_var_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "\tStart state is "
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n182_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n182_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx262_0]                # fname
                        mov              rsi, qword ptr [rbp + 816]                     # obj
                        mov              rdx, qword ptr [rbp + 824]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n184_lit_string_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n183_call_builtin_icon_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "q0"
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn264:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]                         # fn
                        lea              rsi, [rbp + 736]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n184_lit_string_α
                                                                                        jmp   n184_lit_string_α
n183_call_builtin_icon_β:
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 8
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n185_call_builtin_icon_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "\tDelta: "
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn267:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]                         # fn
                        lea              rsi, [rbp + 672]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n186_var_α
                                                                                        jmp   n186_var_α
n185_call_builtin_icon_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n187_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n187_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx270_0]                # fname
                        mov              rsi, qword ptr [rbp + 128]                     # obj
                        mov              rdx, qword ptr [rbp + 136]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n212_var_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n188_iterate_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n188_iterate_α:
                        mov              qword ptr [rbp + 96], 0
.Lx272_0:
                        mov              rdi, qword ptr [rbp + 112]                     # obj
                        mov              rsi, qword ptr [rbp + 120]                     # obj
                        mov              rdx, qword ptr [rbp + 96]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              rax, 99
                                                                                        je    n212_var_α
                                                                                        jmp   n189_assign_α
n188_iterate_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx272_0
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n190_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n190_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 3
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n192_var_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "\td("
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n194_var_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n195_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n195_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx282_0]                # fname
                        mov              rsi, qword ptr [rbp + 480]                     # obj
                        mov              rdx, qword ptr [rbp + 488]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n209_call_builtin_icon_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n196_iterate_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n196_iterate_α:
                        mov              qword ptr [rbp + 448], 0
.Lx284_0:
                        mov              rdi, qword ptr [rbp + 464]                     # obj
                        mov              rsi, qword ptr [rbp + 472]                     # obj
                        mov              rdx, qword ptr [rbp + 448]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              rax, 99
                                                                                        je    n209_call_builtin_icon_α
                                                                                        jmp   n197_assign_α
n196_iterate_β:
                        inc              qword ptr [rbp + 448]
                                                                                        jmp   .Lx284_0
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 4
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n199_var_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n200_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n200_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx289_0]                # fname
                        mov              rsi, qword ptr [rbp + 528]                     # obj
                        mov              rdx, qword ptr [rbp + 536]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n196_iterate_β
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n201_var_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n203_binop_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n203_binop_α:
                        mov              rdi, qword ptr [rbp + 1632]                    # a
                        mov              rsi, qword ptr [rbp + 1640]                    # a
                        mov              rdx, qword ptr [rbp + 592]                     # b
                        mov              rcx, qword ptr [rbp + 600]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n204_var_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n205_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n205_binop_α:
                        mov              rdi, qword ptr [rbp + 560]                     # a
                        mov              rsi, qword ptr [rbp + 568]                     # a
                        mov              rdx, qword ptr [rbp + 1648]                    # b
                        mov              rcx, qword ptr [rbp + 1656]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n206_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n206_subscript_α:
                        mov              rdi, qword ptr [rbp + 512]                     # base
                        mov              rsi, qword ptr [rbp + 520]                     # base
                        mov              rdx, qword ptr [rbp + 544]                     # idx
                        mov              rcx, qword ptr [rbp + 552]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n196_iterate_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n207_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_deref_α:
                        mov              rdi, qword ptr [rbp + 624]                     # d
                        mov              rsi, qword ptr [rbp + 632]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n196_iterate_β
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n208_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn300:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 6                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n196_iterate_β
                                                                                        jmp   n196_iterate_β
n208_call_builtin_icon_β:
                                                                                        jmp   n196_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn302:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]                         # fn
                        lea              rsi, [rbp + 224]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n211_unmark_α
                                                                                        jmp   n210_conjunction_α
n209_call_builtin_icon_β:
                                                                                        jmp   n211_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n210_conjunction_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n211_unmark_α
n210_conjunction_β:
                                                                                        jmp   n211_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n211_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n188_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n213_return_α
#-----------------------------------------------------------------------------------------------------------------------
n213_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_showdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_β:
                                                                                        jmp   proc_showdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_dcα:
                        pop              r11
                        sub              rsp, 1728
                        mov              qword ptr [rsp + 1704], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1680], r11
                        lea              rax, [rip + .Lx309_2]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rax, [rip + .Lx309_3]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1632                                      # suffix_off
                        mov              edx, 1680                                      # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_showdfa_α_body
.Lx309_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1712
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx309_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1712
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_writeset_α
proc_writeset_α:
proc_writeset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        sub              rsp, 144
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
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 0
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n311_assign_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n312_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n314_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n314_iterate_α:
                        mov              qword ptr [rbp + 368], 0
.Lx336_0:
                        mov              rdi, qword ptr [rbp + 384]                     # obj
                        mov              rsi, qword ptr [rbp + 392]                     # obj
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx336_240
                        add              rsp, 144
                                                                                        jmp   n319_lit_string_α
.Lx336_240:
                                                                                        jmp   n315_lit_string_α
n314_iterate_β:
                        inc              qword ptr [rbp + 368]
                                                                                        jmp   .Lx336_0
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n316_binop_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n316_binop_α:
                        mov              rdi, qword ptr [rbp + 352]                     # a
                        mov              rsi, qword ptr [rbp + 360]                     # a
                        mov              rdx, qword ptr [rbp + 400]                     # b
                        mov              rcx, qword ptr [rbp + 408]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n317_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:
                        mov              rdi, qword ptr [rbp + 432]                     # a
                        mov              rsi, qword ptr [rbp + 440]                     # a
                        mov              rdx, qword ptr [rbp + 336]                     # b
                        mov              rcx, qword ptr [rbp + 344]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n318_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n318_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n314_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n320_var_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n321_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 4
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n322_var_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          " = {"
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n323_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n324_lit_integer_α
.Lx347_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n325_subscript_α
.Lx348_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n325_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # arr
                        mov              rsi, qword ptr [rbp + 232]                     # arr
                        mov              rdx, qword ptr [rbp + 240]                     # i
                        mov              rcx, qword ptr [rbp + 248]                     # i
                        mov              r8, qword ptr [rbp + 256]                      # j
                        mov              r9, qword ptr [rbp + 264]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n328_return_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n327_call_builtin_icon_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn352:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n328_return_α
                                                                                        jmp   n328_return_α
n327_call_builtin_icon_β:
                                                                                        jmp   n328_return_α
#-----------------------------------------------------------------------------------------------------------------------
n328_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_writeset_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_β:
                                                                                        jmp   proc_writeset_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_dcα:
                        pop              r11
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 464], r11
                        lea              rax, [rip + .Lx354_2]
                        mov              qword ptr [rbp + 472], rax
                        lea              rax, [rip + .Lx354_3]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 432                                       # suffix_off
                        mov              edx, 464                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_writeset_α_body
.Lx354_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -496
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx354_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -496
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_minimize_α
proc_minimize_α:
proc_minimize_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_builtin_icon_α:
                        sub              rsp, 2912
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
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        .section         .rodata
.Lrkfn526:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]                         # fn
                        lea              rsi, [rbp + 3264]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 104
                                                                                        je    n357_call_builtin_icon_α
                                                                                        jmp   n356_assign_α
n355_call_builtin_icon_β:
                                                                                        jmp   n357_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        mov              qword ptr [1879052288], rax                    # distab
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n357_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn529:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]                         # fn
                        lea              rsi, [rbp + 3232]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 104
                                                                                        je    n359_var_α
                                                                                        jmp   n358_assign_α
n357_call_builtin_icon_β:
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        mov              qword ptr [1879052304], rax                    # dlists
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n360_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n360_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx533_0]                # fname
                        mov              rsi, qword ptr [rbp + 3200]                    # obj
                        mov              rdx, qword ptr [rbp + 3208]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n362_var_α
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   n361_assign_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n361_assign_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n362_var_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n363_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n363_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx537_0]                # fname
                        mov              rsi, qword ptr [rbp + 3136]                    # obj
                        mov              rdx, qword ptr [rbp + 3144]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n368_var_α
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n364_var_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n365_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n365_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx540_0]                # fname
                        mov              rsi, qword ptr [rbp + 3168]                    # obj
                        mov              rdx, qword ptr [rbp + 3176]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n368_var_α
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n366_call_proc_staged_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n366_call_proc_staged_α:
                        lea              rsi, [rbp + 3120]
                        lea              rdx, [rbp + 3152]
                        call             proc_diff_dcα
                                                                                        jmp   .Lx542_2
.Lx542_2:
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 104
                                                                                        je    n368_var_α
                                                                                        jmp   n367_assign_α
n366_call_proc_staged_β:
                                                                                        jmp   n368_var_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "diff"
#-----------------------------------------------------------------------------------------------------------------------
n367_assign_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              rdx, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n369_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n369_iterate_α:
                        mov              qword ptr [rbp + 2816], 0
.Lx547_0:
                        mov              rdi, qword ptr [rbp + 2832]                    # obj
                        mov              rsi, qword ptr [rbp + 2840]                    # obj
                        mov              rdx, qword ptr [rbp + 2816]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx547_240
                        add              rsp, 2912
                                                                                        jmp   n385_disjunction_α
.Lx547_240:
                                                                                        jmp   n370_assign_α
n369_iterate_β:
                        inc              qword ptr [rbp + 2816]
                                                                                        jmp   .Lx547_0
#-----------------------------------------------------------------------------------------------------------------------
n370_assign_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n371_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n372_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n372_iterate_α:
                        mov              qword ptr [rbp + 2768], 0
.Lx552_0:
                        mov              rdi, qword ptr [rbp + 2784]                    # obj
                        mov              rsi, qword ptr [rbp + 2792]                    # obj
                        mov              rdx, qword ptr [rbp + 2768]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              rax, 99
                                                                                        je    n369_iterate_β
                                                                                        jmp   n373_assign_α
n372_iterate_β:
                        inc              qword ptr [rbp + 2768]
                                                                                        jmp   .Lx552_0
#-----------------------------------------------------------------------------------------------------------------------
n373_assign_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n374_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n374_conjunction_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n375_bound_α
n374_conjunction_β:
                                                                                        jmp   n385_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n375_bound_α:
                        mov              qword ptr [rbp + 2848], rsp
                                                                                        jmp   n376_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # distab
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n377_var_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n379_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n379_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # a
                        mov              rsi, qword ptr [rbp + 3288]                    # a
                        mov              rdx, qword ptr [rbp + 3296]                    # b
                        mov              rcx, qword ptr [rbp + 3304]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n380_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn565:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn565]                         # fn
                        lea              rsi, [rbp + 2928]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 104
                                                                                        je    n384_unmark_α
                                                                                        jmp   n381_subscript_α
n380_call_builtin_icon_β:
                                                                                        jmp   n384_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n381_subscript_α:
                        mov              rdi, qword ptr [rbp + 2896]                    # base
                        mov              rsi, qword ptr [rbp + 2904]                    # base
                        mov              rdx, qword ptr [rbp + 2912]                    # idx
                        mov              rcx, qword ptr [rbp + 2920]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n384_unmark_α
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 3040], 2                      # result
                        mov              dword ptr [rbp + 3044], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n383_assign_var_α
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3008]                    # var
                        mov              rsi, qword ptr [rbp + 3016]                    # var
                        mov              rdx, qword ptr [rbp + 3040]                    # val
                        mov              rcx, qword ptr [rbp + 3048]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n384_unmark_α
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n384_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n384_unmark_α:
                        mov              rsp, qword ptr [rbp + 2848]
                                                                                        jmp   n372_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n385_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n514_var_α
n385_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx572_0
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n386_var_α
.Lx572_0:
                        cmp              eax, 1
                                                                                        jne   .Lx572_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n386_var_α
.Lx572_1:
                                                                                        jmp   n386_var_α
n385_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        je    n518_iterate_β
                                                                                        jmp   n511_iterate_β
n385_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 1
                                                                                        je    n507_var_α
                                                                                        jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n387_var_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n388_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n388_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # lhs
                        mov              rsi, qword ptr [rbp + 3288]                    # lhs
                        mov              rdx, qword ptr [rbp + 3296]                    # rhs
                        mov              rcx, qword ptr [rbp + 3304]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n385_disjunction_β
                        mov              rdi, qword ptr [rbp + 3296]                    # d
                        mov              rsi, qword ptr [rbp + 3304]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n389_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n389_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n390_bound_α
n389_conjunction_β:
                                                                                        jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_bound_α:
                        mov              qword ptr [rbp + 496], rsp
                                                                                        jmp   n391_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n391_disjunction_α:
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0
                                                                                        jmp   n462_var_ref_α
n391_disjunction_as:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        jne   .Lx582_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n506_unmark_α
.Lx582_0:
                        cmp              eax, 1
                                                                                        jne   .Lx582_1
                                                                                        jmp   n506_unmark_α
.Lx582_1:
                                                                                        jmp   n506_unmark_α
n391_disjunction_β:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        je    n506_unmark_α
                                                                                        jmp   n506_unmark_α
n391_disjunction_af:
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1
                                                                                        je    n392_var_α
                                                                                        jmp   n506_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n393_field_get_α
n392_var_β:
                                                                                        jmp   n506_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n393_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx585_0]                # fname
                        mov              rsi, qword ptr [rbp + 1472]                    # obj
                        mov              rdx, qword ptr [rbp + 1480]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n506_unmark_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n394_iterate_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n394_iterate_α:
                        mov              qword ptr [rbp + 1440], 0
.Lx587_0:
                        mov              rdi, qword ptr [rbp + 1456]                    # obj
                        mov              rsi, qword ptr [rbp + 1464]                    # obj
                        mov              rdx, qword ptr [rbp + 1440]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              rax, 99
                                                                                        je    n506_unmark_α
                                                                                        jmp   n395_assign_α
n394_iterate_β:
                        inc              qword ptr [rbp + 1440]
                                                                                        jmp   .Lx587_0
#-----------------------------------------------------------------------------------------------------------------------
n395_assign_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n396_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n396_bound_α:
                        mov              qword ptr [rbp + 1488], rsp
                                                                                        jmp   n397_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n397_disjunction_α:
                        mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              dword ptr [rbp + 1552], 0
                                                                                        jmp   n398_var_α
n397_disjunction_as:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0
                                                                                        jne   .Lx592_0
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n461_unmark_α
.Lx592_0:
                                                                                        jmp   n461_unmark_α
n397_disjunction_β:
                        mov              eax, dword ptr [rbp + 1552]
                                                                                        jmp   n461_unmark_α
n397_disjunction_af:
                        add              dword ptr [rbp + 1552], 1
                        mov              eax, dword ptr [rbp + 1552]
                                                                                        jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n399_field_get_α
n398_var_β:
                                                                                        jmp   n397_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n399_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx595_0]                # fname
                        mov              rsi, qword ptr [rbp + 2448]                    # obj
                        mov              rdx, qword ptr [rbp + 2456]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n397_disjunction_af
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n400_var_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 2512], 2                      # result
                        mov              dword ptr [rbp + 2516], 1
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n402_binop_α
.Lx598_0:
                        .quad            .Lx598_0_s
.Lx598_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n402_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # a
                        mov              rsi, qword ptr [rbp + 3288]                    # a
                        mov              rdx, qword ptr [rbp + 2512]                    # b
                        mov              rcx, qword ptr [rbp + 2520]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n403_var_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n404_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n404_binop_α:
                        mov              rdi, qword ptr [rbp + 2480]                    # a
                        mov              rsi, qword ptr [rbp + 2488]                    # a
                        mov              rdx, qword ptr [rbp + 3344]                    # b
                        mov              rcx, qword ptr [rbp + 3352]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n405_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n405_subscript_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # base
                        mov              rsi, qword ptr [rbp + 2440]                    # base
                        mov              rdx, qword ptr [rbp + 2464]                    # idx
                        mov              rcx, qword ptr [rbp + 2472]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n397_disjunction_af
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n406_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n406_deref_α:
                        mov              rdi, qword ptr [rbp + 2544]                    # d
                        mov              rsi, qword ptr [rbp + 2552]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n397_disjunction_af
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n407_var_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n408_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n408_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx607_0]                # fname
                        mov              rsi, qword ptr [rbp + 2592]                    # obj
                        mov              rdx, qword ptr [rbp + 2600]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n397_disjunction_af
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n409_var_α
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:
                        mov              qword ptr [rbp + 2656], 2                      # result
                        mov              dword ptr [rbp + 2660], 1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n411_binop_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n411_binop_α:
                        mov              rdi, qword ptr [rbp + 3296]                    # a
                        mov              rsi, qword ptr [rbp + 3304]                    # a
                        mov              rdx, qword ptr [rbp + 2656]                    # b
                        mov              rcx, qword ptr [rbp + 2664]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n412_var_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n413_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n413_binop_α:
                        mov              rdi, qword ptr [rbp + 2624]                    # a
                        mov              rsi, qword ptr [rbp + 2632]                    # a
                        mov              rdx, qword ptr [rbp + 3344]                    # b
                        mov              rcx, qword ptr [rbp + 3352]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n414_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n414_subscript_α:
                        mov              rdi, qword ptr [rbp + 2576]                    # base
                        mov              rsi, qword ptr [rbp + 2584]                    # base
                        mov              rdx, qword ptr [rbp + 2608]                    # idx
                        mov              rcx, qword ptr [rbp + 2616]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n397_disjunction_af
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n415_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_deref_α:
                        mov              rdi, qword ptr [rbp + 2688]                    # d
                        mov              rsi, qword ptr [rbp + 2696]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n397_disjunction_af
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n416_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n416_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2560]                    # lhs
                        mov              rsi, qword ptr [rbp + 2568]                    # lhs
                        mov              rdx, qword ptr [rbp + 2704]                    # rhs
                        mov              rcx, qword ptr [rbp + 2712]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n397_disjunction_af
                        mov              rdi, qword ptr [rbp + 2704]                    # d
                        mov              rsi, qword ptr [rbp + 2712]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n417_var_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n418_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n418_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx620_0]                # fname
                        mov              rsi, qword ptr [rbp + 2144]                    # obj
                        mov              rdx, qword ptr [rbp + 2152]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n438_disjunction_α
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n419_var_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n420_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:
                        mov              qword ptr [rbp + 2208], 2                      # result
                        mov              dword ptr [rbp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n421_binop_α
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n421_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # a
                        mov              rsi, qword ptr [rbp + 3288]                    # a
                        mov              rdx, qword ptr [rbp + 2208]                    # b
                        mov              rcx, qword ptr [rbp + 2216]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n423_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n423_binop_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # a
                        mov              rsi, qword ptr [rbp + 2184]                    # a
                        mov              rdx, qword ptr [rbp + 3344]                    # b
                        mov              rcx, qword ptr [rbp + 3352]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n424_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n424_subscript_α:
                        mov              rdi, qword ptr [rbp + 2128]                    # base
                        mov              rsi, qword ptr [rbp + 2136]                    # base
                        mov              rdx, qword ptr [rbp + 2160]                    # idx
                        mov              rcx, qword ptr [rbp + 2168]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n438_disjunction_α
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n425_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n425_deref_α:
                        mov              rdi, qword ptr [rbp + 2240]                    # d
                        mov              rsi, qword ptr [rbp + 2248]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n438_disjunction_α
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n426_var_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n427_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n427_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx632_0]                # fname
                        mov              rsi, qword ptr [rbp + 2288]                    # obj
                        mov              rdx, qword ptr [rbp + 2296]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n438_disjunction_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n428_var_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rbp + 2352], 2                      # result
                        mov              dword ptr [rbp + 2356], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n430_binop_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n430_binop_α:
                        mov              rdi, qword ptr [rbp + 3296]                    # a
                        mov              rsi, qword ptr [rbp + 3304]                    # a
                        mov              rdx, qword ptr [rbp + 2352]                    # b
                        mov              rcx, qword ptr [rbp + 2360]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n431_var_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n432_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n432_binop_α:
                        mov              rdi, qword ptr [rbp + 2320]                    # a
                        mov              rsi, qword ptr [rbp + 2328]                    # a
                        mov              rdx, qword ptr [rbp + 3344]                    # b
                        mov              rcx, qword ptr [rbp + 3352]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n433_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n433_subscript_α:
                        mov              rdi, qword ptr [rbp + 2272]                    # base
                        mov              rsi, qword ptr [rbp + 2280]                    # base
                        mov              rdx, qword ptr [rbp + 2304]                    # idx
                        mov              rcx, qword ptr [rbp + 2312]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n438_disjunction_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n434_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n434_deref_α:
                        mov              rdi, qword ptr [rbp + 2384]                    # d
                        mov              rsi, qword ptr [rbp + 2392]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n438_disjunction_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n435_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n435_binop_α:
                        mov              rdi, qword ptr [rbp + 2256]                    # a
                        mov              rsi, qword ptr [rbp + 2264]                    # a
                        mov              rdx, qword ptr [rbp + 2400]                    # b
                        mov              rcx, qword ptr [rbp + 2408]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n436_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn644:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn644]                         # fn
                        lea              rsi, [rbp + 2080]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 104
                                                                                        je    n438_disjunction_α
                                                                                        jmp   n437_assign_α
n436_call_builtin_icon_β:
                                                                                        jmp   n438_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n437_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n438_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n438_disjunction_α:
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              dword ptr [rbp + 1920], 0
                                                                                        jmp   n455_var_α
n438_disjunction_as:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        jne   .Lx647_0
                                                                                        jmp   n439_var_ref_α
.Lx647_0:
                                                                                        jmp   n439_var_ref_α
n438_disjunction_β:
                        mov              eax, dword ptr [rbp + 1920]
                                                                                        jmp   n439_var_ref_α
n438_disjunction_af:
                        add              dword ptr [rbp + 1920], 1
                        mov              eax, dword ptr [rbp + 1920]
                                                                                        jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # dlists
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n440_var_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n441_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n441_subscript_α:
                        mov              rdi, qword ptr [rbp + 1808]                    # base
                        mov              rsi, qword ptr [rbp + 1816]                    # base
                        mov              rdx, qword ptr [rbp + 1824]                    # idx
                        mov              rcx, qword ptr [rbp + 1832]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n445_var_ref_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n442_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n442_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 104
                                                                                        je    n445_var_ref_α
                        mov              rdi, qword ptr [rbp + 1840]                    # d
                        mov              rsi, qword ptr [rbp + 1848]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n445_var_ref_α
                        cmp              eax, 0
                                                                                        jne   n445_var_ref_α
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n443_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n443_make_list_α:
                        lea              rdi, [rbp + 1904]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n444_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n444_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1856]                    # var
                        mov              rsi, qword ptr [rbp + 1864]                    # var
                        mov              rdx, qword ptr [rbp + 1888]                    # val
                        mov              rcx, qword ptr [rbp + 1896]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n445_var_ref_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n445_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # dlists
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n446_var_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n447_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n447_subscript_α:
                        mov              rdi, qword ptr [rbp + 1648]                    # base
                        mov              rsi, qword ptr [rbp + 1656]                    # base
                        mov              rdx, qword ptr [rbp + 1664]                    # idx
                        mov              rcx, qword ptr [rbp + 1672]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n461_unmark_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n448_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n448_deref_α:
                        mov              rdi, qword ptr [rbp + 1680]                    # d
                        mov              rsi, qword ptr [rbp + 1688]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n461_unmark_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n450_var_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n451_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # a
                        mov              rsi, qword ptr [rbp + 3288]                    # a
                        mov              rdx, qword ptr [rbp + 3296]                    # b
                        mov              rcx, qword ptr [rbp + 3304]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n452_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn669:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]                         # fn
                        lea              rsi, [rbp + 1728]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n461_unmark_α
                                                                                        jmp   n453_call_builtin_icon_α
n452_call_builtin_icon_β:
                                                                                        jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn671:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn671]                         # fn
                        lea              rsi, [rbp + 1600]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n461_unmark_α
                                                                                        jmp   n454_conjunction_α
n453_call_builtin_icon_β:
                                                                                        jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n454_conjunction_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n397_disjunction_as
n454_conjunction_β:
                                                                                        jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n456_var_α
n455_var_β:
                                                                                        jmp   n438_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n456_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n457_var_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n458_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n458_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # a
                        mov              rsi, qword ptr [rbp + 3288]                    # a
                        mov              rdx, qword ptr [rbp + 3296]                    # b
                        mov              rcx, qword ptr [rbp + 3304]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n459_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn681:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn681]                         # fn
                        lea              rsi, [rbp + 1984]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 104
                                                                                        je    n438_disjunction_af
                                                                                        jmp   n460_binop_test_α
n459_call_builtin_icon_β:
                                                                                        jmp   n438_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n460_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3360]                    # lhs
                        mov              rsi, qword ptr [rbp + 3368]                    # lhs
                        mov              rdx, qword ptr [rbp + 1968]                    # rhs
                        mov              rcx, qword ptr [rbp + 1976]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n438_disjunction_af
                        mov              rdi, qword ptr [rbp + 1968]                    # d
                        mov              rsi, qword ptr [rbp + 1976]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n461_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n461_unmark_α:
                        mov              rsp, qword ptr [rbp + 1488]
                                                                                        jmp   n394_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # distab
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n463_var_α
n462_var_ref_β:
                                                                                        jmp   n391_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n464_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n464_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx689_0]                # fname
                        mov              rsi, qword ptr [rbp + 1056]                    # obj
                        mov              rdx, qword ptr [rbp + 1064]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n391_disjunction_af
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n465_var_α
.Lx689_0:
                        .quad            .Lx689_0_s
.Lx689_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n465_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n466_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n467_binop_α
.Lx692_0:
                        .quad            .Lx692_0_s
.Lx692_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n467_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # a
                        mov              rsi, qword ptr [rbp + 3288]                    # a
                        mov              rdx, qword ptr [rbp + 1120]                    # b
                        mov              rcx, qword ptr [rbp + 1128]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n468_var_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n469_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n469_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx696_0]                # fname
                        mov              rsi, qword ptr [rbp + 1200]                    # obj
                        mov              rdx, qword ptr [rbp + 1208]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n391_disjunction_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n470_iterate_α
.Lx696_0:
                        .quad            .Lx696_0_s
.Lx696_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n470_iterate_α:
                        mov              qword ptr [rbp + 1168], 0
.Lx698_0:
                        mov              rdi, qword ptr [rbp + 1184]                    # obj
                        mov              rsi, qword ptr [rbp + 1192]                    # obj
                        mov              rdx, qword ptr [rbp + 1168]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              rax, 99
                                                                                        je    n391_disjunction_af
                                                                                        jmp   n471_assign_α
n470_iterate_β:
                        inc              qword ptr [rbp + 1168]
                                                                                        jmp   .Lx698_0
#-----------------------------------------------------------------------------------------------------------------------
n471_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n472_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n472_binop_α:
                        mov              rdi, qword ptr [rbp + 1088]                    # a
                        mov              rsi, qword ptr [rbp + 1096]                    # a
                        mov              rdx, qword ptr [rbp + 1136]                    # b
                        mov              rcx, qword ptr [rbp + 1144]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n473_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n473_subscript_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # base
                        mov              rsi, qword ptr [rbp + 1048]                    # base
                        mov              rdx, qword ptr [rbp + 1072]                    # idx
                        mov              rcx, qword ptr [rbp + 1080]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n474_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n474_deref_α:
                        mov              rdi, qword ptr [rbp + 1216]                    # d
                        mov              rsi, qword ptr [rbp + 1224]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n475_var_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n476_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n476_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx705_0]                # fname
                        mov              rsi, qword ptr [rbp + 1264]                    # obj
                        mov              rdx, qword ptr [rbp + 1272]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n477_var_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n478_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 1328], 2                      # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n479_binop_α
.Lx708_0:
                        .quad            .Lx708_0_s
.Lx708_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n479_binop_α:
                        mov              rdi, qword ptr [rbp + 3296]                    # a
                        mov              rsi, qword ptr [rbp + 3304]                    # a
                        mov              rdx, qword ptr [rbp + 1328]                    # b
                        mov              rcx, qword ptr [rbp + 1336]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n480_var_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n481_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n481_binop_α:
                        mov              rdi, qword ptr [rbp + 1296]                    # a
                        mov              rsi, qword ptr [rbp + 1304]                    # a
                        mov              rdx, qword ptr [rbp + 3344]                    # b
                        mov              rcx, qword ptr [rbp + 3352]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n482_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n482_subscript_α:
                        mov              rdi, qword ptr [rbp + 1248]                    # base
                        mov              rsi, qword ptr [rbp + 1256]                    # base
                        mov              rdx, qword ptr [rbp + 1280]                    # idx
                        mov              rcx, qword ptr [rbp + 1288]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n483_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n483_deref_α:
                        mov              rdi, qword ptr [rbp + 1360]                    # d
                        mov              rsi, qword ptr [rbp + 1368]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n484_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n484_binop_α:
                        mov              rdi, qword ptr [rbp + 1232]                    # a
                        mov              rsi, qword ptr [rbp + 1240]                    # a
                        mov              rdx, qword ptr [rbp + 1376]                    # b
                        mov              rcx, qword ptr [rbp + 1384]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n485_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn717:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn717]                         # fn
                        lea              rsi, [rbp + 992]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                                                                                        jmp   n486_subscript_α
n485_call_builtin_icon_β:
                                                                                        jmp   n470_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n486_subscript_α:
                        mov              rdi, qword ptr [rbp + 960]                     # base
                        mov              rsi, qword ptr [rbp + 968]                     # base
                        mov              rdx, qword ptr [rbp + 976]                     # idx
                        mov              rcx, qword ptr [rbp + 984]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n487_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n487_deref_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # d
                        mov              rsi, qword ptr [rbp + 1400]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n488_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n488_unop_test_α:
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 104
                                                                                        je    n470_iterate_β
                        cmp              eax, 0
                                                                                        je    n470_iterate_β
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n489_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # distab
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n490_var_α
#-----------------------------------------------------------------------------------------------------------------------
n490_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n491_var_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n492_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n492_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # a
                        mov              rsi, qword ptr [rbp + 3288]                    # a
                        mov              rdx, qword ptr [rbp + 3296]                    # b
                        mov              rcx, qword ptr [rbp + 3304]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n493_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn729:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn729]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n497_var_ref_α
                                                                                        jmp   n494_subscript_α
n493_call_builtin_icon_β:
                                                                                        jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n494_subscript_α:
                        mov              rdi, qword ptr [rbp + 784]                     # base
                        mov              rsi, qword ptr [rbp + 792]                     # base
                        mov              rdx, qword ptr [rbp + 800]                     # idx
                        mov              rcx, qword ptr [rbp + 808]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n497_var_ref_α
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n496_assign_var_α
.Lx731_0:
                        .quad            .Lx731_0_s
.Lx731_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n496_assign_var_α:
                        mov              rdi, qword ptr [rbp + 896]                     # var
                        mov              rsi, qword ptr [rbp + 904]                     # var
                        mov              rdx, qword ptr [rbp + 928]                     # val
                        mov              rcx, qword ptr [rbp + 936]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n497_var_ref_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n497_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # dlists
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n498_var_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n499_var_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n500_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n500_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]                    # a
                        mov              rsi, qword ptr [rbp + 3288]                    # a
                        mov              rdx, qword ptr [rbp + 3296]                    # b
                        mov              rcx, qword ptr [rbp + 3304]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n501_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn741:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn741]                         # fn
                        lea              rsi, [rbp + 672]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n506_unmark_α
                                                                                        jmp   n502_subscript_α
n501_call_builtin_icon_β:
                                                                                        jmp   n506_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n502_subscript_α:
                        mov              rdi, qword ptr [rbp + 640]                     # base
                        mov              rsi, qword ptr [rbp + 648]                     # base
                        mov              rdx, qword ptr [rbp + 656]                     # idx
                        mov              rcx, qword ptr [rbp + 664]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n506_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n503_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n503_deref_α:
                        mov              rdi, qword ptr [rbp + 752]                     # d
                        mov              rsi, qword ptr [rbp + 760]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n506_unmark_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n504_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_proc_staged_α:
                        lea              rsi, [rbp + 768]
                        call             proc_marklists_dcα
                                                                                        jmp   .Lx745_2
.Lx745_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n506_unmark_α
                                                                                        jmp   n505_conjunction_α
n504_call_proc_staged_β:
                                                                                        jmp   n506_unmark_α
.Lx745_0:
                        .quad            .Lx745_0_s
.Lx745_0_s:
                        .string          "marklists"
#-----------------------------------------------------------------------------------------------------------------------
n505_conjunction_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n391_disjunction_as
n505_conjunction_β:
                                                                                        jmp   n506_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n506_unmark_α:
                        mov              rsp, qword ptr [rbp + 496]
                                                                                        jmp   n385_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n507_var_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n508_iterate_α
n507_var_β:
                                                                                        jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n508_iterate_α:
                        mov              qword ptr [rbp + 464], 0
.Lx752_0:
                        mov              rdi, qword ptr [rbp + 480]                     # obj
                        mov              rsi, qword ptr [rbp + 488]                     # obj
                        mov              rdx, qword ptr [rbp + 464]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              rax, 99
                                                                                        je    n385_disjunction_af
                                                                                        jmp   n509_assign_α
n508_iterate_β:
                        inc              qword ptr [rbp + 464]
                                                                                        jmp   .Lx752_0
#-----------------------------------------------------------------------------------------------------------------------
n509_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n510_var_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n511_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n511_iterate_α:
                        mov              qword ptr [rbp + 416], 0
.Lx757_0:
                        mov              rdi, qword ptr [rbp + 432]                     # obj
                        mov              rsi, qword ptr [rbp + 440]                     # obj
                        mov              rdx, qword ptr [rbp + 416]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              rax, 99
                                                                                        je    n508_iterate_β
                                                                                        jmp   n512_assign_α
n511_iterate_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx757_0
#-----------------------------------------------------------------------------------------------------------------------
n512_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n513_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n513_conjunction_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n385_disjunction_as
n513_conjunction_β:
                                                                                        jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n515_iterate_α
n514_var_β:
                                                                                        jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n515_iterate_α:
                        mov              qword ptr [rbp + 336], 0
.Lx763_0:
                        mov              rdi, qword ptr [rbp + 352]                     # obj
                        mov              rsi, qword ptr [rbp + 360]                     # obj
                        mov              rdx, qword ptr [rbp + 336]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              rax, 99
                                                                                        je    n385_disjunction_af
                                                                                        jmp   n516_assign_α
n515_iterate_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx763_0
#-----------------------------------------------------------------------------------------------------------------------
n516_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n517_var_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n518_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n518_iterate_α:
                        mov              qword ptr [rbp + 272], 0
.Lx768_0:
                        mov              rdi, qword ptr [rbp + 288]                     # obj
                        mov              rsi, qword ptr [rbp + 296]                     # obj
                        mov              rdx, qword ptr [rbp + 272]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              rax, 99
                                                                                        je    n515_iterate_β
                                                                                        jmp   n519_assign_α
n518_iterate_β:
                        inc              qword ptr [rbp + 272]
                                                                                        jmp   .Lx768_0
#-----------------------------------------------------------------------------------------------------------------------
n519_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n520_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n520_conjunction_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n385_disjunction_as
n520_conjunction_β:
                                                                                        jmp   n385_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n522_var_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_α:
                        mov              rax, qword ptr [1879052288]                    # distab
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 112], rax                     # result
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n523_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n523_call_proc_staged_α:
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 112]
                        call             proc_makemdfa_dcα
                                                                                        jmp   .Lx775_2
.Lx775_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    proc_minimize_ω
                                                                                        jmp   n524_return_α
n523_call_proc_staged_β:
                                                                                        jmp   proc_minimize_ω
.Lx775_0:
                        .quad            .Lx775_0_s
.Lx775_0_s:
                        .string          "makemdfa"
#-----------------------------------------------------------------------------------------------------------------------
n524_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_minimize_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_β:
                                                                                        jmp   proc_minimize_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_dcα:
                        pop              r11
                        sub              rsp, 3440
                        mov              qword ptr [rsp + 3416], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3392], r11
                        lea              rax, [rip + .Lx777_2]
                        mov              qword ptr [rbp + 3400], rax
                        lea              rax, [rip + .Lx777_3]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 3280                                      # suffix_off
                        mov              edx, 3392                                      # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_minimize_α_body
.Lx777_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3424
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx777_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3424
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_marklists_α
proc_marklists_α:
proc_marklists_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n778_disjunction_α:
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                        mov              dword ptr [rbp + 368], 0
                                                                                        jmp   n796_var_α
n778_disjunction_as:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        jne   .Lx800_0
                                                                                        jmp   n779_var_α
.Lx800_0:
                                                                                        jmp   n779_var_α
n778_disjunction_β:
                        mov              eax, dword ptr [rbp + 368]
                                                                                        jmp   n779_var_α
n778_disjunction_af:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                                                                                        jmp   n779_var_α
#-----------------------------------------------------------------------------------------------------------------------
n779_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n780_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n780_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx804_0:
                        mov              rdi, qword ptr [rbp + 80]                      # obj
                        mov              rsi, qword ptr [rbp + 88]                      # obj
                        mov              rdx, qword ptr [rbp + 64]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx804_240
                        add              rsp, 384
                                                                                        jmp   n795_return_α
.Lx804_240:
                                                                                        jmp   n781_assign_α
n780_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx804_0
#-----------------------------------------------------------------------------------------------------------------------
n781_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n782_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n782_bound_α:
                        mov              qword ptr [rbp + 96], rsp
                                                                                        jmp   n783_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n783_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # distab
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n784_var_α
#-----------------------------------------------------------------------------------------------------------------------
n784_var_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n785_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n785_subscript_α:
                        mov              rdi, qword ptr [rbp + 272]                     # base
                        mov              rsi, qword ptr [rbp + 280]                     # base
                        mov              rdx, qword ptr [rbp + 288]                     # idx
                        mov              rcx, qword ptr [rbp + 296]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n788_var_ref_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n787_assign_var_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n787_assign_var_α:
                        mov              rdi, qword ptr [rbp + 304]                     # var
                        mov              rsi, qword ptr [rbp + 312]                     # var
                        mov              rdx, qword ptr [rbp + 336]                     # val
                        mov              rcx, qword ptr [rbp + 344]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n788_var_ref_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n788_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n788_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # dlists
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n789_var_α
#-----------------------------------------------------------------------------------------------------------------------
n789_var_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n790_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n790_subscript_α:
                        mov              rdi, qword ptr [rbp + 208]                     # base
                        mov              rsi, qword ptr [rbp + 216]                     # base
                        mov              rdx, qword ptr [rbp + 224]                     # idx
                        mov              rcx, qword ptr [rbp + 232]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n794_unmark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n791_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n791_deref_α:
                        mov              rdi, qword ptr [rbp + 240]                     # d
                        mov              rsi, qword ptr [rbp + 248]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n794_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n792_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n792_call_proc_staged_α:
                        lea              rsi, [rbp + 256]
                        call             proc_marklists_dcα
                                                                                        jmp   .Lx822_2
.Lx822_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n794_unmark_α
                                                                                        jmp   n793_conjunction_α
n792_call_proc_staged_β:
                                                                                        jmp   n794_unmark_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          "marklists"
#-----------------------------------------------------------------------------------------------------------------------
n793_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n794_unmark_α
n793_conjunction_β:
                                                                                        jmp   n794_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n794_unmark_α:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n780_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n795_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_marklists_γ
#-----------------------------------------------------------------------------------------------------------------------
n796_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n797_unop_test_α
n796_var_β:
                                                                                        jmp   n778_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n797_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 104
                                                                                        je    n778_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n778_disjunction_af
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                                                                                        jmp   n798_return_α
#-----------------------------------------------------------------------------------------------------------------------
n798_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_marklists_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_β:
                                                                                        jmp   proc_marklists_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_dcα:
                        pop              r11
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 448], r11
                        lea              rax, [rip + .Lx831_2]
                        mov              qword ptr [rbp + 456], rax
                        lea              rax, [rip + .Lx831_3]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 416                                       # suffix_off
                        mov              edx, 448                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_marklists_α_body
.Lx831_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -480
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx831_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -480
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_makemdfa_α
proc_makemdfa_α:
proc_makemdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n832_call_builtin_icon_α:
                        sub              rsp, 3040
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
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        .section         .rodata
.Lrkfn999:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn999]                         # fn
                        lea              rsi, [rbp + 3392]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 104
                                                                                        je    n834_lit_charset_α
                                                                                        jmp   n833_assign_α
n832_call_builtin_icon_β:
                                                                                        jmp   n834_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n834_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_charset_α:
                        mov              qword ptr [rbp + 3360], 2                      # result
                        mov              dword ptr [rbp + 3364], -1
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n835_assign_α
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n835_assign_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n837_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n837_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1005_0]               # fname
                        mov              rsi, qword ptr [rbp + 2320]                    # obj
                        mov              rdx, qword ptr [rbp + 2328]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1005_240
                        add              rsp, 3040
                                                                                        jmp   n888_make_list_α
.Lx1005_240:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n838_iterate_α
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n838_iterate_α:
                        mov              qword ptr [rbp + 2288], 0
.Lx1007_0:
                        mov              rdi, qword ptr [rbp + 2304]                    # obj
                        mov              rsi, qword ptr [rbp + 2312]                    # obj
                        mov              rdx, qword ptr [rbp + 2288]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx1007_240
                        add              rsp, 3040
                                                                                        jmp   n888_make_list_α
.Lx1007_240:
                                                                                        jmp   n839_assign_α
n838_iterate_β:
                        inc              qword ptr [rbp + 2288]
                                                                                        jmp   .Lx1007_0
#-----------------------------------------------------------------------------------------------------------------------
n839_assign_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                                                                                        jmp   n840_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n840_bound_α:
                        mov              qword ptr [rbp + 2336], rsp
                                                                                        jmp   n841_var_α
#-----------------------------------------------------------------------------------------------------------------------
n841_var_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n842_var_α
#-----------------------------------------------------------------------------------------------------------------------
n842_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n843_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n843_binop_α:
                        mov              rdi, qword ptr [rbp + 3328]
                        mov              rsi, qword ptr [rbp + 3336]
                        mov              rdx, qword ptr [rbp + 3344]
                        mov              rcx, qword ptr [rbp + 3352]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n845_disjunction_α
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n844_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n844_assign_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              rdx, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n845_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n845_disjunction_α:
                        mov              qword ptr [rbp + 3120], 0
                        mov              qword ptr [rbp + 3128], 0
                        mov              dword ptr [rbp + 3136], 0
                                                                                        jmp   n885_var_α
n845_disjunction_as:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 0
                                                                                        jne   .Lx1018_0
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n846_assign_α
.Lx1018_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1018_1
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n846_assign_α
.Lx1018_1:
                                                                                        jmp   n846_assign_α
n845_disjunction_β:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 0
                                                                                        je    n845_disjunction_af
                                                                                        jmp   n845_disjunction_af
n845_disjunction_af:
                        add              dword ptr [rbp + 3136], 1
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 1
                                                                                        je    n883_var_α
                                                                                        jmp   n847_var_α
#-----------------------------------------------------------------------------------------------------------------------
n846_assign_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   n847_var_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n848_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n848_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1022_0]               # fname
                        mov              rsi, qword ptr [rbp + 2656]                    # obj
                        mov              rdx, qword ptr [rbp + 2664]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1022_240
                        add              rsp, 3040
                                                                                        jmp   n876_var_ref_α
.Lx1022_240:
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n849_var_α
.Lx1022_0:
                        .quad            .Lx1022_0_s
.Lx1022_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n849_var_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n850_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n850_call_proc_staged_α:
                        lea              rsi, [rbp + 2640]
                        lea              rdx, [rbp + 2672]
                        call             proc_diff_dcα
                                                                                        jmp   .Lx1026_2
.Lx1026_2:
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1026_240
                        add              rsp, 3040
                                                                                        jmp   n876_var_ref_α
.Lx1026_240:
                                                                                        jmp   n851_iterate_α
n850_call_proc_staged_β:
                                                                                        jmp   n876_var_ref_α
.Lx1026_0:
                        .quad            .Lx1026_0_s
.Lx1026_0_s:
                        .string          "diff"
#-----------------------------------------------------------------------------------------------------------------------
n851_iterate_α:
                        mov              qword ptr [rbp + 2560], 0
.Lx1028_0:
                        mov              rdi, qword ptr [rbp + 2576]                    # obj
                        mov              rsi, qword ptr [rbp + 2584]                    # obj
                        mov              rdx, qword ptr [rbp + 2560]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx1028_240
                        add              rsp, 3040
                                                                                        jmp   n876_var_ref_α
.Lx1028_240:
                                                                                        jmp   n852_assign_α
n851_iterate_β:
                        inc              qword ptr [rbp + 2560]
                                                                                        jmp   .Lx1028_0
#-----------------------------------------------------------------------------------------------------------------------
n852_assign_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              rdx, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n853_var_α
#-----------------------------------------------------------------------------------------------------------------------
n853_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n854_var_α
#-----------------------------------------------------------------------------------------------------------------------
n854_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n855_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n855_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3536]                    # lhs
                        mov              rsi, qword ptr [rbp + 3544]                    # lhs
                        mov              rdx, qword ptr [rbp + 3456]                    # rhs
                        mov              rcx, qword ptr [rbp + 3464]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n851_iterate_β
                        mov              rdi, qword ptr [rbp + 3456]                    # d
                        mov              rsi, qword ptr [rbp + 3464]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n856_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n856_conjunction_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n857_bound_α
n856_conjunction_β:
                                                                                        jmp   n876_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n857_bound_α:
                        mov              qword ptr [rbp + 2688], rsp
                                                                                        jmp   n858_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n858_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n859_var_ref_α
n858_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx1039_0
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n875_unmark_α
.Lx1039_0:
                                                                                        jmp   n875_unmark_α
n858_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n868_disjunction_β
n858_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n875_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n859_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # distab
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n860_var_α
n859_var_ref_β:
                                                                                        jmp   n858_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n861_var_α
#-----------------------------------------------------------------------------------------------------------------------
n861_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n862_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n862_binop_α:
                        mov              rdi, qword ptr [rbp + 3536]                    # a
                        mov              rsi, qword ptr [rbp + 3544]                    # a
                        mov              rdx, qword ptr [rbp + 3456]                    # b
                        mov              rcx, qword ptr [rbp + 3464]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n863_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n863_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        .section         .rodata
.Lrkfn1048:             .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1048]                        # fn
                        lea              rsi, [rbp + 3008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 104
                                                                                        je    n858_disjunction_af
                                                                                        jmp   n864_subscript_α
n863_call_builtin_icon_β:
                                                                                        jmp   n858_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n864_subscript_α:
                        mov              rdi, qword ptr [rbp + 2976]                    # base
                        mov              rsi, qword ptr [rbp + 2984]                    # base
                        mov              rdx, qword ptr [rbp + 2992]                    # idx
                        mov              rcx, qword ptr [rbp + 3000]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n858_disjunction_af
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n865_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n865_deref_α:
                        mov              rdi, qword ptr [rbp + 3088]                    # d
                        mov              rsi, qword ptr [rbp + 3096]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n858_disjunction_af
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n866_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n866_unop_test_α:
                        mov              eax, dword ptr [rbp + 3104]
                        cmp              eax, 104
                                                                                        je    n858_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n858_disjunction_af
                        mov              qword ptr [rbp + 2960], 0
                        mov              qword ptr [rbp + 2968], 0
                                                                                        jmp   n867_var_α
#-----------------------------------------------------------------------------------------------------------------------
n867_var_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n868_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n868_disjunction_α:
                        mov              qword ptr [rbp + 2816], 0
                        mov              qword ptr [rbp + 2824], 0
                        mov              dword ptr [rbp + 2832], 0
                                                                                        jmp   n872_var_α
n868_disjunction_as:
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 0
                                                                                        jne   .Lx1055_0
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n869_binop_α
.Lx1055_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1055_1
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n869_binop_α
.Lx1055_1:
                                                                                        jmp   n869_binop_α
n868_disjunction_β:
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 0
                                                                                        je    n868_disjunction_af
                                                                                        jmp   n868_disjunction_af
n868_disjunction_af:
                        add              dword ptr [rbp + 2832], 1
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 1
                                                                                        je    n871_var_α
                                                                                        jmp   n875_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n869_binop_α:
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              rsi, qword ptr [rbp + 2808]
                        mov              rdx, qword ptr [rbp + 2816]
                        mov              rcx, qword ptr [rbp + 2824]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n875_unmark_α
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n870_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n870_assign_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n858_disjunction_as
n870_assign_β:
                                                                                        jmp   n875_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n871_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n868_disjunction_as
n871_var_β:
                                                                                        jmp   n868_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n872_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n873_var_α
n872_var_β:
                                                                                        jmp   n868_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n873_var_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n874_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n874_call_proc_staged_α:
                        lea              rsi, [rbp + 2912]
                        lea              rdx, [rbp + 2928]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1065_2
.Lx1065_2:
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 104
                                                                                        je    n868_disjunction_af
                                                                                        jmp   n868_disjunction_as
n874_call_proc_staged_β:
                                                                                        jmp   n868_disjunction_af
.Lx1065_0:
                        .quad            .Lx1065_0_s
.Lx1065_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n875_unmark_α:
                        mov              rsp, qword ptr [rbp + 2688]
                                                                                        jmp   n851_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n876_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n877_var_α
#-----------------------------------------------------------------------------------------------------------------------
n877_var_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n878_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n878_subscript_α:
                        mov              rdi, qword ptr [rbp + 2400]                    # base
                        mov              rsi, qword ptr [rbp + 2408]                    # base
                        mov              rdx, qword ptr [rbp + 2416]                    # idx
                        mov              rcx, qword ptr [rbp + 2424]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n882_unmark_α
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n879_var_α
#-----------------------------------------------------------------------------------------------------------------------
n879_var_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n880_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n880_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # var
                        mov              rsi, qword ptr [rbp + 2440]                    # var
                        mov              rdx, qword ptr [rbp + 2464]                    # val
                        mov              rcx, qword ptr [rbp + 2472]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n882_unmark_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n881_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n881_conjunction_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n882_unmark_α
n881_conjunction_β:
                                                                                        jmp   n882_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n882_unmark_α:
                        mov              rsp, qword ptr [rbp + 2336]
                                                                                        jmp   n838_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n883_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n884_call_builtin_icon_α
n883_var_β:
                                                                                        jmp   n845_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n884_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn1082:             .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1082]                        # fn
                        lea              rsi, [rbp + 3264]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 104
                                                                                        je    n845_disjunction_af
                                                                                        jmp   n845_disjunction_as
n884_call_builtin_icon_β:
                                                                                        jmp   n845_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n885_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n886_var_α
n885_var_β:
                                                                                        jmp   n845_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n886_var_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n887_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n887_call_proc_staged_α:
                        lea              rsi, [rbp + 3216]
                        lea              rdx, [rbp + 3232]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1088_2
.Lx1088_2:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 104
                                                                                        je    n845_disjunction_af
                                                                                        jmp   n845_disjunction_as
n887_call_proc_staged_β:
                                                                                        jmp   n845_disjunction_af
.Lx1088_0:
                        .quad            .Lx1088_0_s
.Lx1088_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n888_make_list_α:
                        lea              rdi, [rbp + 2272]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n889_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n889_assign_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n890_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n890_make_list_α:
                        lea              rdi, [rbp + 2256]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n891_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n891_assign_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n892_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n892_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1096:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1096]                        # fn
                        lea              rsi, [rbp + 2224]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 104
                                                                                        je    n894_var_α
                                                                                        jmp   n893_assign_α
n892_call_builtin_icon_β:
                                                                                        jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n894_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n895_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n895_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1100_0]               # fname
                        mov              rsi, qword ptr [rbp + 2176]                    # obj
                        mov              rdx, qword ptr [rbp + 2184]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n899_var_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n896_var_α
.Lx1100_0:
                        .quad            .Lx1100_0_s
.Lx1100_0_s:
                        .string          "q0"
#-----------------------------------------------------------------------------------------------------------------------
n896_var_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n897_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n897_call_proc_staged_α:
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2192]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1104_2
.Lx1104_2:
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 104
                                                                                        je    n899_var_α
                                                                                        jmp   n898_assign_α
n897_call_proc_staged_β:
                                                                                        jmp   n899_var_α
.Lx1104_0:
                        .quad            .Lx1104_0_s
.Lx1104_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n898_assign_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n899_var_α
#-----------------------------------------------------------------------------------------------------------------------
n899_var_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n900_var_α
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n901_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n901_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn1111:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1111]                        # fn
                        lea              rsi, [rbp + 2016]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 104
                                                                                        je    n902_var_α
                                                                                        jmp   n902_var_α
n901_call_builtin_icon_β:
                                                                                        jmp   n902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n902_var_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n904_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n904_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lrkfn1117:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1117]                        # fn
                        lea              rsi, [rbp + 1920]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    n905_call_builtin_icon_α
                                                                                        jmp   n905_call_builtin_icon_α
n904_call_builtin_icon_β:
                                                                                        jmp   n905_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n905_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1119:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1119]                        # fn
                        lea              rsi, [rbp + 1888]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 104
                                                                                        je    n907_var_ref_α
                                                                                        jmp   n906_assign_α
n905_call_builtin_icon_β:
                                                                                        jmp   n907_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n906_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n907_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n907_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n908_var_α
#-----------------------------------------------------------------------------------------------------------------------
n908_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n909_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n909_subscript_α:
                        mov              rdi, qword ptr [rbp + 1792]                    # base
                        mov              rsi, qword ptr [rbp + 1800]                    # base
                        mov              rdx, qword ptr [rbp + 1808]                    # idx
                        mov              rcx, qword ptr [rbp + 1816]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n912_var_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n910_var_α
#-----------------------------------------------------------------------------------------------------------------------
n910_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n911_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n911_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1824]                    # var
                        mov              rsi, qword ptr [rbp + 1832]                    # var
                        mov              rdx, qword ptr [rbp + 1856]                    # val
                        mov              rcx, qword ptr [rbp + 1864]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n912_var_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n912_var_α
#-----------------------------------------------------------------------------------------------------------------------
n912_var_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n913_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n913_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn1132:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1132]                        # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n988_var_α
                                                                                        jmp   n914_assign_α
n913_call_builtin_icon_β:
                                                                                        jmp   n988_var_α
#-----------------------------------------------------------------------------------------------------------------------
n914_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n915_var_α
#-----------------------------------------------------------------------------------------------------------------------
n915_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n916_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n916_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1136_0]               # fname
                        mov              rsi, qword ptr [rbp + 464]                     # obj
                        mov              rdx, qword ptr [rbp + 472]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n912_var_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n917_iterate_α
.Lx1136_0:
                        .quad            .Lx1136_0_s
.Lx1136_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n917_iterate_α:
                        mov              qword ptr [rbp + 432], 0
.Lx1138_0:
                        mov              rdi, qword ptr [rbp + 448]                     # obj
                        mov              rsi, qword ptr [rbp + 456]                     # obj
                        mov              rdx, qword ptr [rbp + 432]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              rax, 99
                                                                                        je    n912_var_α
                                                                                        jmp   n918_assign_α
n917_iterate_β:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx1138_0
#-----------------------------------------------------------------------------------------------------------------------
n918_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n919_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n919_bound_α:
                        mov              qword ptr [rbp + 480], rsp
                                                                                        jmp   n920_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n920_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n921_var_α
#-----------------------------------------------------------------------------------------------------------------------
n921_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n922_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:
                        mov              qword ptr [rbp + 1568], 2                      # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n923_binop_α
.Lx1146_0:
                        .quad            .Lx1146_0_s
.Lx1146_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n923_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]                    # a
                        mov              rsi, qword ptr [rbp + 3464]                    # a
                        mov              rdx, qword ptr [rbp + 1568]                    # b
                        mov              rcx, qword ptr [rbp + 1576]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n924_var_α
#-----------------------------------------------------------------------------------------------------------------------
n924_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n925_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n925_binop_α:
                        mov              rdi, qword ptr [rbp + 1536]                    # a
                        mov              rsi, qword ptr [rbp + 1544]                    # a
                        mov              rdx, qword ptr [rbp + 3488]                    # b
                        mov              rcx, qword ptr [rbp + 3496]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n926_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n926_subscript_α:
                        mov              rdi, qword ptr [rbp + 1504]                    # base
                        mov              rsi, qword ptr [rbp + 1512]                    # base
                        mov              rdx, qword ptr [rbp + 1520]                    # idx
                        mov              rcx, qword ptr [rbp + 1528]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n933_disjunction_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n927_var_α
#-----------------------------------------------------------------------------------------------------------------------
n927_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n928_var_α
#-----------------------------------------------------------------------------------------------------------------------
n928_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n929_var_α
#-----------------------------------------------------------------------------------------------------------------------
n929_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n930_var_α
#-----------------------------------------------------------------------------------------------------------------------
n930_var_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n931_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n931_call_proc_staged_α:
                        lea              rsi, [rbp + 1728]
                        lea              rdx, [rbp + 1744]
                        lea              rcx, [rbp + 1760]
                        lea              r8, [rbp + 1776]
                        call             proc_equivdelta_dcα
                                                                                        jmp   .Lx1161_2
.Lx1161_2:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 104
                                                                                        je    n933_disjunction_α
                                                                                        jmp   n932_assign_var_α
n931_call_proc_staged_β:
                                                                                        jmp   n933_disjunction_α
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "equivdelta"
#-----------------------------------------------------------------------------------------------------------------------
n932_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1600]                    # var
                        mov              rsi, qword ptr [rbp + 1608]                    # var
                        mov              rdx, qword ptr [rbp + 1632]                    # val
                        mov              rcx, qword ptr [rbp + 1640]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n933_disjunction_α
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n933_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n933_disjunction_α:
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0
                                                                                        jmp   n935_var_ref_α
n933_disjunction_as:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        jne   .Lx1164_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n934_conjunction_α
.Lx1164_0:
                                                                                        jmp   n934_conjunction_α
n933_disjunction_β:
                        mov              eax, dword ptr [rbp + 560]
                                                                                        jmp   n987_unmark_α
n933_disjunction_af:
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                                                                                        jmp   n987_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n934_conjunction_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n987_unmark_α
n934_conjunction_β:
                                                                                        jmp   n987_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n935_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n936_var_ref_α
n935_var_ref_β:
                                                                                        jmp   n933_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n936_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n937_var_α
#-----------------------------------------------------------------------------------------------------------------------
n937_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n938_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n938_lit_string_α:
                        mov              qword ptr [rbp + 1408], 2                      # result
                        mov              dword ptr [rbp + 1412], 1
                        mov              rax, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n939_binop_α
.Lx1172_0:
                        .quad            .Lx1172_0_s
.Lx1172_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n939_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]                    # a
                        mov              rsi, qword ptr [rbp + 3464]                    # a
                        mov              rdx, qword ptr [rbp + 1408]                    # b
                        mov              rcx, qword ptr [rbp + 1416]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n940_var_α
#-----------------------------------------------------------------------------------------------------------------------
n940_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n941_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n941_binop_α:
                        mov              rdi, qword ptr [rbp + 1376]                    # a
                        mov              rsi, qword ptr [rbp + 1384]                    # a
                        mov              rdx, qword ptr [rbp + 3488]                    # b
                        mov              rcx, qword ptr [rbp + 3496]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n942_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n942_subscript_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # base
                        mov              rsi, qword ptr [rbp + 1352]                    # base
                        mov              rdx, qword ptr [rbp + 1360]                    # idx
                        mov              rcx, qword ptr [rbp + 1368]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n933_disjunction_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n943_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n943_deref_α:
                        mov              rdi, qword ptr [rbp + 1440]                    # d
                        mov              rsi, qword ptr [rbp + 1448]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n933_disjunction_af
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n944_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n944_subscript_α:
                        mov              rdi, qword ptr [rbp + 1328]                    # base
                        mov              rsi, qword ptr [rbp + 1336]                    # base
                        mov              rdx, qword ptr [rbp + 1456]                    # idx
                        mov              rcx, qword ptr [rbp + 1464]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n933_disjunction_af
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n945_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n945_deref_α:
                        mov              rdi, qword ptr [rbp + 1472]                    # d
                        mov              rsi, qword ptr [rbp + 1480]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n933_disjunction_af
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n946_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n946_unop_test_α:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 104
                                                                                        je    n933_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n933_disjunction_af
                        mov              qword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1320], 0
                                                                                        jmp   n947_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n947_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n948_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n948_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n949_var_α
#-----------------------------------------------------------------------------------------------------------------------
n949_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n950_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n950_lit_string_α:
                        mov              qword ptr [rbp + 1088], 2                      # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx1188_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n951_binop_α
.Lx1188_0:
                        .quad            .Lx1188_0_s
.Lx1188_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n951_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]                    # a
                        mov              rsi, qword ptr [rbp + 3464]                    # a
                        mov              rdx, qword ptr [rbp + 1088]                    # b
                        mov              rcx, qword ptr [rbp + 1096]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n952_var_α
#-----------------------------------------------------------------------------------------------------------------------
n952_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n953_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n953_binop_α:
                        mov              rdi, qword ptr [rbp + 1056]                    # a
                        mov              rsi, qword ptr [rbp + 1064]                    # a
                        mov              rdx, qword ptr [rbp + 3488]                    # b
                        mov              rcx, qword ptr [rbp + 3496]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n954_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n954_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]                    # base
                        mov              rsi, qword ptr [rbp + 1032]                    # base
                        mov              rdx, qword ptr [rbp + 1040]                    # idx
                        mov              rcx, qword ptr [rbp + 1048]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n966_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n955_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n955_deref_α:
                        mov              rdi, qword ptr [rbp + 1120]                    # d
                        mov              rsi, qword ptr [rbp + 1128]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n966_var_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n956_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n956_subscript_α:
                        mov              rdi, qword ptr [rbp + 1008]                    # base
                        mov              rsi, qword ptr [rbp + 1016]                    # base
                        mov              rdx, qword ptr [rbp + 1136]                    # idx
                        mov              rcx, qword ptr [rbp + 1144]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n966_var_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n957_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n957_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n958_var_α
#-----------------------------------------------------------------------------------------------------------------------
n958_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n959_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n959_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx1200_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n960_binop_α
.Lx1200_0:
                        .quad            .Lx1200_0_s
.Lx1200_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n960_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]                    # a
                        mov              rsi, qword ptr [rbp + 3464]                    # a
                        mov              rdx, qword ptr [rbp + 1248]                    # b
                        mov              rcx, qword ptr [rbp + 1256]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n961_var_α
#-----------------------------------------------------------------------------------------------------------------------
n961_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n962_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n962_binop_α:
                        mov              rdi, qword ptr [rbp + 1216]                    # a
                        mov              rsi, qword ptr [rbp + 1224]                    # a
                        mov              rdx, qword ptr [rbp + 3488]                    # b
                        mov              rcx, qword ptr [rbp + 3496]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n963_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n963_subscript_α:
                        mov              rdi, qword ptr [rbp + 1184]                    # base
                        mov              rsi, qword ptr [rbp + 1192]                    # base
                        mov              rdx, qword ptr [rbp + 1200]                    # idx
                        mov              rcx, qword ptr [rbp + 1208]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n966_var_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n964_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n964_deref_α:
                        mov              rdi, qword ptr [rbp + 1280]                    # d
                        mov              rsi, qword ptr [rbp + 1288]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n966_var_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n965_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n965_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1152]                    # var
                        mov              rsi, qword ptr [rbp + 1160]                    # var
                        mov              rdx, qword ptr [rbp + 1296]                    # val
                        mov              rcx, qword ptr [rbp + 1304]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n966_var_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n966_var_α
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n967_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n967_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n968_var_α
#-----------------------------------------------------------------------------------------------------------------------
n968_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n969_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n969_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx1214_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n970_binop_α
.Lx1214_0:
                        .quad            .Lx1214_0_s
.Lx1214_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n970_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]                    # a
                        mov              rsi, qword ptr [rbp + 3464]                    # a
                        mov              rdx, qword ptr [rbp + 944]                     # b
                        mov              rcx, qword ptr [rbp + 952]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n971_var_α
#-----------------------------------------------------------------------------------------------------------------------
n971_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n972_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n972_binop_α:
                        mov              rdi, qword ptr [rbp + 912]                     # a
                        mov              rsi, qword ptr [rbp + 920]                     # a
                        mov              rdx, qword ptr [rbp + 3488]                    # b
                        mov              rcx, qword ptr [rbp + 3496]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n973_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n973_subscript_α:
                        mov              rdi, qword ptr [rbp + 880]                     # base
                        mov              rsi, qword ptr [rbp + 888]                     # base
                        mov              rdx, qword ptr [rbp + 896]                     # idx
                        mov              rcx, qword ptr [rbp + 904]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n976_var_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n974_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n974_deref_α:
                        mov              rdi, qword ptr [rbp + 976]                     # d
                        mov              rsi, qword ptr [rbp + 984]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n976_var_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n975_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n975_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn1222:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1222]                        # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n976_var_α
                                                                                        jmp   n976_var_α
n975_call_builtin_icon_β:
                                                                                        jmp   n976_var_α
#-----------------------------------------------------------------------------------------------------------------------
n976_var_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n977_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n977_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n978_var_α
#-----------------------------------------------------------------------------------------------------------------------
n978_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n979_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n979_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n980_binop_α
.Lx1229_0:
                        .quad            .Lx1229_0_s
.Lx1229_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n980_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]                    # a
                        mov              rsi, qword ptr [rbp + 3464]                    # a
                        mov              rdx, qword ptr [rbp + 736]                     # b
                        mov              rcx, qword ptr [rbp + 744]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n981_var_α
#-----------------------------------------------------------------------------------------------------------------------
n981_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n982_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n982_binop_α:
                        mov              rdi, qword ptr [rbp + 704]                     # a
                        mov              rsi, qword ptr [rbp + 712]                     # a
                        mov              rdx, qword ptr [rbp + 3488]                    # b
                        mov              rcx, qword ptr [rbp + 3496]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n983_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n983_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]                     # base
                        mov              rsi, qword ptr [rbp + 680]                     # base
                        mov              rdx, qword ptr [rbp + 688]                     # idx
                        mov              rcx, qword ptr [rbp + 696]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n987_unmark_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n984_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n984_deref_α:
                        mov              rdi, qword ptr [rbp + 768]                     # d
                        mov              rsi, qword ptr [rbp + 776]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n987_unmark_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n985_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n985_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn1237:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1237]                        # fn
                        lea              rsi, [rbp + 608]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n987_unmark_α
                                                                                        jmp   n986_conjunction_α
n985_call_builtin_icon_β:
                                                                                        jmp   n987_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n986_conjunction_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n933_disjunction_as
n986_conjunction_β:
                                                                                        jmp   n987_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n987_unmark_α:
                        mov              rsp, qword ptr [rbp + 480]
                                                                                        jmp   n917_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n988_var_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n989_var_α
#-----------------------------------------------------------------------------------------------------------------------
n989_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n990_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n990_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1245_0]               # fname
                        mov              rsi, qword ptr [rbp + 192]                     # obj
                        mov              rdx, qword ptr [rbp + 200]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    proc_makemdfa_ω
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n991_var_α
.Lx1245_0:
                        .quad            .Lx1245_0_s
.Lx1245_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n991_var_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n992_var_α
#-----------------------------------------------------------------------------------------------------------------------
n992_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n993_var_α
#-----------------------------------------------------------------------------------------------------------------------
n993_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n994_var_α
#-----------------------------------------------------------------------------------------------------------------------
n994_var_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n995_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n995_call_proc_staged_α:
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 320]
                        call             proc_finalstates_dcα
                                                                                        jmp   .Lx1255_2
.Lx1255_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    proc_makemdfa_ω
                                                                                        jmp   n996_call_α
n995_call_proc_staged_β:
                                                                                        jmp   proc_makemdfa_ω
.Lx1255_0:
                        .quad            .Lx1255_0_s
.Lx1255_0_s:
                        .string          "finalstates"
#-----------------------------------------------------------------------------------------------------------------------
n996_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1257:             .string          "dfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1257]                        # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_makemdfa_ω
                                                                                        jmp   n997_return_α
n996_call_β:
                                                                                        jmp   proc_makemdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
n997_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_makemdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_β:
                                                                                        jmp   proc_makemdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_dcα:
                        pop              r11
                        sub              rsp, 3648
                        mov              qword ptr [rsp + 3624], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3600], r11
                        lea              rax, [rip + .Lx1259_2]
                        mov              qword ptr [rbp + 3608], rax
                        lea              rax, [rip + .Lx1259_3]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 3408                                      # suffix_off
                        mov              edx, 3600                                      # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_makemdfa_α_body
.Lx1259_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3632
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1259_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3632
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_equiv_α
proc_equiv_α:
proc_equiv_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1260_var_α:
                        sub              rsp, 208
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
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1261_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1261_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx1276_0:
                        mov              rdi, qword ptr [rbp + 96]                      # obj
                        mov              rsi, qword ptr [rbp + 104]                     # obj
                        mov              rdx, qword ptr [rbp + 80]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx1276_240
                        add              rsp, 208
                                                                                        jmp   proc_equiv_ω
.Lx1276_240:
                                                                                        jmp   n1262_assign_α
n1261_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx1276_0
#-----------------------------------------------------------------------------------------------------------------------
n1262_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n1263_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1263_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n1264_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1264_disjunction_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              qword ptr [rbp + 168], 0
                        mov              dword ptr [rbp + 176], 0
                                                                                        jmp   n1266_var_α
n1264_disjunction_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        jne   .Lx1281_0
                                                                                        jmp   n1265_unmark_α
.Lx1281_0:
                                                                                        jmp   n1265_unmark_α
n1264_disjunction_β:
                        mov              eax, dword ptr [rbp + 176]
                                                                                        jmp   n1265_unmark_α
n1264_disjunction_af:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                                                                                        jmp   n1265_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1265_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n1261_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1266_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1267_var_α
n1266_var_β:
                                                                                        jmp   n1264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1267_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1268_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1268_binop_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n1264_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n1269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1269_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1270_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1270_binop_test_α:
                        mov              rdi, qword ptr [rbp + 224]                     # lhs
                        mov              rsi, qword ptr [rbp + 232]                     # lhs
                        mov              rdx, qword ptr [rbp + 288]                     # rhs
                        mov              rcx, qword ptr [rbp + 296]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1264_disjunction_af
                        mov              rdi, qword ptr [rbp + 288]                     # d
                        mov              rsi, qword ptr [rbp + 296]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n1271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1271_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1272_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1272_return_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_equiv_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_β:
                                                                                        jmp   proc_equiv_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 320], r11
                        lea              rax, [rip + .Lx1295_2]
                        mov              qword ptr [rbp + 328], rax
                        lea              rax, [rip + .Lx1295_3]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 288                                       # suffix_off
                        mov              edx, 320                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_equiv_α_body
.Lx1295_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1295_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_equivdelta_α
proc_equivdelta_α:
proc_equivdelta_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1296_var_α:
                        sub              rsp, 240
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1297_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1297_iterate_α:
                        mov              qword ptr [rbp + 352], 0
.Lx1316_0:
                        mov              rdi, qword ptr [rbp + 368]                     # obj
                        mov              rsi, qword ptr [rbp + 376]                     # obj
                        mov              rdx, qword ptr [rbp + 352]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              rax, 99
                                                                                        je    n1299_var_α
                                                                                        jmp   n1298_assign_α
n1297_iterate_β:
                        inc              qword ptr [rbp + 352]
                                                                                        jmp   .Lx1316_0
#-----------------------------------------------------------------------------------------------------------------------
n1298_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n1299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1299_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1300_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1300_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1320_0]               # fname
                        mov              rsi, qword ptr [rbp + 208]                     # obj
                        mov              rdx, qword ptr [rbp + 216]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n1309_var_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n1301_var_α
.Lx1320_0:
                        .quad            .Lx1320_0_s
.Lx1320_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n1301_var_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1302_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1302_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Lx1323_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1303_binop_α
.Lx1323_0:
                        .quad            .Lx1323_0_s
.Lx1323_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1303_binop_α:
                        mov              rdi, qword ptr [rbp + 400]                     # a
                        mov              rsi, qword ptr [rbp + 408]                     # a
                        mov              rdx, qword ptr [rbp + 272]                     # b
                        mov              rcx, qword ptr [rbp + 280]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n1304_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1304_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1305_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1305_binop_α:
                        mov              rdi, qword ptr [rbp + 240]                     # a
                        mov              rsi, qword ptr [rbp + 248]                     # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n1306_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1306_subscript_α:
                        mov              rdi, qword ptr [rbp + 192]                     # base
                        mov              rsi, qword ptr [rbp + 200]                     # base
                        mov              rdx, qword ptr [rbp + 224]                     # idx
                        mov              rcx, qword ptr [rbp + 232]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n1309_var_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n1307_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1307_deref_α:
                        mov              rdi, qword ptr [rbp + 304]                     # d
                        mov              rsi, qword ptr [rbp + 312]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n1309_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n1308_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1308_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n1309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1309_var_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1310_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1310_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1311_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1311_call_proc_staged_α:
                        lea              rsi, [rbp + 144]
                        lea              rdx, [rbp + 160]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1336_2
.Lx1336_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1336_240
                        add              rsp, 240
                                                                                        jmp   proc_equivdelta_ω
.Lx1336_240:
                                                                                        jmp   n1312_return_α
n1311_call_proc_staged_β:
                                                                                        jmp   proc_equivdelta_ω
.Lx1336_0:
                        .quad            .Lx1336_0_s
.Lx1336_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n1312_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 240
                                                                                        jmp   proc_equivdelta_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_β:
                                                                                        jmp   proc_equivdelta_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx1338_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx1338_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp                                       # fb
                        mov              esi, 384                                       # suffix_off
                        mov              edx, 432                                       # region_bytes
                        mov              ecx, 4                                         # np
                        mov              r8d, 4                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_equivdelta_α_body
.Lx1338_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1338_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_finalstates_α
proc_finalstates_α:
proc_finalstates_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1339_call_builtin_icon_α:
                        sub              rsp, 320
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
                        .section         .rodata
.Lrkfn1368:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1368]                        # fn
                        lea              rsi, [rbp + 624]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n1341_var_α
                                                                                        jmp   n1340_assign_α
n1339_call_builtin_icon_β:
                                                                                        jmp   n1341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1340_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n1341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1341_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1342_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1342_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1372_0]               # fname
                        mov              rsi, qword ptr [rbp + 368]                     # obj
                        mov              rdx, qword ptr [rbp + 376]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1372_240
                        add              rsp, 320
                                                                                        jmp   n1355_make_list_α
.Lx1372_240:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n1343_iterate_α
.Lx1372_0:
                        .quad            .Lx1372_0_s
.Lx1372_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n1343_iterate_α:
                        mov              qword ptr [rbp + 336], 0
.Lx1374_0:
                        mov              rdi, qword ptr [rbp + 352]                     # obj
                        mov              rsi, qword ptr [rbp + 360]                     # obj
                        mov              rdx, qword ptr [rbp + 336]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx1374_240
                        add              rsp, 320
                                                                                        jmp   n1355_make_list_α
.Lx1374_240:
                                                                                        jmp   n1344_assign_α
n1343_iterate_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx1374_0
#-----------------------------------------------------------------------------------------------------------------------
n1344_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n1345_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1345_bound_α:
                        mov              qword ptr [rbp + 384], rsp
                                                                                        jmp   n1346_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n1347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1347_var_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1348_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1348_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1349_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1349_call_proc_staged_α:
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 544]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1385_2
.Lx1385_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n1354_unmark_α
                                                                                        jmp   n1350_assign_α
n1349_call_proc_staged_β:
                                                                                        jmp   n1354_unmark_α
.Lx1385_0:
                        .quad            .Lx1385_0_s
.Lx1385_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n1350_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n1351_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1351_subscript_α:
                        mov              rdi, qword ptr [rbp + 432]                     # base
                        mov              rsi, qword ptr [rbp + 440]                     # base
                        mov              rdx, qword ptr [rbp + 448]                     # idx
                        mov              rcx, qword ptr [rbp + 456]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n1354_unmark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n1352_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1352_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1353_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1353_assign_var_α:
                        mov              rdi, qword ptr [rbp + 560]                     # var
                        mov              rsi, qword ptr [rbp + 568]                     # var
                        mov              rdx, qword ptr [rbp + 592]                     # val
                        mov              rcx, qword ptr [rbp + 600]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n1354_unmark_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n1354_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1354_unmark_α:
                        mov              rsp, qword ptr [rbp + 384]
                                                                                        jmp   n1343_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1355_make_list_α:
                        lea              rdi, [rbp + 320]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n1356_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1356_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n1357_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1357_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1358_var_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1359_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1359_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1401:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1401]                        # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n1365_var_α
                                                                                        jmp   n1360_iterate_α
n1359_call_builtin_icon_β:
                                                                                        jmp   n1365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1360_iterate_α:
                        mov              qword ptr [rbp + 160], 0
.Lx1403_0:
                        mov              rdi, qword ptr [rbp + 176]                     # obj
                        mov              rsi, qword ptr [rbp + 184]                     # obj
                        mov              rdx, qword ptr [rbp + 160]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              rax, 99
                                                                                        je    n1365_var_α
                                                                                        jmp   n1361_lit_integer_α
n1360_iterate_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx1403_0
#-----------------------------------------------------------------------------------------------------------------------
n1361_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1404_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1362_subscript_α
.Lx1404_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1362_subscript_α:
                        mov              rdi, qword ptr [rbp + 144]                     # base
                        mov              rsi, qword ptr [rbp + 152]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n1360_iterate_β
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n1363_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1363_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n1360_iterate_β
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1364_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1364_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn1408:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1408]                        # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n1360_iterate_β
                                                                                        jmp   n1360_iterate_β
n1364_call_builtin_icon_β:
                                                                                        jmp   n1360_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1365_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1366_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1366_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_finalstates_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_β:
                                                                                        jmp   proc_finalstates_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_dcα:
                        pop              r11
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 720], r11
                        lea              rax, [rip + .Lx1412_2]
                        mov              qword ptr [rbp + 728], rax
                        lea              rax, [rip + .Lx1412_3]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 640                                       # suffix_off
                        mov              edx, 720                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_finalstates_α_body
.Lx1412_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -752
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1412_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -752
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_diff_α
proc_diff_α:
proc_diff_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1413_lit_charset_α:
                        sub              rsp, 224
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
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], -1
                        mov              rax, qword ptr [rip + .Lx1442_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1414_assign_α
.Lx1442_0:
                        .quad            .Lx1442_0_s
.Lx1442_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1414_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n1415_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1415_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1416_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1417_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1417_iterate_α:
                        mov              qword ptr [rbp + 496], 0
.Lx1449_0:
                        mov              rdi, qword ptr [rbp + 512]                     # obj
                        mov              rsi, qword ptr [rbp + 520]                     # obj
                        mov              rdx, qword ptr [rbp + 496]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx1449_240
                        add              rsp, 224
                                                                                        jmp   n1420_lit_charset_α
.Lx1449_240:
                                                                                        jmp   n1418_binop_α
n1417_iterate_β:
                        inc              qword ptr [rbp + 496]
                                                                                        jmp   .Lx1449_0
#-----------------------------------------------------------------------------------------------------------------------
n1418_binop_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx1450_240
                        add              rsp, 224
                                                                                        jmp   n1420_lit_charset_α
.Lx1450_240:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n1419_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1419_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n1417_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1420_lit_charset_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], -1
                        mov              rax, qword ptr [rip + .Lx1452_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n1421_assign_α
.Lx1452_0:
                        .quad            .Lx1452_0_s
.Lx1452_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1421_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n1422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1422_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1423_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1424_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1424_iterate_α:
                        mov              qword ptr [rbp + 400], 0
.Lx1459_0:
                        mov              rdi, qword ptr [rbp + 416]                     # obj
                        mov              rsi, qword ptr [rbp + 424]                     # obj
                        mov              rdx, qword ptr [rbp + 400]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              rax, 99
                                                                                        je    n1427_make_list_α
                                                                                        jmp   n1425_binop_α
n1424_iterate_β:
                        inc              qword ptr [rbp + 400]
                                                                                        jmp   .Lx1459_0
#-----------------------------------------------------------------------------------------------------------------------
n1425_binop_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n1427_make_list_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n1426_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1426_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n1424_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1427_make_list_α:
                        lea              rdi, [rbp + 352]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n1428_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1428_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n1429_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1429_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1430_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1431_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1431_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1432_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1432_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_cdiff@PLT
                        cmp              eax, 104
                                                                                        je    n1435_disjunction_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1433_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1433_iterate_α:
                        mov              qword ptr [rbp + 256], 0
.Lx1473_0:
                        mov              rdi, qword ptr [rbp + 272]                     # obj
                        mov              rsi, qword ptr [rbp + 280]                     # obj
                        mov              rdx, qword ptr [rbp + 256]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              rax, 99
                                                                                        je    n1435_disjunction_α
                                                                                        jmp   n1434_call_builtin_icon_α
n1433_iterate_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx1473_0
#-----------------------------------------------------------------------------------------------------------------------
n1434_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1475:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1475]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n1433_iterate_β
                                                                                        jmp   n1433_iterate_β
n1434_call_builtin_icon_β:
                                                                                        jmp   n1433_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1435_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n1438_var_α
n1435_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx1477_0
                                                                                        jmp   n1436_var_α
.Lx1477_0:
                                                                                        jmp   n1436_var_α
n1435_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n1436_var_α
n1435_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n1436_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1436_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1437_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1437_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_diff_γ
#-----------------------------------------------------------------------------------------------------------------------
n1438_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1439_unop_α
n1438_var_β:
                                                                                        jmp   n1435_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1439_unop_α:
                        mov              rdi, qword ptr [rbp + 544]                     # lo
                        mov              rsi, qword ptr [rbp + 552]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n1440_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1440_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1484_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1441_binop_test_α
.Lx1484_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1441_binop_test_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 112
                                                                                        je    .Lx1485_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 112
                                                                                        je    .Lx1485_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx1485_2
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx1485_2
.Lx1485_1:
                        mov              rax, qword ptr [rbp + 120]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jne   n1435_disjunction_af
                        mov              rcx, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rcx
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rcx
                                                                                        jmp   proc_diff_ω
.Lx1485_0:
                        mov              rdi, qword ptr [rbp + 112]                     # a
                        mov              rsi, qword ptr [rbp + 120]                     # a
                        mov              rdx, qword ptr [rbp + 144]                     # b
                        mov              rcx, qword ptr [rbp + 152]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 96]                                 # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1485_1
                        cmp              eax, 1
                                                                                        je    n1435_disjunction_af
                                                                                        jmp   proc_diff_ω
.Lx1485_2:
                        mov              rdi, qword ptr [rbp + 112]                     # lhs
                        mov              rsi, qword ptr [rbp + 120]                     # lhs
                        mov              rdx, qword ptr [rbp + 144]                     # rhs
                        mov              rcx, qword ptr [rbp + 152]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1435_disjunction_af
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   proc_diff_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_β:
                                                                                        jmp   proc_diff_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_dcα:
                        pop              r11
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 608], r11
                        lea              rax, [rip + .Lx1486_2]
                        mov              qword ptr [rbp + 616], rax
                        lea              rax, [rip + .Lx1486_3]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 544                                       # suffix_off
                        mov              edx, 608                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_diff_α_body
.Lx1486_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1486_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "dfa(Q,S,d,q0,F)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "getdfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_getdfa_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1200
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_getdfa_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "readset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_readset_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_readset_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "showdfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_showdfa_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1664
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_showdfa_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "writeset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_writeset_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_writeset_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "minimize"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_minimize_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3376
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_minimize_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "marklists"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_marklists_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_marklists_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "makemdfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_makemdfa_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 3584
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_makemdfa_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "equiv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_equiv_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_equiv_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "equivdelta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_equivdelta_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_equivdelta_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "finalstates"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_finalstates_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 704
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_finalstates_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "diff"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_diff_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_diff_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "distab"
.Lgvan1:                .string          "dlists"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n1487_call_proc_staged_α:
                        sub              rsp, 352
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
                        call             proc_getdfa_dcα
                                                                                        jmp   .Lx1501_2
.Lx1501_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n1489_lit_integer_α
                                                                                        jmp   n1488_assign_α
n1487_call_proc_staged_β:
                                                                                        jmp   n1489_lit_integer_α
.Lx1501_0:
                        .quad            .Lx1501_0_s
.Lx1501_0_s:
                        .string          "getdfa"
#-----------------------------------------------------------------------------------------------------------------------
n1488_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n1489_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1489_lit_integer_α:
                        mov              qword ptr [rbp + 32], 3                        # result
                        mov              rax, qword ptr [rip + .Lx1503_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n1490_lit_integer_α
.Lx1503_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1490_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx1504_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1491_to_α
.Lx1504_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1491_to_α:
                        mov              rdi, qword ptr [rbp + 32]                      # v
                        mov              rsi, qword ptr [rbp + 40]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                        mov              rdi, qword ptr [rbp + 48]                      # v
                        mov              rsi, qword ptr [rbp + 56]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 16], rax
.Lx1506_0:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 56]
                        cmp              rax, rcx
                                                                                        jle   .Lx1506_240
                        add              rsp, 352
                                                                                        jmp   main_ω
.Lx1506_240:
                        mov              qword ptr [rbp + 0], 3
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n1492_bound_α
n1491_to_β:
                        inc              qword ptr [rbp + 16]
                                                                                        jmp   .Lx1506_0
#-----------------------------------------------------------------------------------------------------------------------
n1492_bound_α:
                        mov              qword ptr [rbp + 64], rsp
                                                                                        jmp   n1493_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1493_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 7
                        mov              rax, qword ptr [rip + .Lx1509_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1494_lit_string_α
.Lx1509_0:
                        .quad            .Lx1509_0_s
.Lx1509_0_s:
                        .string          "Reduced"
#-----------------------------------------------------------------------------------------------------------------------
n1494_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 8
                        mov              rax, qword ptr [rip + .Lx1510_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1495_var_α
.Lx1510_0:
                        .quad            .Lx1510_0_s
.Lx1510_0_s:
                        .string          "Original"
#-----------------------------------------------------------------------------------------------------------------------
n1495_var_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1496_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1496_call_proc_staged_α:
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 320]
                        call             proc_showdfa_dcα
                                                                                        jmp   .Lx1514_2
.Lx1514_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n1499_unmark_α
                                                                                        jmp   n1497_call_proc_staged_α
n1496_call_proc_staged_β:
                                                                                        jmp   n1499_unmark_α
.Lx1514_0:
                        .quad            .Lx1514_0_s
.Lx1514_0_s:
                        .string          "showdfa"
#-----------------------------------------------------------------------------------------------------------------------
n1497_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        call             proc_minimize_dcα
                                                                                        jmp   .Lx1516_2
.Lx1516_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n1499_unmark_α
                                                                                        jmp   n1498_call_proc_staged_α
n1497_call_proc_staged_β:
                                                                                        jmp   n1499_unmark_α
.Lx1516_0:
                        .quad            .Lx1516_0_s
.Lx1516_0_s:
                        .string          "minimize"
#-----------------------------------------------------------------------------------------------------------------------
n1498_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 192]
                        call             proc_showdfa_dcα
                                                                                        jmp   .Lx1518_2
.Lx1518_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n1499_unmark_α
                                                                                        jmp   n1499_unmark_α
n1498_call_proc_staged_β:
                                                                                        jmp   n1499_unmark_α
.Lx1518_0:
                        .quad            .Lx1518_0_s
.Lx1518_0_s:
                        .string          "showdfa"
#-----------------------------------------------------------------------------------------------------------------------
n1499_unmark_α:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n1491_to_β
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
