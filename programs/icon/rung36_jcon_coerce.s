                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_toby_α
proc_toby_α:
proc_toby_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 704
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn33:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]                          # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n15_var_α
                                                                                        jmp   n2_lit_string_α
n1_call_builtin_icon_β:
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 4
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n3_binop_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          " to "
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:
                        mov              rdi, qword ptr [rbp + 560]                     # a
                        mov              rsi, qword ptr [rbp + 568]                     # a
                        mov              rdx, qword ptr [rbp + 624]                     # b
                        mov              rcx, qword ptr [rbp + 632]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn39:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]                          # fn
                        lea              rsi, [rbp + 656]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n15_var_α
                                                                                        jmp   n6_binop_α
n5_call_builtin_icon_β:
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_binop_α:
                        mov              rdi, qword ptr [rbp + 544]                     # a
                        mov              rsi, qword ptr [rbp + 552]                     # a
                        mov              rdx, qword ptr [rbp + 640]                     # b
                        mov              rcx, qword ptr [rbp + 648]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 4
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n8_binop_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          " by "
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              rdi, qword ptr [rbp + 528]                     # a
                        mov              rsi, qword ptr [rbp + 536]                     # a
                        mov              rdx, qword ptr [rbp + 704]                     # b
                        mov              rcx, qword ptr [rbp + 712]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn46:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]                          # fn
                        lea              rsi, [rbp + 736]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n15_var_α
                                                                                        jmp   n11_binop_α
n10_call_builtin_icon_β:
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              rdi, qword ptr [rbp + 512]                     # a
                        mov              rsi, qword ptr [rbp + 520]                     # a
                        mov              rdx, qword ptr [rbp + 720]                     # b
                        mov              rcx, qword ptr [rbp + 728]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n13_binop_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        mov              rdi, qword ptr [rbp + 496]                     # a
                        mov              rsi, qword ptr [rbp + 504]                     # a
                        mov              rdx, qword ptr [rbp + 784]                     # b
                        mov              rcx, qword ptr [rbp + 792]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n17_call_builtin_icon_α
.Lx53_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn55:               .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]                          # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n19_var_α
                                                                                        jmp   n18_call_builtin_icon_α
n17_call_builtin_icon_β:
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn57:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]                          # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n19_var_α
                                                                                        jmp   n19_var_α
n18_call_builtin_icon_β:
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n22_to_by_α
#-----------------------------------------------------------------------------------------------------------------------
n22_to_by_α:
                        mov              rdi, qword ptr [rbp + 144]                     # v
                        mov              rsi, qword ptr [rbp + 152]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        mov              rdi, qword ptr [rbp + 160]                     # v
                        mov              rsi, qword ptr [rbp + 168]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                        mov              rdi, qword ptr [rbp + 176]                     # v
                        mov              rsi, qword ptr [rbp + 184]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lx65_0:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 184]
                        cmp              rdx, 0
                                                                                        jl    .Lx65_1
                        cmp              rax, rcx
                                                                                        jle   .Lx65_239
                        add              rsp, 704
                                                                                        jmp   n29_call_builtin_icon_α
.Lx65_239:
                                                                                        jmp   .Lx65_2
.Lx65_1:
                        cmp              rax, rcx
                                                                                        jge   .Lx65_240
                        add              rsp, 704
                                                                                        jmp   n29_call_builtin_icon_α
.Lx65_240:
.Lx65_2:
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n23_assign_α
n22_to_by_β:
                        mov              rdx, qword ptr [rbp + 184]
                        mov              rax, qword ptr [rbp + 128]
                        add              rax, rdx
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   .Lx65_0
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n24_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n24_bound_α:
                        mov              qword ptr [rbp + 192], rsp
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n26_var_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn73:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]                          # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n28_unmark_α
                                                                                        jmp   n28_unmark_α
n27_call_builtin_icon_β:
                                                                                        jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n28_unmark_α:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n22_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn77:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]                          # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_toby_ω
                                                                                        jmp   proc_toby_ω
n29_call_builtin_icon_β:
                                                                                        jmp   proc_toby_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_β:
                                                                                        jmp   proc_toby_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_dcα:
                        pop              r11
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 848], r11
                        lea              rax, [rip + .Lx78_2]
                        mov              qword ptr [rbp + 856], rax
                        lea              rax, [rip + .Lx78_3]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 800                                       # suffix_off
                        mov              edx, 848                                       # region_bytes
                        mov              ecx, 3                                         # np
                        mov              r8d, 3                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_toby_α_body
.Lx78_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -880
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx78_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -880
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_unop_α
proc_unop_α:
proc_unop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        sub              rsp, 1024
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n81_binop_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 304]                     # b
                        mov              rcx, qword ptr [rbp + 312]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n83_call_builtin_icon_α
.Lx118_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn120:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]                         # fn
                        lea              rsi, [rbp + 224]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n113_return_α
                                                                                        jmp   n84_disjunction_α
n83_call_builtin_icon_β:
                                                                                        jmp   n113_return_α
#-----------------------------------------------------------------------------------------------------------------------
n84_disjunction_α:
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              dword ptr [rbp + 416], 0
                                                                                        jmp   n110_var_α
n84_disjunction_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        jne   .Lx122_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n85_lit_integer_α
.Lx122_0:
                        cmp              eax, 1
                                                                                        jne   .Lx122_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n85_lit_integer_α
.Lx122_1:
                                                                                        jmp   n85_lit_integer_α
n84_disjunction_β:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        je    n112_call_value_β
                                                                                        jmp   n84_disjunction_af
n84_disjunction_af:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 1
                                                                                        je    n109_lit_string_α
                                                                                        jmp   n113_return_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n86_call_builtin_icon_α
.Lx123_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn125:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]                         # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n84_disjunction_β
                                                                                        jmp   n87_disjunction_α
n86_call_builtin_icon_β:
                                                                                        jmp   n84_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n87_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n106_var_α
n87_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx127_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n88_lit_integer_α
.Lx127_0:
                        cmp              eax, 1
                                                                                        jne   .Lx127_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n88_lit_integer_α
.Lx127_1:
                                                                                        jmp   n88_lit_integer_α
n87_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    n108_call_value_β
                                                                                        jmp   n87_disjunction_af
n87_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    n105_lit_string_α
                                                                                        jmp   n84_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n89_call_builtin_icon_α
.Lx128_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn130:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn130]                         # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n87_disjunction_β
                                                                                        jmp   n90_disjunction_α
n89_call_builtin_icon_β:
                                                                                        jmp   n87_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n90_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n102_var_α
n90_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx132_0
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n91_lit_integer_α
.Lx132_0:
                        cmp              eax, 1
                                                                                        jne   .Lx132_1
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n91_lit_integer_α
.Lx132_1:
                                                                                        jmp   n91_lit_integer_α
n90_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        je    n104_call_value_β
                                                                                        jmp   n90_disjunction_af
n90_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1
                                                                                        je    n101_lit_string_α
                                                                                        jmp   n87_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n92_call_builtin_icon_α
.Lx133_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn135:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]                         # fn
                        lea              rsi, [rbp + 832]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n90_disjunction_β
                                                                                        jmp   n93_disjunction_α
n92_call_builtin_icon_β:
                                                                                        jmp   n90_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n93_disjunction_α:
                        mov              qword ptr [rbp + 1120], 0
                        mov              qword ptr [rbp + 1128], 0
                        mov              dword ptr [rbp + 1136], 0
                                                                                        jmp   n98_var_α
n93_disjunction_as:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 0
                                                                                        jne   .Lx137_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n94_lit_integer_α
.Lx137_0:
                        cmp              eax, 1
                                                                                        jne   .Lx137_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n94_lit_integer_α
.Lx137_1:
                                                                                        jmp   n94_lit_integer_α
n93_disjunction_β:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 0
                                                                                        je    n100_call_value_β
                                                                                        jmp   n93_disjunction_af
n93_disjunction_af:
                        add              dword ptr [rbp + 1136], 1
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 1
                                                                                        je    n97_lit_string_α
                                                                                        jmp   n90_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n95_call_builtin_icon_α
.Lx138_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn140:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n93_disjunction_β
                                                                                        jmp   n96_call_builtin_icon_α
n95_call_builtin_icon_β:
                                                                                        jmp   n93_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn142:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n93_disjunction_β
                                                                                        jmp   n113_return_α
n96_call_builtin_icon_β:
                                                                                        jmp   n93_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 1264], 2                      # result
                        mov              dword ptr [rbp + 1268], 3
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n93_disjunction_as
n97_lit_string_β:
                                                                                        jmp   n93_disjunction_af
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n99_var_α
n98_var_β:
                                                                                        jmp   n93_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n100_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_value_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        mov              qword ptr [rbp + 1200], 0
                        mov              rdi, qword ptr [rbp + 1152]                    # callee
                        mov              rsi, qword ptr [rbp + 1160]                    # callee
                        lea              rdx, [rbp + 1184]                              # argv
                        mov              ecx, 1                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx149_7
                        lea              rcx, [rip + .Lx149_3]
                        lea              rdx, [rip + .Lx149_4]
                                                                                        jmp   rax
.Lx149_3:
                        mov              qword ptr [rbp + 1208], rsp
                        mov              rax, qword ptr [rbp + 1200]
                        test             rax, rax
                                                                                        jne   .Lx149_5
                        mov              qword ptr [rbp + 1200], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx149_2
.Lx149_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx149_2
.Lx149_4:
                        mov              qword ptr [rbp + 1208], rsp
                        mov              rax, qword ptr [rbp + 1200]
                        test             rax, rax
                                                                                        jne   .Lx149_6
                        mov              qword ptr [rbp + 1200], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx149_2
.Lx149_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx149_2
.Lx149_7:
                        mov              rdi, qword ptr [rbp + 1152]                    # callee
                        mov              rsi, qword ptr [rbp + 1160]                    # callee
                        lea              rdx, [rbp + 1184]                              # argv
                        mov              ecx, 1                                         # n
                        lea              r8, [rbp + 1200]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx149_2:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n93_disjunction_af
                                                                                        jmp   n93_disjunction_as
n100_call_value_β:
                        mov              rax, qword ptr [rbp + 1200]
                        cmp              rax, 1
                                                                                        jne   .Lx149_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1208]
                                                                                        jmp   qword ptr [rsp]
.Lx149_8:
                        lea              rdi, [rbp + 1200]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n93_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n93_disjunction_as
                                                                                        jmp   n93_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 3
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n90_disjunction_as
n101_lit_string_β:
                                                                                        jmp   n90_disjunction_af
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n103_var_α
n102_var_β:
                                                                                        jmp   n90_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n104_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_value_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              qword ptr [rbp + 960], 0
                        mov              rdi, qword ptr [rbp + 912]                     # callee
                        mov              rsi, qword ptr [rbp + 920]                     # callee
                        lea              rdx, [rbp + 944]                               # argv
                        mov              ecx, 1                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx156_7
                        lea              rcx, [rip + .Lx156_3]
                        lea              rdx, [rip + .Lx156_4]
                                                                                        jmp   rax
.Lx156_3:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx156_5
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx156_2
.Lx156_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx156_2
.Lx156_4:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx156_6
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx156_2
.Lx156_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx156_2
.Lx156_7:
                        mov              rdi, qword ptr [rbp + 912]                     # callee
                        mov              rsi, qword ptr [rbp + 920]                     # callee
                        lea              rdx, [rbp + 944]                               # argv
                        mov              ecx, 1                                         # n
                        lea              r8, [rbp + 960]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx156_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n90_disjunction_af
                                                                                        jmp   n90_disjunction_as
n104_call_value_β:
                        mov              rax, qword ptr [rbp + 960]
                        cmp              rax, 1
                                                                                        jne   .Lx156_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 968]
                                                                                        jmp   qword ptr [rsp]
.Lx156_8:
                        lea              rdi, [rbp + 960]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n90_disjunction_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n90_disjunction_as
                                                                                        jmp   n90_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 3
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n87_disjunction_as
n105_lit_string_β:
                                                                                        jmp   n87_disjunction_af
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n107_var_α
n106_var_β:
                                                                                        jmp   n87_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n108_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_value_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              qword ptr [rbp + 720], 0
                        mov              rdi, qword ptr [rbp + 672]                     # callee
                        mov              rsi, qword ptr [rbp + 680]                     # callee
                        lea              rdx, [rbp + 704]                               # argv
                        mov              ecx, 1                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx163_7
                        lea              rcx, [rip + .Lx163_3]
                        lea              rdx, [rip + .Lx163_4]
                                                                                        jmp   rax
.Lx163_3:
                        mov              qword ptr [rbp + 728], rsp
                        mov              rax, qword ptr [rbp + 720]
                        test             rax, rax
                                                                                        jne   .Lx163_5
                        mov              qword ptr [rbp + 720], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx163_2
.Lx163_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx163_2
.Lx163_4:
                        mov              qword ptr [rbp + 728], rsp
                        mov              rax, qword ptr [rbp + 720]
                        test             rax, rax
                                                                                        jne   .Lx163_6
                        mov              qword ptr [rbp + 720], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx163_2
.Lx163_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx163_2
.Lx163_7:
                        mov              rdi, qword ptr [rbp + 672]                     # callee
                        mov              rsi, qword ptr [rbp + 680]                     # callee
                        lea              rdx, [rbp + 704]                               # argv
                        mov              ecx, 1                                         # n
                        lea              r8, [rbp + 720]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx163_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n87_disjunction_af
                                                                                        jmp   n87_disjunction_as
n108_call_value_β:
                        mov              rax, qword ptr [rbp + 720]
                        cmp              rax, 1
                                                                                        jne   .Lx163_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 728]
                                                                                        jmp   qword ptr [rsp]
.Lx163_8:
                        lea              rdi, [rbp + 720]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n87_disjunction_af
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n87_disjunction_as
                                                                                        jmp   n87_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 3
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n84_disjunction_as
n109_lit_string_β:
                                                                                        jmp   n84_disjunction_af
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n111_var_α
n110_var_β:
                                                                                        jmp   n84_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n112_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_value_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              qword ptr [rbp + 480], 0
                        mov              rdi, qword ptr [rbp + 432]                     # callee
                        mov              rsi, qword ptr [rbp + 440]                     # callee
                        lea              rdx, [rbp + 464]                               # argv
                        mov              ecx, 1                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx170_7
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4]
                                                                                        jmp   rax
.Lx170_3:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx170_5
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_4:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx170_6
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_7:
                        mov              rdi, qword ptr [rbp + 432]                     # callee
                        mov              rsi, qword ptr [rbp + 440]                     # callee
                        lea              rdx, [rbp + 464]                               # argv
                        mov              ecx, 1                                         # n
                        lea              r8, [rbp + 480]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx170_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n84_disjunction_af
                                                                                        jmp   n84_disjunction_as
n112_call_value_β:
                        mov              rax, qword ptr [rbp + 480]
                        cmp              rax, 1
                                                                                        jne   .Lx170_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   qword ptr [rsp]
.Lx170_8:
                        lea              rdi, [rbp + 480]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n84_disjunction_af
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n84_disjunction_as
                                                                                        jmp   n84_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n113_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 1024
                                                                                        jmp   proc_unop_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_unop_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_unop_β:
                                                                                        jmp   proc_unop_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_unop_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_unop_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_binop_α
proc_binop_α:
proc_binop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        sub              rsp, 3408
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
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              qword ptr [rsp + 3392], 0
                        mov              qword ptr [rsp + 3400], 0
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 2
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n173_var_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "x "
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 2
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n175_binop_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          " y"
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 464]                     # b
                        mov              rcx, qword ptr [rbp + 472]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n176_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n177_call_builtin_icon_α
.Lx281_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn283:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n275_return_α
                                                                                        jmp   n178_disjunction_α
n177_call_builtin_icon_β:
                                                                                        jmp   n275_return_α
#-----------------------------------------------------------------------------------------------------------------------
n178_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n271_var_α
n178_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx285_0
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n179_lit_integer_α
.Lx285_0:
                        cmp              eax, 1
                                                                                        jne   .Lx285_1
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n179_lit_integer_α
.Lx285_1:
                                                                                        jmp   n179_lit_integer_α
n178_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n274_call_value_β
                                                                                        jmp   n178_disjunction_af
n178_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n270_lit_string_α
                                                                                        jmp   n275_return_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rbp + 752], 3                       # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n180_call_builtin_icon_α
.Lx286_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn288:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n178_disjunction_β
                                                                                        jmp   n181_disjunction_α
n180_call_builtin_icon_β:
                                                                                        jmp   n178_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n181_disjunction_α:
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0
                                                                                        jmp   n266_var_α
n181_disjunction_as:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        jne   .Lx290_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n182_lit_integer_α
.Lx290_0:
                        cmp              eax, 1
                                                                                        jne   .Lx290_1
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n182_lit_integer_α
.Lx290_1:
                                                                                        jmp   n182_lit_integer_α
n181_disjunction_β:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        je    n269_call_value_β
                                                                                        jmp   n181_disjunction_af
n181_disjunction_af:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1
                                                                                        je    n265_lit_string_α
                                                                                        jmp   n178_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n183_call_builtin_icon_α
.Lx291_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn293:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]                         # fn
                        lea              rsi, [rbp + 784]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n181_disjunction_β
                                                                                        jmp   n184_disjunction_α
n183_call_builtin_icon_β:
                                                                                        jmp   n181_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n184_disjunction_α:
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              dword ptr [rbp + 1120], 0
                                                                                        jmp   n261_var_α
n184_disjunction_as:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        jne   .Lx295_0
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n185_lit_integer_α
.Lx295_0:
                        cmp              eax, 1
                                                                                        jne   .Lx295_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n185_lit_integer_α
.Lx295_1:
                                                                                        jmp   n185_lit_integer_α
n184_disjunction_β:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        je    n264_call_value_β
                                                                                        jmp   n184_disjunction_af
n184_disjunction_af:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 1
                                                                                        je    n260_lit_string_α
                                                                                        jmp   n181_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 3                      # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n186_call_builtin_icon_α
.Lx296_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn298:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]                         # fn
                        lea              rsi, [rbp + 1056]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n184_disjunction_β
                                                                                        jmp   n187_disjunction_α
n186_call_builtin_icon_β:
                                                                                        jmp   n184_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n187_disjunction_α:
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                        mov              dword ptr [rbp + 1392], 0
                                                                                        jmp   n256_var_α
n187_disjunction_as:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        jne   .Lx300_0
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n188_lit_integer_α
.Lx300_0:
                        cmp              eax, 1
                                                                                        jne   .Lx300_1
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n188_lit_integer_α
.Lx300_1:
                                                                                        jmp   n188_lit_integer_α
n187_disjunction_β:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        je    n259_call_value_β
                                                                                        jmp   n187_disjunction_af
n187_disjunction_af:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 1
                                                                                        je    n255_lit_string_α
                                                                                        jmp   n184_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 3                      # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n189_call_builtin_icon_α
.Lx301_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn303:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]                         # fn
                        lea              rsi, [rbp + 1328]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n187_disjunction_β
                                                                                        jmp   n190_disjunction_α
n189_call_builtin_icon_β:
                                                                                        jmp   n187_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n190_disjunction_α:
                        mov              qword ptr [rbp + 1648], 0
                        mov              qword ptr [rbp + 1656], 0
                        mov              dword ptr [rbp + 1664], 0
                                                                                        jmp   n251_var_α
n190_disjunction_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        jne   .Lx305_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n191_lit_integer_α
.Lx305_0:
                        cmp              eax, 1
                                                                                        jne   .Lx305_1
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n191_lit_integer_α
.Lx305_1:
                                                                                        jmp   n191_lit_integer_α
n190_disjunction_β:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        je    n254_call_value_β
                                                                                        jmp   n190_disjunction_af
n190_disjunction_af:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 1
                                                                                        je    n250_lit_string_α
                                                                                        jmp   n187_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n192_call_builtin_icon_α
.Lx306_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn308:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]                         # fn
                        lea              rsi, [rbp + 1600]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n190_disjunction_β
                                                                                        jmp   n193_disjunction_α
n192_call_builtin_icon_β:
                                                                                        jmp   n190_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n193_disjunction_α:
                        mov              qword ptr [rbp + 1920], 0
                        mov              qword ptr [rbp + 1928], 0
                        mov              dword ptr [rbp + 1936], 0
                                                                                        jmp   n246_var_α
n193_disjunction_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        jne   .Lx310_0
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n194_lit_integer_α
.Lx310_0:
                        cmp              eax, 1
                                                                                        jne   .Lx310_1
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n194_lit_integer_α
.Lx310_1:
                                                                                        jmp   n194_lit_integer_α
n193_disjunction_β:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        je    n249_call_value_β
                                                                                        jmp   n193_disjunction_af
n193_disjunction_af:
                        add              dword ptr [rbp + 1936], 1
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 1
                                                                                        je    n245_lit_string_α
                                                                                        jmp   n190_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 3                      # result
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n195_call_builtin_icon_α
.Lx311_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn313:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]                         # fn
                        lea              rsi, [rbp + 1872]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n193_disjunction_β
                                                                                        jmp   n196_disjunction_α
n195_call_builtin_icon_β:
                                                                                        jmp   n193_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n196_disjunction_α:
                        mov              qword ptr [rbp + 2192], 0
                        mov              qword ptr [rbp + 2200], 0
                        mov              dword ptr [rbp + 2208], 0
                                                                                        jmp   n241_var_α
n196_disjunction_as:
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 0
                                                                                        jne   .Lx315_0
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n197_lit_integer_α
.Lx315_0:
                        cmp              eax, 1
                                                                                        jne   .Lx315_1
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n197_lit_integer_α
.Lx315_1:
                                                                                        jmp   n197_lit_integer_α
n196_disjunction_β:
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 0
                                                                                        je    n244_call_value_β
                                                                                        jmp   n196_disjunction_af
n196_disjunction_af:
                        add              dword ptr [rbp + 2208], 1
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 1
                                                                                        je    n240_lit_string_α
                                                                                        jmp   n193_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 3                      # result
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n198_call_builtin_icon_α
.Lx316_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn318:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]                         # fn
                        lea              rsi, [rbp + 2144]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n196_disjunction_β
                                                                                        jmp   n199_disjunction_α
n198_call_builtin_icon_β:
                                                                                        jmp   n196_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n199_disjunction_α:
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0
                        mov              dword ptr [rbp + 2480], 0
                                                                                        jmp   n236_var_α
n199_disjunction_as:
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 0
                                                                                        jne   .Lx320_0
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n200_lit_integer_α
.Lx320_0:
                        cmp              eax, 1
                                                                                        jne   .Lx320_1
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n200_lit_integer_α
.Lx320_1:
                                                                                        jmp   n200_lit_integer_α
n199_disjunction_β:
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 0
                                                                                        je    n239_call_value_β
                                                                                        jmp   n199_disjunction_af
n199_disjunction_af:
                        add              dword ptr [rbp + 2480], 1
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 1
                                                                                        je    n235_lit_string_α
                                                                                        jmp   n196_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 3                      # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n201_call_builtin_icon_α
.Lx321_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2440], rax
                        .section         .rodata
.Lrkfn323:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn323]                         # fn
                        lea              rsi, [rbp + 2416]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 104
                                                                                        je    n199_disjunction_β
                                                                                        jmp   n202_disjunction_α
n201_call_builtin_icon_β:
                                                                                        jmp   n199_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n202_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n231_var_α
n202_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx325_0
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n203_lit_integer_α
.Lx325_0:
                        cmp              eax, 1
                                                                                        jne   .Lx325_1
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n203_lit_integer_α
.Lx325_1:
                                                                                        jmp   n203_lit_integer_α
n202_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        je    n234_call_value_β
                                                                                        jmp   n202_disjunction_af
n202_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 1
                                                                                        je    n230_lit_string_α
                                                                                        jmp   n199_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:
                        mov              qword ptr [rbp + 2928], 3                      # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n204_call_builtin_icon_α
.Lx326_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn328:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]                         # fn
                        lea              rsi, [rbp + 2688]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 104
                                                                                        je    n202_disjunction_β
                                                                                        jmp   n205_disjunction_α
n204_call_builtin_icon_β:
                                                                                        jmp   n202_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n205_disjunction_α:
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                        mov              dword ptr [rbp + 3024], 0
                                                                                        jmp   n226_var_α
n205_disjunction_as:
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 0
                                                                                        jne   .Lx330_0
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n206_lit_integer_α
.Lx330_0:
                        cmp              eax, 1
                                                                                        jne   .Lx330_1
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n206_lit_integer_α
.Lx330_1:
                                                                                        jmp   n206_lit_integer_α
n205_disjunction_β:
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 0
                                                                                        je    n229_call_value_β
                                                                                        jmp   n205_disjunction_af
n205_disjunction_af:
                        add              dword ptr [rbp + 3024], 1
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 1
                                                                                        je    n225_lit_string_α
                                                                                        jmp   n202_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:
                        mov              qword ptr [rbp + 3200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n207_call_builtin_icon_α
.Lx331_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 2984], rax
                        .section         .rodata
.Lrkfn333:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]                         # fn
                        lea              rsi, [rbp + 2960]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 104
                                                                                        je    n205_disjunction_β
                                                                                        jmp   n208_disjunction_α
n207_call_builtin_icon_β:
                                                                                        jmp   n205_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n208_disjunction_α:
                        mov              qword ptr [rbp + 3280], 0
                        mov              qword ptr [rbp + 3288], 0
                        mov              dword ptr [rbp + 3296], 0
                                                                                        jmp   n221_var_α
n208_disjunction_as:
                        mov              eax, dword ptr [rbp + 3296]
                        cmp              eax, 0
                                                                                        jne   .Lx335_0
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n209_lit_integer_α
.Lx335_0:
                        cmp              eax, 1
                                                                                        jne   .Lx335_1
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n209_lit_integer_α
.Lx335_1:
                                                                                        jmp   n209_lit_integer_α
n208_disjunction_β:
                        mov              eax, dword ptr [rbp + 3296]
                        cmp              eax, 0
                                                                                        je    n224_call_value_β
                                                                                        jmp   n208_disjunction_af
n208_disjunction_af:
                        add              dword ptr [rbp + 3296], 1
                        mov              eax, dword ptr [rbp + 3296]
                        cmp              eax, 1
                                                                                        je    n220_lit_string_α
                                                                                        jmp   n205_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n210_call_builtin_icon_α
.Lx336_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lrkfn338:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]                         # fn
                        lea              rsi, [rbp + 3232]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 104
                                                                                        je    n208_disjunction_β
                                                                                        jmp   n211_disjunction_α
n210_call_builtin_icon_β:
                                                                                        jmp   n208_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n211_disjunction_α:
                        mov              qword ptr [rbp + 3552], 0
                        mov              qword ptr [rbp + 3560], 0
                        mov              dword ptr [rbp + 3568], 0
                                                                                        jmp   n216_var_α
n211_disjunction_as:
                        mov              eax, dword ptr [rbp + 3568]
                        cmp              eax, 0
                                                                                        jne   .Lx340_0
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n212_lit_integer_α
.Lx340_0:
                        cmp              eax, 1
                                                                                        jne   .Lx340_1
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n212_lit_integer_α
.Lx340_1:
                                                                                        jmp   n212_lit_integer_α
n211_disjunction_β:
                        mov              eax, dword ptr [rbp + 3568]
                        cmp              eax, 0
                                                                                        je    n219_call_value_β
                                                                                        jmp   n211_disjunction_af
n211_disjunction_af:
                        add              dword ptr [rbp + 3568], 1
                        mov              eax, dword ptr [rbp + 3568]
                        cmp              eax, 1
                                                                                        je    n215_lit_string_α
                                                                                        jmp   n208_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:
                        mov              qword ptr [rbp + 3744], 3                      # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n213_call_builtin_icon_α
.Lx341_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3528], rax
                        .section         .rodata
.Lrkfn343:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]                         # fn
                        lea              rsi, [rbp + 3504]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 104
                                                                                        je    n211_disjunction_β
                                                                                        jmp   n214_call_builtin_icon_α
n213_call_builtin_icon_β:
                                                                                        jmp   n211_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn345:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 14                                        # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n211_disjunction_β
                                                                                        jmp   n275_return_α
n214_call_builtin_icon_β:
                                                                                        jmp   n211_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 3728], 2                      # result
                        mov              dword ptr [rbp + 3732], 3
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n211_disjunction_as
n215_lit_string_β:
                                                                                        jmp   n211_disjunction_af
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n217_var_α
n216_var_β:
                                                                                        jmp   n211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n218_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n219_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_value_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3640], rax
                        mov              qword ptr [rbp + 3648], 0
                        mov              rdi, qword ptr [rbp + 3584]                    # callee
                        mov              rsi, qword ptr [rbp + 3592]                    # callee
                        lea              rdx, [rbp + 3616]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx354_7
                        lea              rcx, [rip + .Lx354_3]
                        lea              rdx, [rip + .Lx354_4]
                                                                                        jmp   rax
.Lx354_3:
                        mov              qword ptr [rbp + 3656], rsp
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax
                                                                                        jne   .Lx354_5
                        mov              qword ptr [rbp + 3648], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx354_2
.Lx354_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx354_2
.Lx354_4:
                        mov              qword ptr [rbp + 3656], rsp
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax
                                                                                        jne   .Lx354_6
                        mov              qword ptr [rbp + 3648], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx354_2
.Lx354_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx354_2
.Lx354_7:
                        mov              rdi, qword ptr [rbp + 3584]                    # callee
                        mov              rsi, qword ptr [rbp + 3592]                    # callee
                        lea              rdx, [rbp + 3616]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 3648]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx354_2:
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 104
                                                                                        je    n211_disjunction_af
                                                                                        jmp   n211_disjunction_as
n219_call_value_β:
                        mov              rax, qword ptr [rbp + 3648]
                        cmp              rax, 1
                                                                                        jne   .Lx354_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3656]
                                                                                        jmp   qword ptr [rsp]
.Lx354_8:
                        lea              rdi, [rbp + 3648]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n211_disjunction_af
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n211_disjunction_as
                                                                                        jmp   n211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 3456], 2                      # result
                        mov              dword ptr [rbp + 3460], 3
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n208_disjunction_as
n220_lit_string_β:
                                                                                        jmp   n208_disjunction_af
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n222_var_α
n221_var_β:
                                                                                        jmp   n208_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n224_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_value_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3368], rax
                        mov              qword ptr [rbp + 3376], 0
                        mov              rdi, qword ptr [rbp + 3312]                    # callee
                        mov              rsi, qword ptr [rbp + 3320]                    # callee
                        lea              rdx, [rbp + 3344]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx363_7
                        lea              rcx, [rip + .Lx363_3]
                        lea              rdx, [rip + .Lx363_4]
                                                                                        jmp   rax
.Lx363_3:
                        mov              qword ptr [rbp + 3384], rsp
                        mov              rax, qword ptr [rbp + 3376]
                        test             rax, rax
                                                                                        jne   .Lx363_5
                        mov              qword ptr [rbp + 3376], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx363_2
.Lx363_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx363_2
.Lx363_4:
                        mov              qword ptr [rbp + 3384], rsp
                        mov              rax, qword ptr [rbp + 3376]
                        test             rax, rax
                                                                                        jne   .Lx363_6
                        mov              qword ptr [rbp + 3376], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx363_2
.Lx363_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx363_2
.Lx363_7:
                        mov              rdi, qword ptr [rbp + 3312]                    # callee
                        mov              rsi, qword ptr [rbp + 3320]                    # callee
                        lea              rdx, [rbp + 3344]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 3376]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx363_2:
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 104
                                                                                        je    n208_disjunction_af
                                                                                        jmp   n208_disjunction_as
n224_call_value_β:
                        mov              rax, qword ptr [rbp + 3376]
                        cmp              rax, 1
                                                                                        jne   .Lx363_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3384]
                                                                                        jmp   qword ptr [rsp]
.Lx363_8:
                        lea              rdi, [rbp + 3376]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n208_disjunction_af
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n208_disjunction_as
                                                                                        jmp   n208_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 3184], 2                      # result
                        mov              dword ptr [rbp + 3188], 3
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n205_disjunction_as
n225_lit_string_β:
                                                                                        jmp   n205_disjunction_af
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n227_var_α
n226_var_β:
                                                                                        jmp   n205_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n228_var_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n229_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_value_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3096], rax
                        mov              qword ptr [rbp + 3104], 0
                        mov              rdi, qword ptr [rbp + 3040]                    # callee
                        mov              rsi, qword ptr [rbp + 3048]                    # callee
                        lea              rdx, [rbp + 3072]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx372_7
                        lea              rcx, [rip + .Lx372_3]
                        lea              rdx, [rip + .Lx372_4]
                                                                                        jmp   rax
.Lx372_3:
                        mov              qword ptr [rbp + 3112], rsp
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx372_5
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx372_2
.Lx372_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx372_2
.Lx372_4:
                        mov              qword ptr [rbp + 3112], rsp
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx372_6
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx372_2
.Lx372_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx372_2
.Lx372_7:
                        mov              rdi, qword ptr [rbp + 3040]                    # callee
                        mov              rsi, qword ptr [rbp + 3048]                    # callee
                        lea              rdx, [rbp + 3072]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 3104]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx372_2:
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 104
                                                                                        je    n205_disjunction_af
                                                                                        jmp   n205_disjunction_as
n229_call_value_β:
                        mov              rax, qword ptr [rbp + 3104]
                        cmp              rax, 1
                                                                                        jne   .Lx372_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3112]
                                                                                        jmp   qword ptr [rsp]
.Lx372_8:
                        lea              rdi, [rbp + 3104]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n205_disjunction_af
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n205_disjunction_as
                                                                                        jmp   n205_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rbp + 2912], 2                      # result
                        mov              dword ptr [rbp + 2916], 3
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n202_disjunction_as
n230_lit_string_β:
                                                                                        jmp   n202_disjunction_af
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n232_var_α
n231_var_β:
                                                                                        jmp   n202_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n234_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_value_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2824], rax
                        mov              qword ptr [rbp + 2832], 0
                        mov              rdi, qword ptr [rbp + 2768]                    # callee
                        mov              rsi, qword ptr [rbp + 2776]                    # callee
                        lea              rdx, [rbp + 2800]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx381_7
                        lea              rcx, [rip + .Lx381_3]
                        lea              rdx, [rip + .Lx381_4]
                                                                                        jmp   rax
.Lx381_3:
                        mov              qword ptr [rbp + 2840], rsp
                        mov              rax, qword ptr [rbp + 2832]
                        test             rax, rax
                                                                                        jne   .Lx381_5
                        mov              qword ptr [rbp + 2832], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx381_2
.Lx381_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx381_2
.Lx381_4:
                        mov              qword ptr [rbp + 2840], rsp
                        mov              rax, qword ptr [rbp + 2832]
                        test             rax, rax
                                                                                        jne   .Lx381_6
                        mov              qword ptr [rbp + 2832], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx381_2
.Lx381_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx381_2
.Lx381_7:
                        mov              rdi, qword ptr [rbp + 2768]                    # callee
                        mov              rsi, qword ptr [rbp + 2776]                    # callee
                        lea              rdx, [rbp + 2800]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 2832]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx381_2:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 104
                                                                                        je    n202_disjunction_af
                                                                                        jmp   n202_disjunction_as
n234_call_value_β:
                        mov              rax, qword ptr [rbp + 2832]
                        cmp              rax, 1
                                                                                        jne   .Lx381_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2840]
                                                                                        jmp   qword ptr [rsp]
.Lx381_8:
                        lea              rdi, [rbp + 2832]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n202_disjunction_af
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n202_disjunction_as
                                                                                        jmp   n202_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        mov              qword ptr [rbp + 2640], 2                      # result
                        mov              dword ptr [rbp + 2644], 3
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n199_disjunction_as
n235_lit_string_β:
                                                                                        jmp   n199_disjunction_af
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n237_var_α
n236_var_β:
                                                                                        jmp   n199_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n239_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_value_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2552], rax
                        mov              qword ptr [rbp + 2560], 0
                        mov              rdi, qword ptr [rbp + 2496]                    # callee
                        mov              rsi, qword ptr [rbp + 2504]                    # callee
                        lea              rdx, [rbp + 2528]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx390_7
                        lea              rcx, [rip + .Lx390_3]
                        lea              rdx, [rip + .Lx390_4]
                                                                                        jmp   rax
.Lx390_3:
                        mov              qword ptr [rbp + 2568], rsp
                        mov              rax, qword ptr [rbp + 2560]
                        test             rax, rax
                                                                                        jne   .Lx390_5
                        mov              qword ptr [rbp + 2560], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx390_2
.Lx390_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx390_2
.Lx390_4:
                        mov              qword ptr [rbp + 2568], rsp
                        mov              rax, qword ptr [rbp + 2560]
                        test             rax, rax
                                                                                        jne   .Lx390_6
                        mov              qword ptr [rbp + 2560], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx390_2
.Lx390_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx390_2
.Lx390_7:
                        mov              rdi, qword ptr [rbp + 2496]                    # callee
                        mov              rsi, qword ptr [rbp + 2504]                    # callee
                        lea              rdx, [rbp + 2528]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 2560]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx390_2:
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 104
                                                                                        je    n199_disjunction_af
                                                                                        jmp   n199_disjunction_as
n239_call_value_β:
                        mov              rax, qword ptr [rbp + 2560]
                        cmp              rax, 1
                                                                                        jne   .Lx390_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2568]
                                                                                        jmp   qword ptr [rsp]
.Lx390_8:
                        lea              rdi, [rbp + 2560]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n199_disjunction_af
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n199_disjunction_as
                                                                                        jmp   n199_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 2368], 2                      # result
                        mov              dword ptr [rbp + 2372], 3
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n196_disjunction_as
n240_lit_string_β:
                                                                                        jmp   n196_disjunction_af
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n242_var_α
n241_var_β:
                                                                                        jmp   n196_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n244_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_value_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2280], rax
                        mov              qword ptr [rbp + 2288], 0
                        mov              rdi, qword ptr [rbp + 2224]                    # callee
                        mov              rsi, qword ptr [rbp + 2232]                    # callee
                        lea              rdx, [rbp + 2256]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx399_7
                        lea              rcx, [rip + .Lx399_3]
                        lea              rdx, [rip + .Lx399_4]
                                                                                        jmp   rax
.Lx399_3:
                        mov              qword ptr [rbp + 2296], rsp
                        mov              rax, qword ptr [rbp + 2288]
                        test             rax, rax
                                                                                        jne   .Lx399_5
                        mov              qword ptr [rbp + 2288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_4:
                        mov              qword ptr [rbp + 2296], rsp
                        mov              rax, qword ptr [rbp + 2288]
                        test             rax, rax
                                                                                        jne   .Lx399_6
                        mov              qword ptr [rbp + 2288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_7:
                        mov              rdi, qword ptr [rbp + 2224]                    # callee
                        mov              rsi, qword ptr [rbp + 2232]                    # callee
                        lea              rdx, [rbp + 2256]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 2288]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx399_2:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 104
                                                                                        je    n196_disjunction_af
                                                                                        jmp   n196_disjunction_as
n244_call_value_β:
                        mov              rax, qword ptr [rbp + 2288]
                        cmp              rax, 1
                                                                                        jne   .Lx399_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2296]
                                                                                        jmp   qword ptr [rsp]
.Lx399_8:
                        lea              rdi, [rbp + 2288]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n196_disjunction_af
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n196_disjunction_as
                                                                                        jmp   n196_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 2096], 2                      # result
                        mov              dword ptr [rbp + 2100], 3
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n193_disjunction_as
n245_lit_string_β:
                                                                                        jmp   n193_disjunction_af
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n247_var_α
n246_var_β:
                                                                                        jmp   n193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n249_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_value_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2008], rax
                        mov              qword ptr [rbp + 2016], 0
                        mov              rdi, qword ptr [rbp + 1952]                    # callee
                        mov              rsi, qword ptr [rbp + 1960]                    # callee
                        lea              rdx, [rbp + 1984]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx408_7
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4]
                                                                                        jmp   rax
.Lx408_3:
                        mov              qword ptr [rbp + 2024], rsp
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax
                                                                                        jne   .Lx408_5
                        mov              qword ptr [rbp + 2016], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx408_2
.Lx408_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx408_2
.Lx408_4:
                        mov              qword ptr [rbp + 2024], rsp
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax
                                                                                        jne   .Lx408_6
                        mov              qword ptr [rbp + 2016], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx408_2
.Lx408_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx408_2
.Lx408_7:
                        mov              rdi, qword ptr [rbp + 1952]                    # callee
                        mov              rsi, qword ptr [rbp + 1960]                    # callee
                        lea              rdx, [rbp + 1984]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 2016]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx408_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 104
                                                                                        je    n193_disjunction_af
                                                                                        jmp   n193_disjunction_as
n249_call_value_β:
                        mov              rax, qword ptr [rbp + 2016]
                        cmp              rax, 1
                                                                                        jne   .Lx408_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2024]
                                                                                        jmp   qword ptr [rsp]
.Lx408_8:
                        lea              rdi, [rbp + 2016]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n193_disjunction_af
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n193_disjunction_as
                                                                                        jmp   n193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 1824], 2                      # result
                        mov              dword ptr [rbp + 1828], 3
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n190_disjunction_as
n250_lit_string_β:
                                                                                        jmp   n190_disjunction_af
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n252_var_α
n251_var_β:
                                                                                        jmp   n190_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n253_var_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n254_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_value_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1736], rax
                        mov              qword ptr [rbp + 1744], 0
                        mov              rdi, qword ptr [rbp + 1680]                    # callee
                        mov              rsi, qword ptr [rbp + 1688]                    # callee
                        lea              rdx, [rbp + 1712]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx417_7
                        lea              rcx, [rip + .Lx417_3]
                        lea              rdx, [rip + .Lx417_4]
                                                                                        jmp   rax
.Lx417_3:
                        mov              qword ptr [rbp + 1752], rsp
                        mov              rax, qword ptr [rbp + 1744]
                        test             rax, rax
                                                                                        jne   .Lx417_5
                        mov              qword ptr [rbp + 1744], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx417_2
.Lx417_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx417_2
.Lx417_4:
                        mov              qword ptr [rbp + 1752], rsp
                        mov              rax, qword ptr [rbp + 1744]
                        test             rax, rax
                                                                                        jne   .Lx417_6
                        mov              qword ptr [rbp + 1744], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx417_2
.Lx417_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx417_2
.Lx417_7:
                        mov              rdi, qword ptr [rbp + 1680]                    # callee
                        mov              rsi, qword ptr [rbp + 1688]                    # callee
                        lea              rdx, [rbp + 1712]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 1744]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx417_2:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 104
                                                                                        je    n190_disjunction_af
                                                                                        jmp   n190_disjunction_as
n254_call_value_β:
                        mov              rax, qword ptr [rbp + 1744]
                        cmp              rax, 1
                                                                                        jne   .Lx417_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1752]
                                                                                        jmp   qword ptr [rsp]
.Lx417_8:
                        lea              rdi, [rbp + 1744]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n190_disjunction_af
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n190_disjunction_as
                                                                                        jmp   n190_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 3
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n187_disjunction_as
n255_lit_string_β:
                                                                                        jmp   n187_disjunction_af
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n257_var_α
n256_var_β:
                                                                                        jmp   n187_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n258_var_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n259_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_value_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1464], rax
                        mov              qword ptr [rbp + 1472], 0
                        mov              rdi, qword ptr [rbp + 1408]                    # callee
                        mov              rsi, qword ptr [rbp + 1416]                    # callee
                        lea              rdx, [rbp + 1440]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx426_7
                        lea              rcx, [rip + .Lx426_3]
                        lea              rdx, [rip + .Lx426_4]
                                                                                        jmp   rax
.Lx426_3:
                        mov              qword ptr [rbp + 1480], rsp
                        mov              rax, qword ptr [rbp + 1472]
                        test             rax, rax
                                                                                        jne   .Lx426_5
                        mov              qword ptr [rbp + 1472], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_4:
                        mov              qword ptr [rbp + 1480], rsp
                        mov              rax, qword ptr [rbp + 1472]
                        test             rax, rax
                                                                                        jne   .Lx426_6
                        mov              qword ptr [rbp + 1472], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_7:
                        mov              rdi, qword ptr [rbp + 1408]                    # callee
                        mov              rsi, qword ptr [rbp + 1416]                    # callee
                        lea              rdx, [rbp + 1440]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 1472]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx426_2:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n187_disjunction_af
                                                                                        jmp   n187_disjunction_as
n259_call_value_β:
                        mov              rax, qword ptr [rbp + 1472]
                        cmp              rax, 1
                                                                                        jne   .Lx426_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1480]
                                                                                        jmp   qword ptr [rsp]
.Lx426_8:
                        lea              rdi, [rbp + 1472]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n187_disjunction_af
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n187_disjunction_as
                                                                                        jmp   n187_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 1280], 2                      # result
                        mov              dword ptr [rbp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n184_disjunction_as
n260_lit_string_β:
                                                                                        jmp   n184_disjunction_af
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n262_var_α
n261_var_β:
                                                                                        jmp   n184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n264_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_value_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              qword ptr [rbp + 1200], 0
                        mov              rdi, qword ptr [rbp + 1136]                    # callee
                        mov              rsi, qword ptr [rbp + 1144]                    # callee
                        lea              rdx, [rbp + 1168]                              # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx435_7
                        lea              rcx, [rip + .Lx435_3]
                        lea              rdx, [rip + .Lx435_4]
                                                                                        jmp   rax
.Lx435_3:
                        mov              qword ptr [rbp + 1208], rsp
                        mov              rax, qword ptr [rbp + 1200]
                        test             rax, rax
                                                                                        jne   .Lx435_5
                        mov              qword ptr [rbp + 1200], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx435_2
.Lx435_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx435_2
.Lx435_4:
                        mov              qword ptr [rbp + 1208], rsp
                        mov              rax, qword ptr [rbp + 1200]
                        test             rax, rax
                                                                                        jne   .Lx435_6
                        mov              qword ptr [rbp + 1200], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx435_2
.Lx435_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx435_2
.Lx435_7:
                        mov              rdi, qword ptr [rbp + 1136]                    # callee
                        mov              rsi, qword ptr [rbp + 1144]                    # callee
                        lea              rdx, [rbp + 1168]                              # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 1200]                               # hslot
                        call             rt_call_value_gen_h@PLT
.Lx435_2:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n184_disjunction_af
                                                                                        jmp   n184_disjunction_as
n264_call_value_β:
                        mov              rax, qword ptr [rbp + 1200]
                        cmp              rax, 1
                                                                                        jne   .Lx435_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1208]
                                                                                        jmp   qword ptr [rsp]
.Lx435_8:
                        lea              rdi, [rbp + 1200]                              # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n184_disjunction_af
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n184_disjunction_as
                                                                                        jmp   n184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 3
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n181_disjunction_as
n265_lit_string_β:
                                                                                        jmp   n181_disjunction_af
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n267_var_α
n266_var_β:
                                                                                        jmp   n181_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n268_var_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n269_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_value_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              qword ptr [rbp + 928], 0
                        mov              rdi, qword ptr [rbp + 864]                     # callee
                        mov              rsi, qword ptr [rbp + 872]                     # callee
                        lea              rdx, [rbp + 896]                               # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx444_7
                        lea              rcx, [rip + .Lx444_3]
                        lea              rdx, [rip + .Lx444_4]
                                                                                        jmp   rax
.Lx444_3:
                        mov              qword ptr [rbp + 936], rsp
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax
                                                                                        jne   .Lx444_5
                        mov              qword ptr [rbp + 928], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx444_2
.Lx444_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx444_2
.Lx444_4:
                        mov              qword ptr [rbp + 936], rsp
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax
                                                                                        jne   .Lx444_6
                        mov              qword ptr [rbp + 928], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx444_2
.Lx444_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx444_2
.Lx444_7:
                        mov              rdi, qword ptr [rbp + 864]                     # callee
                        mov              rsi, qword ptr [rbp + 872]                     # callee
                        lea              rdx, [rbp + 896]                               # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 928]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx444_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n181_disjunction_af
                                                                                        jmp   n181_disjunction_as
n269_call_value_β:
                        mov              rax, qword ptr [rbp + 928]
                        cmp              rax, 1
                                                                                        jne   .Lx444_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 936]
                                                                                        jmp   qword ptr [rsp]
.Lx444_8:
                        lea              rdi, [rbp + 928]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n181_disjunction_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n181_disjunction_as
                                                                                        jmp   n181_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 3
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n178_disjunction_as
n270_lit_string_β:
                                                                                        jmp   n178_disjunction_af
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n272_var_α
n271_var_β:
                                                                                        jmp   n178_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n274_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_value_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 648], rax
                        mov              qword ptr [rbp + 656], 0
                        mov              rdi, qword ptr [rbp + 592]                     # callee
                        mov              rsi, qword ptr [rbp + 600]                     # callee
                        lea              rdx, [rbp + 624]                               # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx453_7
                        lea              rcx, [rip + .Lx453_3]
                        lea              rdx, [rip + .Lx453_4]
                                                                                        jmp   rax
.Lx453_3:
                        mov              qword ptr [rbp + 664], rsp
                        mov              rax, qword ptr [rbp + 656]
                        test             rax, rax
                                                                                        jne   .Lx453_5
                        mov              qword ptr [rbp + 656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx453_2
.Lx453_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx453_2
.Lx453_4:
                        mov              qword ptr [rbp + 664], rsp
                        mov              rax, qword ptr [rbp + 656]
                        test             rax, rax
                                                                                        jne   .Lx453_6
                        mov              qword ptr [rbp + 656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx453_2
.Lx453_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx453_2
.Lx453_7:
                        mov              rdi, qword ptr [rbp + 592]                     # callee
                        mov              rsi, qword ptr [rbp + 600]                     # callee
                        lea              rdx, [rbp + 624]                               # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 656]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx453_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n178_disjunction_af
                                                                                        jmp   n178_disjunction_as
n274_call_value_β:
                        mov              rax, qword ptr [rbp + 656]
                        cmp              rax, 1
                                                                                        jne   .Lx453_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 664]
                                                                                        jmp   qword ptr [rsp]
.Lx453_8:
                        lea              rdi, [rbp + 656]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n178_disjunction_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n178_disjunction_as
                                                                                        jmp   n178_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n275_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 3408
                                                                                        jmp   proc_binop_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_binop_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_binop_β:
                                                                                        jmp   proc_binop_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_binop_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_binop_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "toby"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_toby_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_toby_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "unop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_unop_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "binop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_binop_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3760
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
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
n455_lit_integer_α:
                        sub              rsp, 192
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
                        mov              qword ptr [rbp + 2032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n456_assign_α
.Lx482_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n456_assign_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n457_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 3                      # result
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n458_assign_α
.Lx484_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n458_assign_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n459_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_charset_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], -1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n460_assign_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n460_assign_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n461_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:
                        mov              qword ptr [rbp + 1984], 2                      # result
                        mov              dword ptr [rbp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n462_assign_α
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "9"
#-----------------------------------------------------------------------------------------------------------------------
n462_assign_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n463_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:
                        mov              qword ptr [rbp + 1888], 2                      # result
                        mov              dword ptr [rbp + 1892], 6
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n464_iterate_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "+-*!/\\"
#-----------------------------------------------------------------------------------------------------------------------
n464_iterate_α:
                        mov              qword ptr [rbp + 1872], 0
.Lx492_0:
                        mov              rdi, qword ptr [rbp + 1888]                    # obj
                        mov              rsi, qword ptr [rbp + 1896]                    # obj
                        mov              rdx, qword ptr [rbp + 1872]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx492_240
                        add              rsp, 192
                                                                                        jmp   n470_call_builtin_icon_α
.Lx492_240:
                                                                                        jmp   n465_var_α
n464_iterate_β:
                        inc              qword ptr [rbp + 1872]
                                                                                        jmp   .Lx492_0
#-----------------------------------------------------------------------------------------------------------------------
n465_var_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n466_var_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n467_var_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n468_var_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n469_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx502_20
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx502_21
.Lx502_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1856]                    # v
                        mov              rdx, qword ptr [rbp + 1864]                    # v
                        call             rt_arg_stage@PLT
.Lx502_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx502_22
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx502_23
.Lx502_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1904]                    # v
                        mov              rdx, qword ptr [rbp + 1912]                    # v
                        call             rt_arg_stage@PLT
.Lx502_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx502_24
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx502_25
.Lx502_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1920]                    # v
                        mov              rdx, qword ptr [rbp + 1928]                    # v
                        call             rt_arg_stage@PLT
.Lx502_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx502_26
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx502_27
.Lx502_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1936]                    # v
                        mov              rdx, qword ptr [rbp + 1944]                    # v
                        call             rt_arg_stage@PLT
.Lx502_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx502_28
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx502_29
.Lx502_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 1952]                    # v
                        mov              rdx, qword ptr [rbp + 1960]                    # v
                        call             rt_arg_stage@PLT
.Lx502_29:
                        mov              edi, 1                                         # idx
                        mov              esi, 5                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx502_1
                        lea              rcx, [rip + .Lx502_3]
                        lea              rdx, [rip + .Lx502_4]
                                                                                        jmp   rax
.Lx502_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx502_2
.Lx502_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx502_2
.Lx502_1:
                        call             rt_faildescr@PLT
.Lx502_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n464_iterate_β
                                                                                        jmp   n464_iterate_β
n469_call_proc_staged_β:
                                                                                        jmp   n464_iterate_β
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "unop"
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn504:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn504]                         # fn
                        lea              rsi, [rbp + 1728]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n471_disjunction_α
                                                                                        jmp   n471_disjunction_α
n470_call_builtin_icon_β:
                                                                                        jmp   n471_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n471_disjunction_α:
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0
                        mov              dword ptr [rbp + 1536], 0
                                                                                        jmp   n480_lit_string_α
n471_disjunction_as:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        jne   .Lx506_0
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n472_var_α
.Lx506_0:
                        cmp              eax, 1
                                                                                        jne   .Lx506_1
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n472_var_α
.Lx506_1:
                        cmp              eax, 2
                                                                                        jne   .Lx506_2
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n472_var_α
.Lx506_2:
                        cmp              eax, 3
                                                                                        jne   .Lx506_3
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n472_var_α
.Lx506_3:
                                                                                        jmp   n472_var_α
n471_disjunction_β:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        je    n481_iterate_β
                        cmp              eax, 1
                                                                                        je    n471_disjunction_af
                        cmp              eax, 2
                                                                                        je    n471_disjunction_af
                                                                                        jmp   n471_disjunction_af
n471_disjunction_af:
                        add              dword ptr [rbp + 1536], 1
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 1
                                                                                        je    n479_lit_string_α
                        cmp              eax, 2
                                                                                        je    n478_lit_string_α
                        cmp              eax, 3
                                                                                        je    n477_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n473_var_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n474_var_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n475_var_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n476_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_20
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx516_21
.Lx516_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1520]                    # v
                        mov              rdx, qword ptr [rbp + 1528]                    # v
                        call             rt_arg_stage@PLT
.Lx516_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_22
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx516_23
.Lx516_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1648]                    # v
                        mov              rdx, qword ptr [rbp + 1656]                    # v
                        call             rt_arg_stage@PLT
.Lx516_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_24
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx516_25
.Lx516_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1664]                    # v
                        mov              rdx, qword ptr [rbp + 1672]                    # v
                        call             rt_arg_stage@PLT
.Lx516_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_26
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx516_27
.Lx516_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1680]                    # v
                        mov              rdx, qword ptr [rbp + 1688]                    # v
                        call             rt_arg_stage@PLT
.Lx516_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_28
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx516_29
.Lx516_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 1696]                    # v
                        mov              rdx, qword ptr [rbp + 1704]                    # v
                        call             rt_arg_stage@PLT
.Lx516_29:
                        mov              edi, 2                                         # idx
                        mov              esi, 5                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx516_1
                        lea              rcx, [rip + .Lx516_3]
                        lea              rdx, [rip + .Lx516_4]
                                                                                        jmp   rax
.Lx516_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx516_2
.Lx516_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx516_2
.Lx516_1:
                        call             rt_faildescr@PLT
.Lx516_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 104
                                                                                        je    n471_disjunction_β
                                                                                        jmp   n471_disjunction_β
n476_call_proc_staged_β:
                                                                                        jmp   n471_disjunction_β
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "binop"
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 2
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n471_disjunction_as
n477_lit_string_β:
                                                                                        jmp   n471_disjunction_af
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          ">>"
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 1616], 2                      # result
                        mov              dword ptr [rbp + 1620], 2
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n471_disjunction_as
n478_lit_string_β:
                                                                                        jmp   n471_disjunction_af
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:
                        mov              qword ptr [rbp + 1600], 2                      # result
                        mov              dword ptr [rbp + 1604], 2
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n471_disjunction_as
n479_lit_string_β:
                                                                                        jmp   n471_disjunction_af
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "<<"
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 9
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n481_iterate_α
n480_lit_string_β:
                                                                                        jmp   n471_disjunction_af
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "+-*/%^<=>"
#-----------------------------------------------------------------------------------------------------------------------
n481_iterate_α:
                        mov              qword ptr [rbp + 1568], 0
.Lx522_0:
                        mov              rdi, qword ptr [rbp + 1584]                    # obj
                        mov              rsi, qword ptr [rbp + 1592]                    # obj
                        mov              rdx, qword ptr [rbp + 1568]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              rax, 99
                                                                                        je    n471_disjunction_af
                                                                                        jmp   n471_disjunction_as
n481_iterate_β:
                        inc              qword ptr [rbp + 1568]
                                                                                        jmp   .Lx522_0
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
