                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_meander_α
proc_meander_α:
proc_meander_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 752
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n1_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n2_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 752], 3                       # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n6_coerce_numeric_α
.Lx53_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx55_1
                        cmp              eax, 3
                                                                                        jne   .Lx55_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 3
                                                                                        jne   .Lx55_0
.Lx55_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n7_binop_α
.Lx55_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 752]                               # other
                        lea              rdx, [rbp + 720]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx56_0
                        mov              rax, qword ptr [rbp + 728]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 704], 3
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n8_assign_α
.Lx56_0:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n9_var_ref_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n11_subscript_α
.Lx60_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_subscript_α:
                        mov              rdi, qword ptr [rbp + 624]                     # base
                        mov              rsi, qword ptr [rbp + 632]                     # base
                        mov              rdx, qword ptr [rbp + 640]                     # idx
                        mov              rcx, qword ptr [rbp + 648]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n16_var_ref_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n12_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_deref_α:
                        mov              rdi, qword ptr [rbp + 656]                     # d
                        mov              rsi, qword ptr [rbp + 664]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n16_var_ref_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn66:               .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]                          # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n16_var_ref_α
                                                                                        jmp   n15_assign_α
n14_call_builtin_icon_β:
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n18_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n18_subscript_α:
                        mov              rdi, qword ptr [rbp + 80]                      # base
                        mov              rsi, qword ptr [rbp + 88]                      # base
                        mov              rdx, qword ptr [rbp + 96]                      # idx
                        mov              rcx, qword ptr [rbp + 104]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx72_240
                        add              rsp, 752
                                                                                        jmp   n44_var_α
.Lx72_240:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n19_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_deref_α:
                        mov              rdi, qword ptr [rbp + 112]                     # d
                        mov              rsi, qword ptr [rbp + 120]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx73_240
                        add              rsp, 752
                                                                                        jmp   n44_var_α
.Lx73_240:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n29_var_α
n21_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx76_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n16_var_ref_α
.Lx76_0:
                        cmp              eax, 1
                                                                                        jne   .Lx76_1
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n16_var_ref_α
.Lx76_1:
                                                                                        jmp   n16_var_ref_α
n21_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n16_var_ref_α
                                                                                        jmp   n16_var_ref_α
n21_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n22_var_α
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n23_var_α
n22_var_β:
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n24_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        mov              rdi, qword ptr [rbp + 816]                     # a
                        mov              rsi, qword ptr [rbp + 824]                     # a
                        mov              rdx, qword ptr [rbp + 832]                     # b
                        mov              rcx, qword ptr [rbp + 840]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n27_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n28_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_conjunction_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n21_disjunction_as
n28_conjunction_β:
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n30_var_α
n29_var_β:
                                                                                        jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n31_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 5
                                                                                        je    .Lx92_1
                        cmp              eax, 3
                                                                                        jne   .Lx92_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 3
                                                                                        jne   .Lx92_0
.Lx92_1:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n32_unop_α
.Lx92_0:
                        lea              rdi, [rbp + 864]                               # self
                        lea              rsi, [rbp + 864]                               # other
                        lea              rdx, [rbp + 384]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n32_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n32_unop_α:
                        mov              rdi, qword ptr [rbp + 384]                     # a
                        mov              rsi, qword ptr [rbp + 392]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n34_subscript_α
.Lx94_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n34_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # arr
                        mov              rsi, qword ptr [rbp + 360]                     # arr
                        mov              rdx, qword ptr [rbp + 368]                     # i
                        mov              rcx, qword ptr [rbp + 376]                     # i
                        mov              r8, qword ptr [rbp + 416]                      # j
                        mov              r9, qword ptr [rbp + 424]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n21_disjunction_af
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n36_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:
                        mov              rdi, qword ptr [rbp + 336]                     # a
                        mov              rsi, qword ptr [rbp + 344]                     # a
                        mov              rdx, qword ptr [rbp + 832]                     # b
                        mov              rcx, qword ptr [rbp + 840]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n38_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 296], rax
                        mov              qword ptr [rbp + 304], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx101_60:
                        .section         .rodata
.Lbynamegenfn39:        .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn39]                   # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 304]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n21_disjunction_af
                                                                                        jmp   n39_var_α
n38_call_builtin_gen_β:
                                                                                        jmp   .Lx101_60
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n41_coerce_numeric_α
.Lx104_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 5
                                                                                        je    .Lx106_1
                        cmp              eax, 3
                                                                                        jne   .Lx106_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx106_0
.Lx106_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n42_binop_α
.Lx106_0:
                        lea              rdi, [rbp + 848]                               # self
                        lea              rsi, [rbp + 240]                               # other
                        lea              rdx, [rbp + 208]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n42_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx107_0
                        mov              rax, qword ptr [rbp + 216]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n43_assign_α
.Lx107_0:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n16_var_ref_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n21_disjunction_as
n43_assign_β:
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n45_return_α
#-----------------------------------------------------------------------------------------------------------------------
n45_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_meander_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_meander_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_meander_β:
                                                                                        jmp   proc_meander_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_meander_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_meander_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_meander_dcα:
                        pop              r11
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 912], r11
                        lea              rax, [rip + .Lx112_2]
                        mov              qword ptr [rbp + 920], rax
                        lea              rax, [rip + .Lx112_3]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 816                                       # suffix_off
                        mov              edx, 912                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_meander_α_body
.Lx112_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx112_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "meander"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_meander_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 896
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_meander_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        sub              rsp, 640
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
                        .section         .rodata
.Lrkfn138:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx137_240
                        add              rsp, 640
                                                                                        jmp   main_ω
.Lx137_240:
                                                                                        jmp   n114_assign_α
n113_call_builtin_icon_β:
                        add              rsp, 640
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n116_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n116_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 624]                     # lo
                        mov              rsi, qword ptr [rbp + 632]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n117_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n117_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n121_lit_charset_α
n117_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx145_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n118_scan_α
.Lx145_0:
                        cmp              eax, 1
                                                                                        jne   .Lx145_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n118_scan_α
.Lx145_1:
                                                                                        jmp   n118_scan_α
n117_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        je    n136_scan_α
                                                                                        jmp   n136_scan_α
n117_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 1
                                                                                        je    n119_lit_string_α
                                                                                        jmp   n136_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n118_scan_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n113_call_builtin_icon_α
n118_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n117_disjunction_β
                                                                                        jmp   n113_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 23
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n120_call_builtin_icon_α
n119_lit_string_β:
                                                                                        jmp   n136_scan_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "*** erroneous input ***"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn150:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]                         # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n136_scan_α
                                                                                        jmp   n117_disjunction_as
n120_call_builtin_icon_β:
                                                                                        jmp   n136_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_charset_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], -1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n122_scan_upto_α
n121_lit_charset_β:
                                                                                        jmp   n117_disjunction_af
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_upto_α:
                        mov              qword ptr [rbp + 528], r14
.Lx153_0:
                        mov              rax, qword ptr [rbp + 528]
                        cmp              rax, r15
                                                                                        jge   n117_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx153_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx153_1
                        mov              qword ptr [rbp + 512], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n123_scan_tab_α
.Lx153_1:
                        inc              qword ptr [rbp + 528]
                                                                                        jmp   .Lx153_0
n122_scan_upto_β:
                        inc              qword ptr [rbp + 528]
                                                                                        jmp   .Lx153_0
.Lx153_2:
                        .quad            .Lx153_2_s
.Lx153_2_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n123_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 520]
                        cmp              rax, 1
                                                                                        jge   .Lx155_0
                        add              rax, r15
                        add              rax, 1
.Lx155_0:
                        cmp              rax, 1
                                                                                        jge   .Lx155_239
                        add              rsp, 16
                                                                                        jmp   n122_scan_upto_β
.Lx155_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx155_240
                        add              rsp, 16
                                                                                        jmp   n122_scan_upto_β
.Lx155_240:
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n124_assign_α
n123_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n122_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n126_scan_move_α
.Lx157_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n126_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx159_239
                        add              rsp, 16
                                                                                        jmp   n117_disjunction_af
.Lx159_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx159_240
                        add              rsp, 16
                                                                                        jmp   n117_disjunction_af
.Lx159_240:
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n127_lit_integer_α
n126_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n128_scan_tab_α
.Lx160_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n128_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx162_0
                        add              rax, r15
                        add              rax, 1
.Lx162_0:
                        cmp              rax, 1
                                                                                        jge   .Lx162_239
                        add              rsp, 16
                                                                                        jmp   n117_disjunction_af
.Lx162_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx162_240
                        add              rsp, 16
                                                                                        jmp   n117_disjunction_af
.Lx162_240:
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
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n129_call_builtin_icon_α
n128_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn164:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]                         # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n117_disjunction_af
                                                                                        jmp   n130_assign_α
n129_call_builtin_icon_β:
                                                                                        jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n131_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n131_conjunction_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n132_var_α
n131_conjunction_β:
                                                                                        jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n134_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 288]
                        call             proc_meander_dcα
                                                                                        jmp   .Lx172_2
.Lx172_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n136_scan_α
                                                                                        jmp   n135_call_builtin_icon_α
n134_call_proc_staged_β:
                                                                                        jmp   n136_scan_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "meander"
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn174:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n136_scan_α
                                                                                        jmp   n117_disjunction_as
n135_call_builtin_icon_β:
                                                                                        jmp   n136_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n136_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n113_call_builtin_icon_α
n136_scan_β:
                                                                                        jmp   n113_call_builtin_icon_α
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
