                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_try_α
proc_try_α:
proc_try_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 784
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn29:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]                          # fn
                        lea              rsi, [rbp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n3_disjunction_α
                                                                                        jmp   n2_assign_α
n1_call_builtin_icon_β:
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n20_var_α
n3_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx32_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_try_ω
.Lx32_0:
                        cmp              eax, 1
                                                                                        jne   .Lx32_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_try_ω
.Lx32_1:
                                                                                        jmp   proc_try_ω
n3_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_try_ω
                                                                                        jmp   n4_disjunction_β
n3_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n4_disjunction_α
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n12_var_α
n4_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx34_0
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n3_disjunction_as
.Lx34_0:
                        cmp              eax, 1
                                                                                        jne   .Lx34_1
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n3_disjunction_as
.Lx34_1:
                                                                                        jmp   n3_disjunction_as
n4_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        je    proc_try_ω
                                                                                        jmp   proc_try_ω
n4_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 1
                                                                                        je    n5_var_α
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n6_call_builtin_icon_α
n5_var_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn38:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]                          # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    proc_try_ω
                                                                                        jmp   n7_lit_string_α
n6_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n8_var_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          ": got "
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 15
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n10_var_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          ", but expected "
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn46:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]                          # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    proc_try_ω
                                                                                        jmp   n4_disjunction_as
n11_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n13_var_α
n12_var_β:
                                                                                        jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n14_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_test_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lhs
                        mov              rsi, qword ptr [rbp + 40]                      # lhs
                        mov              rdx, qword ptr [rbp + 832]                     # rhs
                        mov              rcx, qword ptr [rbp + 840]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n4_disjunction_af
                        mov              rdi, qword ptr [rbp + 832]                     # d
                        mov              rsi, qword ptr [rbp + 840]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn55:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]                          # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    proc_try_ω
                                                                                        jmp   n17_lit_string_α
n16_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 2
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n18_var_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn60:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]                          # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    proc_try_ω
                                                                                        jmp   n4_disjunction_as
n19_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n21_unop_test_α
n20_var_β:
                                                                                        jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n21_unop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 104
                                                                                        je    n3_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n3_disjunction_af
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn67:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]                          # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    proc_try_ω
                                                                                        jmp   n24_lit_string_α
n23_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 19
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n25_call_builtin_icon_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          ": failed to convert"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn70:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_try_ω
                                                                                        jmp   n3_disjunction_as
n25_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_try_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_try_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_try_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_try_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_try_dcα:
                        pop              r11
                        sub              rsp, 912
                        mov              qword ptr [rsp + 888], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 864], r11
                        lea              rax, [rip + .Lx71_2]
                        mov              qword ptr [rbp + 872], rax
                        lea              rax, [rip + .Lx71_3]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 832                                       # suffix_off
                        mov              edx, 864                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_try_α_body
.Lx71_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -896
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx71_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -896
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "try"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_try_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 848
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_try_dcα]
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
n72_lit_string_α:
                        sub              rsp, 4064
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
                        mov              qword ptr [rsp + 3408], 0
                        mov              qword ptr [rsp + 3416], 0
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              qword ptr [rsp + 3472], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3496], 0
                        mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              qword ptr [rsp + 3520], 0
                        mov              qword ptr [rsp + 3528], 0
                        mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        mov              qword ptr [rsp + 3584], 0
                        mov              qword ptr [rsp + 3592], 0
                        mov              qword ptr [rsp + 3600], 0
                        mov              qword ptr [rsp + 3608], 0
                        mov              qword ptr [rsp + 3616], 0
                        mov              qword ptr [rsp + 3624], 0
                        mov              qword ptr [rsp + 3632], 0
                        mov              qword ptr [rsp + 3640], 0
                        mov              qword ptr [rsp + 3648], 0
                        mov              qword ptr [rsp + 3656], 0
                        mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              qword ptr [rsp + 3680], 0
                        mov              qword ptr [rsp + 3688], 0
                        mov              qword ptr [rsp + 3696], 0
                        mov              qword ptr [rsp + 3704], 0
                        mov              qword ptr [rsp + 3712], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              qword ptr [rsp + 3728], 0
                        mov              qword ptr [rsp + 3736], 0
                        mov              qword ptr [rsp + 3744], 0
                        mov              qword ptr [rsp + 3752], 0
                        mov              qword ptr [rsp + 3760], 0
                        mov              qword ptr [rsp + 3768], 0
                        mov              qword ptr [rsp + 3776], 0
                        mov              qword ptr [rsp + 3784], 0
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              qword ptr [rsp + 3840], 0
                        mov              qword ptr [rsp + 3848], 0
                        mov              qword ptr [rsp + 3856], 0
                        mov              qword ptr [rsp + 3864], 0
                        mov              qword ptr [rsp + 3872], 0
                        mov              qword ptr [rsp + 3880], 0
                        mov              qword ptr [rsp + 3888], 0
                        mov              qword ptr [rsp + 3896], 0
                        mov              qword ptr [rsp + 3904], 0
                        mov              qword ptr [rsp + 3912], 0
                        mov              qword ptr [rsp + 3920], 0
                        mov              qword ptr [rsp + 3928], 0
                        mov              qword ptr [rsp + 3936], 0
                        mov              qword ptr [rsp + 3944], 0
                        mov              qword ptr [rsp + 3952], 0
                        mov              qword ptr [rsp + 3960], 0
                        mov              qword ptr [rsp + 3968], 0
                        mov              qword ptr [rsp + 3976], 0
                        mov              qword ptr [rsp + 3984], 0
                        mov              qword ptr [rsp + 3992], 0
                        mov              qword ptr [rsp + 4000], 0
                        mov              qword ptr [rsp + 4008], 0
                        mov              qword ptr [rsp + 4016], 0
                        mov              qword ptr [rsp + 4024], 0
                        mov              qword ptr [rsp + 4032], 0
                        mov              qword ptr [rsp + 4040], 0
                        mov              qword ptr [rsp + 4048], 0
                        mov              qword ptr [rsp + 4056], 0
                        mov              qword ptr [rsp + 4032], 2                      # result
                        mov              dword ptr [rsp + 4036], 8
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 4040], rax
                                                                                        jmp   n73_lit_integer_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "2r101111"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rsp + 4048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 4056], rax
                                                                                        jmp   n74_call_proc_staged_α
.Lx202_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α:
                        lea              rsi, [rsp + 4032]
                        lea              rdx, [rsp + 4048]
                        call             proc_try_dcα
                                                                                        jmp   .Lx204_2
.Lx204_2:
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              eax, 104
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n75_lit_string_α
n74_call_proc_staged_β:
                                                                                        jmp   n75_lit_string_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rsp + 3936], 2                      # result
                        mov              dword ptr [rsp + 3940], 5
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 3944], rax
                                                                                        jmp   n76_lit_integer_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "3r201"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 3952], 3                      # result
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 3960], rax
                                                                                        jmp   n77_call_proc_staged_α
.Lx206_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α:
                        lea              rsi, [rsp + 3936]
                        lea              rdx, [rsp + 3952]
                        call             proc_try_dcα
                                                                                        jmp   .Lx208_2
.Lx208_2:
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              eax, 104
                                                                                        je    n78_lit_string_α
                                                                                        jmp   n78_lit_string_α
n77_call_proc_staged_β:
                                                                                        jmp   n78_lit_string_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rsp + 3840], 2                      # result
                        mov              dword ptr [rsp + 3844], 7
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 3848], rax
                                                                                        jmp   n79_lit_integer_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "4r11213"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rsp + 3856], 3                      # result
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 3864], rax
                                                                                        jmp   n80_call_proc_staged_α
.Lx210_0:
                        .quad            359
#-----------------------------------------------------------------------------------------------------------------------
n80_call_proc_staged_α:
                        lea              rsi, [rsp + 3840]
                        lea              rdx, [rsp + 3856]
                        call             proc_try_dcα
                                                                                        jmp   .Lx212_2
.Lx212_2:
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              eax, 104
                                                                                        je    n81_lit_string_α
                                                                                        jmp   n81_lit_string_α
n80_call_proc_staged_β:
                                                                                        jmp   n81_lit_string_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rsp + 3744], 2                      # result
                        mov              dword ptr [rsp + 3748], 6
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 3752], rax
                                                                                        jmp   n82_lit_integer_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "5r1234"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rsp + 3760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 3768], rax
                                                                                        jmp   n83_call_proc_staged_α
.Lx214_0:
                        .quad            194
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α:
                        lea              rsi, [rsp + 3744]
                        lea              rdx, [rsp + 3760]
                        call             proc_try_dcα
                                                                                        jmp   .Lx216_2
.Lx216_2:
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              eax, 104
                                                                                        je    n84_lit_string_α
                                                                                        jmp   n84_lit_string_α
n83_call_proc_staged_β:
                                                                                        jmp   n84_lit_string_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rsp + 3648], 2                      # result
                        mov              dword ptr [rsp + 3652], 6
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 3656], rax
                                                                                        jmp   n85_lit_integer_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "6r1253"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rsp + 3664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 3672], rax
                                                                                        jmp   n86_call_proc_staged_α
.Lx218_0:
                        .quad            321
#-----------------------------------------------------------------------------------------------------------------------
n86_call_proc_staged_α:
                        lea              rsi, [rsp + 3648]
                        lea              rdx, [rsp + 3664]
                        call             proc_try_dcα
                                                                                        jmp   .Lx220_2
.Lx220_2:
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              eax, 104
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n87_lit_string_α
n86_call_proc_staged_β:
                                                                                        jmp   n87_lit_string_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rsp + 3552], 2                      # result
                        mov              dword ptr [rsp + 3556], 6
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 3560], rax
                                                                                        jmp   n88_lit_integer_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "7r1253"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rsp + 3568], 3                      # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 3576], rax
                                                                                        jmp   n89_call_proc_staged_α
.Lx222_0:
                        .quad            479
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α:
                        lea              rsi, [rsp + 3552]
                        lea              rdx, [rsp + 3568]
                        call             proc_try_dcα
                                                                                        jmp   .Lx224_2
.Lx224_2:
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              eax, 104
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n90_lit_string_α
n89_call_proc_staged_β:
                                                                                        jmp   n90_lit_string_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rsp + 3456], 2                      # result
                        mov              dword ptr [rsp + 3460], 6
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 3464], rax
                                                                                        jmp   n91_lit_integer_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "8r1257"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rsp + 3472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 3480], rax
                                                                                        jmp   n92_call_proc_staged_α
.Lx226_0:
                        .quad            687
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α:
                        lea              rsi, [rsp + 3456]
                        lea              rdx, [rsp + 3472]
                        call             proc_try_dcα
                                                                                        jmp   .Lx228_2
.Lx228_2:
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              eax, 104
                                                                                        je    n93_lit_string_α
                                                                                        jmp   n93_lit_string_α
n92_call_proc_staged_β:
                                                                                        jmp   n93_lit_string_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rsp + 3360], 2                      # result
                        mov              dword ptr [rsp + 3364], 6
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 3368], rax
                                                                                        jmp   n94_lit_integer_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "9r1257"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rsp + 3376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 3384], rax
                                                                                        jmp   n95_call_proc_staged_α
.Lx230_0:
                        .quad            943
#-----------------------------------------------------------------------------------------------------------------------
n95_call_proc_staged_α:
                        lea              rsi, [rsp + 3360]
                        lea              rdx, [rsp + 3376]
                        call             proc_try_dcα
                                                                                        jmp   .Lx232_2
.Lx232_2:
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n96_lit_string_α
                                                                                        jmp   n96_lit_string_α
n95_call_proc_staged_β:
                                                                                        jmp   n96_lit_string_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 3264], 2                      # result
                        mov              dword ptr [rsp + 3268], 7
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 3272], rax
                                                                                        jmp   n97_lit_integer_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "10r1257"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rsp + 3280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 3288], rax
                                                                                        jmp   n98_call_proc_staged_α
.Lx234_0:
                        .quad            1257
#-----------------------------------------------------------------------------------------------------------------------
n98_call_proc_staged_α:
                        lea              rsi, [rsp + 3264]
                        lea              rdx, [rsp + 3280]
                        call             proc_try_dcα
                                                                                        jmp   .Lx236_2
.Lx236_2:
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              eax, 104
                                                                                        je    n99_lit_string_α
                                                                                        jmp   n99_lit_string_α
n98_call_proc_staged_β:
                                                                                        jmp   n99_lit_string_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rsp + 3168], 2                      # result
                        mov              dword ptr [rsp + 3172], 7
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 3176], rax
                                                                                        jmp   n100_lit_integer_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "11r1257"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rsp + 3184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 3192], rax
                                                                                        jmp   n101_call_proc_staged_α
.Lx238_0:
                        .quad            1635
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        lea              rsi, [rsp + 3168]
                        lea              rdx, [rsp + 3184]
                        call             proc_try_dcα
                                                                                        jmp   .Lx240_2
.Lx240_2:
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              eax, 104
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n102_lit_string_α
n101_call_proc_staged_β:
                                                                                        jmp   n102_lit_string_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rsp + 3072], 2                      # result
                        mov              dword ptr [rsp + 3076], 7
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 3080], rax
                                                                                        jmp   n103_lit_integer_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "12r1257"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rsp + 3088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 3096], rax
                                                                                        jmp   n104_call_proc_staged_α
.Lx242_0:
                        .quad            2083
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rsp + 3072]
                        lea              rdx, [rsp + 3088]
                        call             proc_try_dcα
                                                                                        jmp   .Lx244_2
.Lx244_2:
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              eax, 104
                                                                                        je    n105_lit_string_α
                                                                                        jmp   n105_lit_string_α
n104_call_proc_staged_β:
                                                                                        jmp   n105_lit_string_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rsp + 2976], 2                      # result
                        mov              dword ptr [rsp + 2980], 7
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 2984], rax
                                                                                        jmp   n106_lit_integer_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "13r1257"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:
                        mov              qword ptr [rsp + 2992], 3                      # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 3000], rax
                                                                                        jmp   n107_call_proc_staged_α
.Lx246_0:
                        .quad            2607
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        lea              rsi, [rsp + 2976]
                        lea              rdx, [rsp + 2992]
                        call             proc_try_dcα
                                                                                        jmp   .Lx248_2
.Lx248_2:
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104
                                                                                        je    n108_lit_string_α
                                                                                        jmp   n108_lit_string_α
n107_call_proc_staged_β:
                                                                                        jmp   n108_lit_string_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rsp + 2880], 2                      # result
                        mov              dword ptr [rsp + 2884], 7
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 2888], rax
                                                                                        jmp   n109_lit_integer_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "19r1257"
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:
                        mov              qword ptr [rsp + 2896], 3                      # result
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 2904], rax
                                                                                        jmp   n110_call_proc_staged_α
.Lx250_0:
                        .quad            7683
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        lea              rsi, [rsp + 2880]
                        lea              rdx, [rsp + 2896]
                        call             proc_try_dcα
                                                                                        jmp   .Lx252_2
.Lx252_2:
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 104
                                                                                        je    n111_lit_string_α
                                                                                        jmp   n111_lit_string_α
n110_call_proc_staged_β:
                                                                                        jmp   n111_lit_string_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rsp + 2784], 2                      # result
                        mov              dword ptr [rsp + 2788], 7
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 2792], rax
                                                                                        jmp   n112_lit_integer_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "23r1257"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rsp + 2800], 3                      # result
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 2808], rax
                                                                                        jmp   n113_call_proc_staged_α
.Lx254_0:
                        .quad            13347
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        lea              rsi, [rsp + 2784]
                        lea              rdx, [rsp + 2800]
                        call             proc_try_dcα
                                                                                        jmp   .Lx256_2
.Lx256_2:
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              eax, 104
                                                                                        je    n114_lit_string_α
                                                                                        jmp   n114_lit_string_α
n113_call_proc_staged_β:
                                                                                        jmp   n114_lit_string_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rsp + 2688], 2                      # result
                        mov              dword ptr [rsp + 2692], 7
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 2696], rax
                                                                                        jmp   n115_lit_integer_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "29r1257"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rsp + 2704], 3                      # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 2712], rax
                                                                                        jmp   n116_call_proc_staged_α
.Lx258_0:
                        .quad            26223
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        lea              rsi, [rsp + 2688]
                        lea              rdx, [rsp + 2704]
                        call             proc_try_dcα
                                                                                        jmp   .Lx260_2
.Lx260_2:
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              eax, 104
                                                                                        je    n117_lit_string_α
                                                                                        jmp   n117_lit_string_α
n116_call_proc_staged_β:
                                                                                        jmp   n117_lit_string_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rsp + 2592], 2                      # result
                        mov              dword ptr [rsp + 2596], 7
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 2600], rax
                                                                                        jmp   n118_lit_integer_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "31r1257"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rsp + 2608], 3                      # result
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 2616], rax
                                                                                        jmp   n119_call_proc_staged_α
.Lx262_0:
                        .quad            31875
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        lea              rsi, [rsp + 2592]
                        lea              rdx, [rsp + 2608]
                        call             proc_try_dcα
                                                                                        jmp   .Lx264_2
.Lx264_2:
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              eax, 104
                                                                                        je    n120_lit_string_α
                                                                                        jmp   n120_lit_string_α
n119_call_proc_staged_β:
                                                                                        jmp   n120_lit_string_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rsp + 2496], 2                      # result
                        mov              dword ptr [rsp + 2500], 7
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 2504], rax
                                                                                        jmp   n121_lit_integer_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "36r1257"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rsp + 2512], 3                      # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 2520], rax
                                                                                        jmp   n122_call_proc_staged_α
.Lx266_0:
                        .quad            49435
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        lea              rsi, [rsp + 2496]
                        lea              rdx, [rsp + 2512]
                        call             proc_try_dcα
                                                                                        jmp   .Lx268_2
.Lx268_2:
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n123_lit_string_α
                                                                                        jmp   n123_lit_string_α
n122_call_proc_staged_β:
                                                                                        jmp   n123_lit_string_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rsp + 2400], 2                      # result
                        mov              dword ptr [rsp + 2404], 13
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 2408], rax
                                                                                        jmp   n124_lit_integer_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "8r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rsp + 2416], 3                      # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 2424], rax
                                                                                        jmp   n125_call_proc_staged_α
.Lx270_0:
                        .quad            8333080042
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        lea              rsi, [rsp + 2400]
                        lea              rdx, [rsp + 2416]
                        call             proc_try_dcα
                                                                                        jmp   .Lx272_2
.Lx272_2:
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n126_lit_string_α
                                                                                        jmp   n126_lit_string_α
n125_call_proc_staged_β:
                                                                                        jmp   n126_lit_string_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rsp + 2304], 2                      # result
                        mov              dword ptr [rsp + 2308], 13
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 2312], rax
                                                                                        jmp   n127_lit_integer_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "9r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rsp + 2320], 3                      # result
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 2328], rax
                                                                                        jmp   n128_call_proc_staged_α
.Lx274_0:
                        .quad            26758135154
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        lea              rsi, [rsp + 2304]
                        lea              rdx, [rsp + 2320]
                        call             proc_try_dcα
                                                                                        jmp   .Lx276_2
.Lx276_2:
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              eax, 104
                                                                                        je    n129_lit_string_α
                                                                                        jmp   n129_lit_string_α
n128_call_proc_staged_β:
                                                                                        jmp   n129_lit_string_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rsp + 2208], 2                      # result
                        mov              dword ptr [rsp + 2212], 14
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 2216], rax
                                                                                        jmp   n130_lit_integer_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "10r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rsp + 2224], 3                      # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 2232], rax
                                                                                        jmp   n131_call_proc_staged_α
.Lx278_0:
                        .quad            76054132752
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        lea              rsi, [rsp + 2208]
                        lea              rdx, [rsp + 2224]
                        call             proc_try_dcα
                                                                                        jmp   .Lx280_2
.Lx280_2:
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n132_lit_string_α
                                                                                        jmp   n132_lit_string_α
n131_call_proc_staged_β:
                                                                                        jmp   n132_lit_string_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rsp + 2112], 2                      # result
                        mov              dword ptr [rsp + 2116], 14
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 2120], rax
                                                                                        jmp   n133_lit_integer_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "11r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rsp + 2128], 3                      # result
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 2136], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx282_0:
                        .quad            195814388992
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        lea              rsi, [rsp + 2112]
                        lea              rdx, [rsp + 2128]
                        call             proc_try_dcα
                                                                                        jmp   .Lx284_2
.Lx284_2:
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n135_lit_string_α
                                                                                        jmp   n135_lit_string_α
n134_call_proc_staged_β:
                                                                                        jmp   n135_lit_string_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rsp + 2016], 2                      # result
                        mov              dword ptr [rsp + 2020], 14
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 2024], rax
                                                                                        jmp   n136_lit_integer_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "12r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        mov              qword ptr [rsp + 2032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 2040], rax
                                                                                        jmp   n137_call_proc_staged_α
.Lx286_0:
                        .quad            464571650222
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        lea              rsi, [rsp + 2016]
                        lea              rdx, [rsp + 2032]
                        call             proc_try_dcα
                                                                                        jmp   .Lx288_2
.Lx288_2:
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              eax, 104
                                                                                        je    n138_lit_string_α
                                                                                        jmp   n138_lit_string_α
n137_call_proc_staged_β:
                                                                                        jmp   n138_lit_string_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rsp + 1920], 2                      # result
                        mov              dword ptr [rsp + 1924], 14
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 1928], rax
                                                                                        jmp   n139_lit_integer_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "13r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rsp + 1936], 3                      # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 1944], rax
                                                                                        jmp   n140_call_proc_staged_α
.Lx290_0:
                        .quad            1028969951622
#-----------------------------------------------------------------------------------------------------------------------
n140_call_proc_staged_α:
                        lea              rsi, [rsp + 1920]
                        lea              rdx, [rsp + 1936]
                        call             proc_try_dcα
                                                                                        jmp   .Lx292_2
.Lx292_2:
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n141_lit_string_α
                                                                                        jmp   n141_lit_string_α
n140_call_proc_staged_β:
                                                                                        jmp   n141_lit_string_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rsp + 1824], 2                      # result
                        mov              dword ptr [rsp + 1828], 14
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 1832], rax
                                                                                        jmp   n142_lit_integer_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "19r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rsp + 1840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 1848], rax
                                                                                        jmp   n143_call_proc_staged_α
.Lx294_0:
                        .quad            44858250416904
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        lea              rsi, [rsp + 1824]
                        lea              rdx, [rsp + 1840]
                        call             proc_try_dcα
                                                                                        jmp   .Lx296_2
.Lx296_2:
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n144_lit_string_α
                                                                                        jmp   n144_lit_string_α
n143_call_proc_staged_β:
                                                                                        jmp   n144_lit_string_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rsp + 1728], 2                      # result
                        mov              dword ptr [rsp + 1732], 14
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n145_lit_integer_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "23r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rsp + 1744], 3                      # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 1752], rax
                                                                                        jmp   n146_call_proc_staged_α
.Lx298_0:
                        .quad            300810118039132
#-----------------------------------------------------------------------------------------------------------------------
n146_call_proc_staged_α:
                        lea              rsi, [rsp + 1728]
                        lea              rdx, [rsp + 1744]
                        call             proc_try_dcα
                                                                                        jmp   .Lx300_2
.Lx300_2:
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n147_lit_string_α
                                                                                        jmp   n147_lit_string_α
n146_call_proc_staged_β:
                                                                                        jmp   n147_lit_string_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rsp + 1632], 2                      # result
                        mov              dword ptr [rsp + 1636], 14
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 1640], rax
                                                                                        jmp   n148_lit_integer_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "29r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rsp + 1648], 3                      # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 1656], rax
                                                                                        jmp   n149_call_proc_staged_α
.Lx302_0:
                        .quad            3032082160319254
#-----------------------------------------------------------------------------------------------------------------------
n149_call_proc_staged_α:
                        lea              rsi, [rsp + 1632]
                        lea              rdx, [rsp + 1648]
                        call             proc_try_dcα
                                                                                        jmp   .Lx304_2
.Lx304_2:
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n150_lit_string_α
                                                                                        jmp   n150_lit_string_α
n149_call_proc_staged_β:
                                                                                        jmp   n150_lit_string_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rsp + 1536], 2                      # result
                        mov              dword ptr [rsp + 1540], 14
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 1544], rax
                                                                                        jmp   n151_lit_integer_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "31r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rsp + 1552], 3                      # result
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 1560], rax
                                                                                        jmp   n152_call_proc_staged_α
.Lx306_0:
                        .quad            5896176886381092
#-----------------------------------------------------------------------------------------------------------------------
n152_call_proc_staged_α:
                        lea              rsi, [rsp + 1536]
                        lea              rdx, [rsp + 1552]
                        call             proc_try_dcα
                                                                                        jmp   .Lx308_2
.Lx308_2:
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104
                                                                                        je    n153_lit_string_α
                                                                                        jmp   n153_lit_string_α
n152_call_proc_staged_β:
                                                                                        jmp   n153_lit_string_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rsp + 1440], 2                      # result
                        mov              dword ptr [rsp + 1444], 14
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n154_lit_integer_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "36r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rsp + 1456], 3                      # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n155_call_proc_staged_α
.Lx310_0:
                        .quad            26202869414008742
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rsp + 1440]
                        lea              rdx, [rsp + 1456]
                        call             proc_try_dcα
                                                                                        jmp   .Lx312_2
.Lx312_2:
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n156_lit_string_α
                                                                                        jmp   n156_lit_string_α
n155_call_proc_staged_β:
                                                                                        jmp   n156_lit_string_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rsp + 1344], 2                      # result
                        mov              dword ptr [rsp + 1348], 22
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n157_lit_integer_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "2r01001010100010101010"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rsp + 1360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 1368], rax
                                                                                        jmp   n158_call_proc_staged_α
.Lx314_0:
                        .quad            305322
#-----------------------------------------------------------------------------------------------------------------------
n158_call_proc_staged_α:
                        lea              rsi, [rsp + 1344]
                        lea              rdx, [rsp + 1360]
                        call             proc_try_dcα
                                                                                        jmp   .Lx316_2
.Lx316_2:
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n159_lit_string_α
                                                                                        jmp   n159_lit_string_α
n158_call_proc_staged_β:
                                                                                        jmp   n159_lit_string_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rsp + 1248], 2                      # result
                        mov              dword ptr [rsp + 1252], 65
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 1256], rax
                                                                                        jmp   n160_lit_integer_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "2r111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n161_call_proc_staged_α
.Lx318_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        lea              rsi, [rsp + 1248]
                        lea              rdx, [rsp + 1264]
                        call             proc_try_dcα
                                                                                        jmp   .Lx320_2
.Lx320_2:
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n162_lit_string_α
                                                                                        jmp   n162_lit_string_α
n161_call_proc_staged_β:
                                                                                        jmp   n162_lit_string_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rsp + 1152], 2                      # result
                        mov              dword ptr [rsp + 1156], 66
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n163_lit_integer_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "2r1111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:
                        mov              qword ptr [rsp + 1168], 3                      # result
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 1176], rax
                                                                                        jmp   n164_call_proc_staged_α
.Lx322_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n164_call_proc_staged_α:
                        lea              rsi, [rsp + 1152]
                        lea              rdx, [rsp + 1168]
                        call             proc_try_dcα
                                                                                        jmp   .Lx324_2
.Lx324_2:
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              eax, 104
                                                                                        je    n165_lit_string_α
                                                                                        jmp   n165_lit_string_α
n164_call_proc_staged_β:
                                                                                        jmp   n165_lit_string_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rsp + 1056], 2                      # result
                        mov              dword ptr [rsp + 1060], 67
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 1064], rax
                                                                                        jmp   n166_lit_integer_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "2r11111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rsp + 1072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx326_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        lea              rsi, [rsp + 1056]
                        lea              rdx, [rsp + 1072]
                        call             proc_try_dcα
                                                                                        jmp   .Lx328_2
.Lx328_2:
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n168_lit_string_α
                                                                                        jmp   n168_lit_string_α
n167_call_proc_staged_β:
                                                                                        jmp   n168_lit_string_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rsp + 960], 2                       # result
                        mov              dword ptr [rsp + 964], 10
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n169_lit_integer_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "8r01234567"
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rsp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n170_call_proc_staged_α
.Lx330_0:
                        .quad            342391
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        lea              rsi, [rsp + 960]
                        lea              rdx, [rsp + 976]
                        call             proc_try_dcα
                                                                                        jmp   .Lx332_2
.Lx332_2:
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n171_lit_string_α
                                                                                        jmp   n171_lit_string_α
n170_call_proc_staged_β:
                                                                                        jmp   n171_lit_string_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rsp + 864], 2                       # result
                        mov              dword ptr [rsp + 868], 23
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n172_lit_integer_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "8r377777777777777777777"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:
                        mov              qword ptr [rsp + 880], 3                       # result
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n173_call_proc_staged_α
.Lx334_0:
                        .quad            4611686018427387903
#-----------------------------------------------------------------------------------------------------------------------
n173_call_proc_staged_α:
                        lea              rsi, [rsp + 864]
                        lea              rdx, [rsp + 880]
                        call             proc_try_dcα
                                                                                        jmp   .Lx336_2
.Lx336_2:
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n174_lit_string_α
                                                                                        jmp   n174_lit_string_α
n173_call_proc_staged_β:
                                                                                        jmp   n174_lit_string_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rsp + 768], 2                       # result
                        mov              dword ptr [rsp + 772], 19
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n175_lit_integer_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "16r0123456789ABCDEF"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rsp + 784], 3                       # result
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n176_call_proc_staged_α
.Lx338_0:
                        .quad            81985529216486895
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        lea              rsi, [rsp + 768]
                        lea              rdx, [rsp + 784]
                        call             proc_try_dcα
                                                                                        jmp   .Lx340_2
.Lx340_2:
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n177_lit_string_α
                                                                                        jmp   n177_lit_string_α
n176_call_proc_staged_β:
                                                                                        jmp   n177_lit_string_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rsp + 672], 2                       # result
                        mov              dword ptr [rsp + 676], 19
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n178_lit_integer_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "16r7fffffffffffffff"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:
                        mov              qword ptr [rsp + 688], 3                       # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n179_call_proc_staged_α
.Lx342_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n179_call_proc_staged_α:
                        lea              rsi, [rsp + 672]
                        lea              rdx, [rsp + 688]
                        call             proc_try_dcα
                                                                                        jmp   .Lx344_2
.Lx344_2:
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n180_lit_string_α
                                                                                        jmp   n180_lit_string_α
n179_call_proc_staged_β:
                                                                                        jmp   n180_lit_string_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rsp + 576], 2                       # result
                        mov              dword ptr [rsp + 580], 19
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n181_lit_integer_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "16rffffffffffffffff"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:
                        mov              qword ptr [rsp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n182_call_proc_staged_α
.Lx346_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 592]
                        call             proc_try_dcα
                                                                                        jmp   .Lx348_2
.Lx348_2:
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n183_lit_string_α
                                                                                        jmp   n183_lit_string_α
n182_call_proc_staged_β:
                                                                                        jmp   n183_lit_string_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rsp + 480], 2                       # result
                        mov              dword ptr [rsp + 484], 20
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n184_lit_integer_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "16r10000000000000000"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n185_call_proc_staged_α
.Lx350_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        lea              rsi, [rsp + 480]
                        lea              rdx, [rsp + 496]
                        call             proc_try_dcα
                                                                                        jmp   .Lx352_2
.Lx352_2:
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n186_lit_string_α
                                                                                        jmp   n186_lit_string_α
n185_call_proc_staged_β:
                                                                                        jmp   n186_lit_string_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rsp + 384], 2                       # result
                        mov              dword ptr [rsp + 388], 23
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n187_lit_integer_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "16r123456789ABCDEF01234"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rsp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n188_call_proc_staged_α
.Lx354_0:
                        .quad            6230900220451885620
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 400]
                        call             proc_try_dcα
                                                                                        jmp   .Lx356_2
.Lx356_2:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n189_lit_string_α
                                                                                        jmp   n189_lit_string_α
n188_call_proc_staged_β:
                                                                                        jmp   n189_lit_string_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rsp + 288], 2                       # result
                        mov              dword ptr [rsp + 292], 7
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n190_lit_integer_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "36rICON"
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:
                        mov              qword ptr [rsp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n191_call_proc_staged_α
.Lx358_0:
                        .quad            856247
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 304]
                        call             proc_try_dcα
                                                                                        jmp   .Lx360_2
.Lx360_2:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n192_lit_string_α
                                                                                        jmp   n192_lit_string_α
n191_call_proc_staged_β:
                                                                                        jmp   n192_lit_string_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rsp + 192], 2                       # result
                        mov              dword ptr [rsp + 196], 7
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n193_lit_integer_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "36rIcon"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:
                        mov              qword ptr [rsp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n194_call_proc_staged_α
.Lx362_0:
                        .quad            856247
#-----------------------------------------------------------------------------------------------------------------------
n194_call_proc_staged_α:
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 208]
                        call             proc_try_dcα
                                                                                        jmp   .Lx364_2
.Lx364_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n195_lit_string_α
                                                                                        jmp   n195_lit_string_α
n194_call_proc_staged_β:
                                                                                        jmp   n195_lit_string_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rsp + 96], 2                        # result
                        mov              dword ptr [rsp + 100], 17
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n196_lit_integer_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "36r123456789AEIOU"
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        mov              qword ptr [rsp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n197_call_proc_staged_α
.Lx366_0:
                        .quad            14447809231090394142
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 112]
                        call             proc_try_dcα
                                                                                        jmp   .Lx368_2
.Lx368_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n198_lit_string_α
                                                                                        jmp   n198_lit_string_α
n197_call_proc_staged_β:
                                                                                        jmp   n198_lit_string_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n199_lit_integer_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "36rZYXWVYTSRQPONMLKJIHGFEDCBA9876543210"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rsp + 16], 3                        # result
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n200_call_proc_staged_α
.Lx370_0:
                        .quad            6554241108638434564
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        lea              rdx, [rsp + 16]
                        call             proc_try_dcα
                                                                                        jmp   .Lx372_2
.Lx372_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx372_240
                        add              rsp, 4064
                                                                                        jmp   main_ω
.Lx372_240:
                        add              rsp, 4064
                                                                                        jmp   main_ω
n200_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "try"
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
