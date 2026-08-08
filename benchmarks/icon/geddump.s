                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_event_α
proc_event_α:
                        sub              rsp, 912
                        mov              qword ptr [rsp + 888], rcx
                        mov              qword ptr [rsp + 896], rdx
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 880
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
proc_event_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
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
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 0
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n1_var_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n2_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_proc_staged_α:
                        lea              rsi, [rbp + 816]
                        call             proc_geddate_dcα
                                                                                        jmp   .Lx35_2
.Lx35_2:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n3_binop_test_α
n2_call_proc_staged_β:
                                                                                        jmp   n5_lit_string_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "geddate"
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:
                        mov              rdi, qword ptr [rbp + 752]                     # lhs
                        mov              rsi, qword ptr [rbp + 760]                     # lhs
                        mov              rdx, qword ptr [rbp + 768]                     # rhs
                        mov              rcx, qword ptr [rbp + 776]                     # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n5_lit_string_α
                        mov              rdi, qword ptr [rbp + 768]                     # d
                        mov              rsi, qword ptr [rbp + 776]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 0
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n6_var_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 4
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n8_proc_gen_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "PLAC"
#-----------------------------------------------------------------------------------------------------------------------
n8_proc_gen_α:
                        mov              qword ptr [rbp + 672], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx43_20
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx43_21
.Lx43_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 704]                     # v
                        mov              rdx, qword ptr [rbp + 712]                     # v
                        call             rt_arg_stage@PLT
.Lx43_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx43_22
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx43_23
.Lx43_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 720]                     # v
                        mov              rdx, qword ptr [rbp + 728]                     # v
                        call             rt_arg_stage@PLT
.Lx43_23:
                        lea              rax, [rip + .Lx43_7]
                        push             rax
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx43_1
                        lea              rcx, [rip + .Lx43_3]
                        lea              rdx, [rip + .Lx43_4]
                                                                                        jmp   rax
.Lx43_3:
                        mov              qword ptr [rbp + 680], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx43_5
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx43_2
.Lx43_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx43_2
.Lx43_4:
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx43_6
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx43_2
.Lx43_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx43_2
.Lx43_1:
                        call             rt_faildescr@PLT
.Lx43_2:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n11_disjunction_α
                                                                                        jmp   n9_binop_test_α
n8_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 680]
                                                                                        jmp   qword ptr [rsp]
.Lx43_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n11_disjunction_α
                                                                                        jmp   n9_binop_test_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_test_α:
                        mov              rdi, qword ptr [rbp + 608]                     # lhs
                        mov              rsi, qword ptr [rbp + 616]                     # lhs
                        mov              rdx, qword ptr [rbp + 624]                     # rhs
                        mov              rcx, qword ptr [rbp + 632]                     # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n8_proc_gen_β
                        mov              rdi, qword ptr [rbp + 624]                     # d
                        mov              rsi, qword ptr [rbp + 632]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n10_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n11_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n22_var_α
n11_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx47_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n30_return_α
.Lx47_0:
                        cmp              eax, 1
                                                                                        jne   .Lx47_1
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n30_return_α
.Lx47_1:
                                                                                        jmp   n30_return_α
n11_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    n30_return_α
                                                                                        jmp   n15_disjunction_β
n11_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n30_return_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 3
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n13_var_α
n12_lit_string_β:
                                                                                        jmp   n30_return_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n15_disjunction_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n20_var_α
n15_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx53_0
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n16_lit_string_α
.Lx53_0:
                        cmp              eax, 1
                                                                                        jne   .Lx53_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n16_lit_string_α
.Lx53_1:
                                                                                        jmp   n16_lit_string_α
n15_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n15_disjunction_af
                                                                                        jmp   n15_disjunction_af
n15_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n19_lit_string_α
                                                                                        jmp   n30_return_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 2
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n17_var_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n18_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn58:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]                          # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 6                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n15_disjunction_β
                                                                                        jmp   n11_disjunction_as
n18_call_builtin_icon_β:
                                                                                        jmp   n15_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 12
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n15_disjunction_as
n19_lit_string_β:
                                                                                        jmp   n15_disjunction_af
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "            "
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n21_unop_test_α
n20_var_β:
                                                                                        jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n21_unop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 104
                                                                                        je    n15_disjunction_af
                        cmp              eax, 0
                                                                                        je    n15_disjunction_af
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n15_disjunction_as
n21_unop_test_β:
                                                                                        jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n23_unop_test_α
n22_var_β:
                                                                                        jmp   n11_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n23_unop_test_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 104
                                                                                        je    n11_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n11_disjunction_af
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 3
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n25_var_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n27_var_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n28_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n28_unop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 104
                                                                                        je    n30_return_α
                        cmp              eax, 0
                                                                                        je    n30_return_α
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n29_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn74:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n30_return_α
                                                                                        jmp   n11_disjunction_as
n29_call_builtin_icon_β:
                                                                                        jmp   n30_return_α
#-----------------------------------------------------------------------------------------------------------------------
n30_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 784
                                                                                        jmp   proc_event_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_event_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_event_β:
                                                                                        jmp   proc_event_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_event_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 912]
                        mov              rcx, qword ptr [rbp + 888]
                        mov              rbp, qword ptr [rbp + 904]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_event_ω:
                        lea              rsp, [rbp + 912]
                        mov              rcx, qword ptr [rbp + 896]
                        mov              rbp, qword ptr [rbp + 904]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_event_dcα:
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
                        lea              rcx, [rip + .Lx76_2]
                        lea              rdx, [rip + .Lx76_3]
                                                                                        jmp   proc_event_α
.Lx76_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx76_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_refto_α
proc_refto_α:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 400
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_refto_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
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
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 3
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n78_var_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 2
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n80_var_ref_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          " ["
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # ptab
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n82_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n82_subscript_α:
                        mov              rdi, qword ptr [rbp + 240]                     # base
                        mov              rsi, qword ptr [rbp + 248]                     # base
                        mov              rdx, qword ptr [rbp + 256]                     # idx
                        mov              rcx, qword ptr [rbp + 264]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n89_return_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n83_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_deref_α:
                        mov              rdi, qword ptr [rbp + 272]                     # d
                        mov              rsi, qword ptr [rbp + 280]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n89_return_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n84_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n84_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00001_0]                # fname
                        mov              rsi, qword ptr [rbp + 288]                     # obj
                        mov              rdx, qword ptr [rbp + 296]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n89_return_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n85_lit_string_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n86_var_α
.Lx00002_0:
                        .quad            .Lx00002_0_s
.Lx00002_0_s:
                        .string          "] "
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α:
                        lea              rsi, [rbp + 368]
                        call             proc_gedfnf_dcα
                                                                                        jmp   .Lx00003_2
.Lx00003_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n89_return_α
                                                                                        jmp   n88_call_builtin_icon_α
n87_call_proc_staged_β:
                                                                                        jmp   n89_return_α
.Lx00003_0:
                        .quad            .Lx00003_0_s
.Lx00003_0_s:
                        .string          "gedfnf"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn107:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 6                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n89_return_α
                                                                                        jmp   n89_return_α
n88_call_builtin_icon_β:
                                                                                        jmp   n89_return_α
#-----------------------------------------------------------------------------------------------------------------------
n89_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 208
                                                                                        jmp   proc_refto_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_β:
                                                                                        jmp   proc_refto_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 432]
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rbp, qword ptr [rbp + 424]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_ω:
                        lea              rsp, [rbp + 432]
                        mov              rcx, qword ptr [rbp + 416]
                        mov              rbp, qword ptr [rbp + 424]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_dcα:
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
                        lea              rcx, [rip + .Lx00004_2]
                        lea              rdx, [rip + .Lx00004_3]
                                                                                        jmp   proc_refto_α
.Lx00004_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00004_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sortkey_α
proc_sortkey_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 160
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_sortkey_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00006_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00006_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        call             proc_gedlnf_dcα
                                                                                        jmp   .Lx00007_2
.Lx00007_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00007_240
                        add              rsp, 16
                                                                                        jmp   proc_sortkey_ω
.Lx00007_240:
                                                                                        jmp   n00008_call_builtin_icon_α
n00006_call_proc_staged_β:
                                                                                        jmp   proc_sortkey_ω
.Lx00007_0:
                        .quad            .Lx00007_0_s
.Lx00007_0_s:
                        .string          "gedlnf"
#-----------------------------------------------------------------------------------------------------------------------
n00008_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn119:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00009_240
                        add              rsp, 16
                                                                                        jmp   proc_sortkey_ω
.Lx00009_240:
                                                                                        jmp   n00010_return_α
n00008_call_builtin_icon_β:
                        add              rsp, 16
                                                                                        jmp   proc_sortkey_ω
#-----------------------------------------------------------------------------------------------------------------------
n00010_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 16
                                                                                        jmp   proc_sortkey_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_sortkey_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sortkey_β:
                                                                                        jmp   proc_sortkey_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_sortkey_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 192]
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_sortkey_ω:
                        lea              rsp, [rbp + 192]
                        mov              rcx, qword ptr [rbp + 176]
                        mov              rbp, qword ptr [rbp + 184]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_sortkey_dcα:
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
                        lea              rcx, [rip + .Lx00011_2]
                        lea              rdx, [rip + .Lx00011_3]
                                                                                        jmp   proc_sortkey_α
.Lx00011_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00011_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedload_α
proc_gedload_α:
                        sub              rsp, 2688
                        mov              qword ptr [rsp + 2664], rcx
                        mov              qword ptr [rsp + 2672], rdx
                        mov              qword ptr [rsp + 2680], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2656
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
proc_gedload_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00012_lit_integer_α:
                        sub              rsp, 2304
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
                        mov              qword ptr [rbp + 2480], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00014_assign_α
.Lx00013_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00014_assign_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00015_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00015_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n00017_keyword_icon_α
.Lx00016_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00017_keyword_icon_α:
                        mov              qword ptr [rbp + 2320], 0
                        mov              qword ptr [rbp + 2328], 0
                                                                                        jmp   n00018_lit_string_α
n00017_keyword_icon_β:
                                                                                        jmp   n00019_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00018_lit_string_α:
                        mov              qword ptr [rbp + 2352], 2                      # result
                        mov              dword ptr [rbp + 2356], 4
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n00021_lit_string_α
.Lx00020_0:
                        .quad            .Lx00020_0_s
.Lx00020_0_s:
                        .string          "ROOT"
#-----------------------------------------------------------------------------------------------------------------------
n00021_lit_string_α:
                        mov              qword ptr [rbp + 2368], 2                      # result
                        mov              dword ptr [rbp + 2372], 0
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n00023_var_α
.Lx00022_0:
                        .quad            .Lx00022_0_s
.Lx00022_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00023_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n00024_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00024_keyword_icon_α:
                        mov              qword ptr [rbp + 2400], 0
                        mov              qword ptr [rbp + 2408], 0
                                                                                        jmp   n00025_keyword_icon_α
n00024_keyword_icon_β:
                                                                                        jmp   n00019_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_keyword_icon_α:
                        mov              qword ptr [rbp + 2432], 0
                        mov              qword ptr [rbp + 2440], 0
                                                                                        jmp   n00026_make_list_α
n00025_keyword_icon_β:
                                                                                        jmp   n00019_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00026_make_list_α:
                        lea              rdi, [rbp + 2480]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n00027_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_call_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn250:              .string          "gednode"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]                         # fn
                        lea              rsi, [rbp + 2160]                              # args
                        mov              edx, 8                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n00019_call_builtin_icon_α
                                                                                        jmp   n00028_assign_α
n00027_call_β:
                                                                                        jmp   n00019_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00028_assign_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n00029_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_assign_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00019_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00019_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn254:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]                         # fn
                        lea              rsi, [rbp + 2112]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 104
                                                                                        je    n00030_make_list_α
                                                                                        jmp   n00031_assign_α
n00019_call_builtin_icon_β:
                                                                                        jmp   n00030_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n00030_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00030_make_list_α:
                        lea              rdi, [rbp + 2096]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n00032_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_assign_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00033_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00033_make_list_α:
                        lea              rdi, [rbp + 2080]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n00034_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00036_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00036_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn265:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]                         # fn
                        lea              rsi, [rbp + 544]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00037_240
                        add              rsp, 2304
                                                                                        jmp   n00038_var_α
.Lx00037_240:
                                                                                        jmp   n00039_lit_charset_α
n00036_call_builtin_icon_β:
                        add              rsp, 2304
                                                                                        jmp   n00038_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_lit_charset_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], -1
                        mov              rax, qword ptr [rip + .Lx00040_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00041_call_builtin_icon_α
.Lx00040_0:
                        .quad            .Lx00040_0_s
.Lx00040_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00041_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn268:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00042_240
                        add              rsp, 2304
                                                                                        jmp   n00038_var_α
.Lx00042_240:
                                                                                        jmp   n00043_assign_α
n00041_call_builtin_icon_β:
                        add              rsp, 2304
                                                                                        jmp   n00038_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n00044_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00044_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n00045_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00046_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n00047_coerce_numeric_α
.Lx00046_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00047_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2624]
                        cmp              eax, 5
                                                                                        je    .Lx00048_1
                        cmp              eax, 3
                                                                                        jne   .Lx00048_0
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 3
                                                                                        jne   .Lx00048_0
.Lx00048_1:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00049_binop_α
.Lx00048_0:
                        lea              rdi, [rbp + 2624]                              # self
                        lea              rsi, [rbp + 2048]                              # other
                        lea              rdx, [rbp + 2016]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00049_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_α:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 3
                                                                                        jne   .Lx00050_0
                        mov              rax, qword ptr [rbp + 2024]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2000], 3
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00051_assign_α
.Lx00050_0:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00052_disjunction_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n00051_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_assign_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00052_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_disjunction_α:
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              dword ptr [rbp + 1920], 0
                                                                                        jmp   n00053_var_α
n00052_disjunction_as:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        jne   .Lx00054_0
                                                                                        jmp   n00055_disjunction_α
.Lx00054_0:
                                                                                        jmp   n00055_disjunction_α
n00052_disjunction_β:
                        mov              eax, dword ptr [rbp + 1920]
                                                                                        jmp   n00055_disjunction_α
n00052_disjunction_af:
                        add              dword ptr [rbp + 1920], 1
                        mov              eax, dword ptr [rbp + 1920]
                                                                                        jmp   n00055_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_disjunction_α:
                        mov              qword ptr [rbp + 1568], 0
                        mov              qword ptr [rbp + 1576], 0
                        mov              dword ptr [rbp + 1584], 0
                                                                                        jmp   n00056_var_α
n00055_disjunction_as:
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 0
                                                                                        jne   .Lx00057_0
                                                                                        jmp   n00058_var_α
.Lx00057_0:
                                                                                        jmp   n00058_var_α
n00055_disjunction_β:
                        mov              eax, dword ptr [rbp + 1584]
                                                                                        jmp   n00058_var_α
n00055_disjunction_af:
                        add              dword ptr [rbp + 1584], 1
                        mov              eax, dword ptr [rbp + 1584]
                                                                                        jmp   n00058_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n00059_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00060_0]                # fname
                        mov              rsi, qword ptr [rbp + 1520]                    # obj
                        mov              rdx, qword ptr [rbp + 1528]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n00061_var_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n00062_var_α
.Lx00060_0:
                        .quad            .Lx00060_0_s
.Lx00060_0_s:
                        .string          "lnum"
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00063_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1504]                    # var
                        mov              rsi, qword ptr [rbp + 1512]                    # var
                        mov              rdx, qword ptr [rbp + 1552]                    # val
                        mov              rcx, qword ptr [rbp + 1560]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00061_var_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n00061_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n00064_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00065_0]                # fname
                        mov              rsi, qword ptr [rbp + 1456]                    # obj
                        mov              rdx, qword ptr [rbp + 1464]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n00066_var_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n00067_make_list_α
.Lx00065_0:
                        .quad            .Lx00065_0_s
.Lx00065_0_s:
                        .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00067_make_list_α:
                        lea              rdi, [rbp + 1504]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n00068_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1440]                    # var
                        mov              rsi, qword ptr [rbp + 1448]                    # var
                        mov              rdx, qword ptr [rbp + 1488]                    # val
                        mov              rcx, qword ptr [rbp + 1496]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00066_var_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n00066_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00069_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00069_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00070_0]                # fname
                        mov              rsi, qword ptr [rbp + 1360]                    # obj
                        mov              rdx, qword ptr [rbp + 1368]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00070_240
                        add              rsp, 2304
                                                                                        jmp   n00071_var_α
.Lx00070_240:
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n00072_var_α
.Lx00070_0:
                        .quad            .Lx00070_0_s
.Lx00070_0_s:
                        .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00073_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00074_0]                # fname
                        mov              rsi, qword ptr [rbp + 1392]                    # obj
                        mov              rdx, qword ptr [rbp + 1400]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00074_240
                        add              rsp, 2304
                                                                                        jmp   n00071_var_α
.Lx00074_240:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00075_binop_test_α
.Lx00074_0:
                        .quad            .Lx00074_0_s
.Lx00074_0_s:
                        .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n00075_binop_test_α:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 112
                                                                                        je    .Lx00076_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 112
                                                                                        je    .Lx00076_0
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 3
                                                                                        jne   .Lx00076_2
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 3
                                                                                        jne   .Lx00076_2
.Lx00076_1:
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rcx, qword ptr [rbp + 1384]
                        cmp              rax, rcx
                                                                                        jge   .Lx00076_238
                        add              rsp, 2304
                                                                                        jmp   n00071_var_α
.Lx00076_238:
                        mov              rcx, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rcx
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rcx
                                                                                        jmp   n00077_var_α
.Lx00076_0:
                        mov              rdi, qword ptr [rbp + 1344]                    # a
                        mov              rsi, qword ptr [rbp + 1352]                    # a
                        mov              rdx, qword ptr [rbp + 1376]                    # b
                        mov              rcx, qword ptr [rbp + 1384]                    # b
                        mov              r8d, 8                                         # op
                        lea              r9, [rbp + 1328]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00076_1
                        cmp              eax, 1
                                                                                        jne   .Lx00076_239
                        add              rsp, 2304
                                                                                        jmp   n00071_var_α
.Lx00076_239:
                                                                                        jmp   n00077_var_α
.Lx00076_2:
                        mov              rdi, qword ptr [rbp + 1344]                    # lhs
                        mov              rsi, qword ptr [rbp + 1352]                    # lhs
                        mov              rdx, qword ptr [rbp + 1376]                    # rhs
                        mov              rcx, qword ptr [rbp + 1384]                    # rhs
                        mov              r8d, 8                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jne   .Lx00076_240
                        add              rsp, 2304
                                                                                        jmp   n00071_var_α
.Lx00076_240:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00077_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n00078_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00078_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00079_0]                # fname
                        mov              rsi, qword ptr [rbp + 1424]                    # obj
                        mov              rdx, qword ptr [rbp + 1432]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00066_var_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00080_assign_α
.Lx00079_0:
                        .quad            .Lx00079_0_s
.Lx00079_0_s:
                        .string          "parent"
#-----------------------------------------------------------------------------------------------------------------------
n00080_assign_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00066_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n00081_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00082_0]                # fname
                        mov              rsi, qword ptr [rbp + 1296]                    # obj
                        mov              rdx, qword ptr [rbp + 1304]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00083_var_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n00084_var_α
.Lx00082_0:
                        .quad            .Lx00082_0_s
.Lx00082_0_s:
                        .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00084_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00085_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn310:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]                         # fn
                        lea              rsi, [rbp + 1232]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    n00083_var_α
                                                                                        jmp   n00083_var_α
n00085_call_builtin_icon_β:
                                                                                        jmp   n00083_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00086_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00087_0]                # fname
                        mov              rsi, qword ptr [rbp + 1168]                    # obj
                        mov              rdx, qword ptr [rbp + 1176]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n00088_var_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00089_var_α
.Lx00087_0:
                        .quad            .Lx00087_0_s
.Lx00087_0_s:
                        .string          "parent"
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00090_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1152]                    # var
                        mov              rsi, qword ptr [rbp + 1160]                    # var
                        mov              rdx, qword ptr [rbp + 1200]                    # val
                        mov              rcx, qword ptr [rbp + 1208]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00088_var_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00088_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00091_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00092_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n00093_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00094_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00095_0]                # fname
                        mov              rsi, qword ptr [rbp + 1072]                    # obj
                        mov              rdx, qword ptr [rbp + 1080]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00096_var_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n00097_unop_test_α
.Lx00095_0:
                        .quad            .Lx00095_0_s
.Lx00095_0_s:
                        .string          "id"
#-----------------------------------------------------------------------------------------------------------------------
n00097_unop_test_α:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 104
                                                                                        je    n00096_var_α
                        cmp              eax, 0
                                                                                        je    n00096_var_α
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00098_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]                    # base
                        mov              rsi, qword ptr [rbp + 1032]                    # base
                        mov              rdx, qword ptr [rbp + 1040]                    # idx
                        mov              rcx, qword ptr [rbp + 1048]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00096_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00099_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00100_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00100_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1088]                    # var
                        mov              rsi, qword ptr [rbp + 1096]                    # var
                        mov              rdx, qword ptr [rbp + 1120]                    # val
                        mov              rcx, qword ptr [rbp + 1128]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00096_var_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00096_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00101_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00101_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00102_0]                # fname
                        mov              rsi, qword ptr [rbp + 656]                     # obj
                        mov              rdx, qword ptr [rbp + 664]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00035_var_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00103_lit_string_α
.Lx00102_0:
                        .quad            .Lx00102_0_s
.Lx00102_0_s:
                        .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n00103_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 3
                        mov              rax, qword ptr [rip + .Lx00104_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00105_call_builtin_α
.Lx00104_0:
                        .quad            .Lx00104_0_s
.Lx00104_0_s:
                        .string          "FAM"
#-----------------------------------------------------------------------------------------------------------------------
n00105_call_builtin_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn335:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]                         # fn
                        lea              rsi, [rbp + 976]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n00106_lit_string_α
                                                                                        jmp   n00107_var_α
n00105_call_builtin_β:
                                                                                        jmp   n00106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n00108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn341:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn341]                         # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n00035_var_α
                                                                                        jmp   n00110_assign_α
n00109_call_builtin_icon_β:
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n00111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 4
                        mov              rax, qword ptr [rip + .Lx00112_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00113_call_builtin_α
.Lx00112_0:
                        .quad            .Lx00112_0_s
.Lx00112_0_s:
                        .string          "INDI"
#-----------------------------------------------------------------------------------------------------------------------
n00113_call_builtin_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn345:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]                         # fn
                        lea              rsi, [rbp + 800]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n00035_var_α
                                                                                        jmp   n00114_var_α
n00113_call_builtin_β:
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn351:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n00035_var_α
                                                                                        jmp   n00117_assign_α
n00116_call_builtin_icon_β:
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n00111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00118_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_conjunction_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00035_var_α
n00118_conjunction_β:
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00119_conjunction_α:
                                                                                        jmp   n00055_disjunction_as
n00119_conjunction_β:
                                                                                        jmp   n00058_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00120_call_proc_staged_α
n00056_var_β:
                                                                                        jmp   n00121_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00120_call_proc_staged_α:
                        lea              rsi, [rbp + 1888]
                        call             proc_gedscan_dcα
                                                                                        jmp   .Lx00122_2
.Lx00122_2:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 104
                                                                                        je    n00121_var_α
                                                                                        jmp   n00123_assign_α
n00120_call_proc_staged_β:
                                                                                        jmp   n00121_var_α
.Lx00122_0:
                        .quad            .Lx00122_0_s
.Lx00122_0_s:
                        .string          "gedscan"
#-----------------------------------------------------------------------------------------------------------------------
n00123_assign_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n00055_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_α:
                        mov              qword ptr [rbp + 1824], 0
                        mov              qword ptr [rbp + 1832], 0
                                                                                        jmp   n00124_keyword_icon_α
n00121_var_β:
                                                                                        jmp   n00055_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00124_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00125_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00035_var_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00126_lit_string_α
n00124_keyword_icon_β:
                                                                                        jmp   n00035_var_α
.Lx00125_0:
                        .quad            .Lx00125_0_s
.Lx00125_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_string_α:
                        mov              qword ptr [rbp + 1760], 2                      # result
                        mov              dword ptr [rbp + 1764], 10
                        mov              rax, qword ptr [rip + .Lx00127_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n00128_var_α
.Lx00127_0:
                        .quad            .Lx00127_0_s
.Lx00127_0_s:
                        .string          "ERR, line "
#-----------------------------------------------------------------------------------------------------------------------
n00128_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_lit_string_α:
                        mov              qword ptr [rbp + 1792], 2                      # result
                        mov              dword ptr [rbp + 1796], 2
                        mov              rax, qword ptr [rip + .Lx00130_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00131_var_α
.Lx00130_0:
                        .quad            .Lx00130_0_s
.Lx00130_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00132_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn371:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn371]                         # fn
                        lea              rsi, [rbp + 1632]                              # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 104
                                                                                        je    n00035_var_α
                                                                                        jmp   n00035_var_α
n00132_call_builtin_icon_β:
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_goto_α:
                                                                                        jmp   n00035_var_α
n00133_goto_β:
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n00134_unop_α
n00053_var_β:
                                                                                        jmp   n00052_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00134_unop_α:
                        mov              rdi, qword ptr [rbp + 2576]                    # lo
                        mov              rsi, qword ptr [rbp + 2584]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n00135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00136_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n00137_binop_test_α
.Lx00136_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00137_binop_test_α:
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 112
                                                                                        je    .Lx00138_0
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 112
                                                                                        je    .Lx00138_0
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 3
                                                                                        jne   .Lx00138_2
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 3
                                                                                        jne   .Lx00138_2
.Lx00138_1:
                        mov              rax, qword ptr [rbp + 1960]
                        mov              rcx, qword ptr [rbp + 1992]
                        cmp              rax, rcx
                                                                                        jne   n00052_disjunction_af
                        mov              rcx, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rcx
                        mov              rcx, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rcx
                                                                                        jmp   n00035_var_α
.Lx00138_0:
                        mov              rdi, qword ptr [rbp + 1952]                    # a
                        mov              rsi, qword ptr [rbp + 1960]                    # a
                        mov              rdx, qword ptr [rbp + 1984]                    # b
                        mov              rcx, qword ptr [rbp + 1992]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 1936]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00138_1
                        cmp              eax, 1
                                                                                        je    n00052_disjunction_af
                                                                                        jmp   n00035_var_α
.Lx00138_2:
                        mov              rdi, qword ptr [rbp + 1952]                    # lhs
                        mov              rsi, qword ptr [rbp + 1960]                    # lhs
                        mov              rdx, qword ptr [rbp + 1984]                    # rhs
                        mov              rcx, qword ptr [rbp + 1992]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00052_disjunction_af
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00139_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00139_proc_gen_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00140_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00140_21
.Lx00140_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 272]                     # v
                        mov              rdx, qword ptr [rbp + 280]                     # v
                        call             rt_arg_stage@PLT
.Lx00140_21:
                        lea              rax, [rip + .Lx00140_7]
                        push             rax
                        mov              edi, 5                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00140_1
                        lea              rcx, [rip + .Lx00140_3]
                        lea              rdx, [rip + .Lx00140_4]
                                                                                        jmp   rax
.Lx00140_3:
                        mov              qword ptr [rbp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx00140_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00140_2
.Lx00140_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00140_2
.Lx00140_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx00140_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00140_2
.Lx00140_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00140_2
.Lx00140_1:
                        call             rt_faildescr@PLT
.Lx00140_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n00141_var_α
                                                                                        jmp   n00142_assign_α
n00139_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx00140_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n00141_var_α
                                                                                        jmp   n00142_assign_α
.Lx00140_0:
                        .quad            .Lx00140_0_s
.Lx00140_0_s:
                        .string          "gedwalk"
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n00143_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00143_bound_α:
                        mov              qword ptr [rbp + 288], rsp
                                                                                        jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00145_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00146_0]                # fname
                        mov              rsi, qword ptr [rbp + 352]                     # obj
                        mov              rdx, qword ptr [rbp + 360]                     # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n00147_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n00148_var_ref_α
.Lx00146_0:
                        .quad            .Lx00146_0_s
.Lx00146_0_s:
                        .string          "ref"
#-----------------------------------------------------------------------------------------------------------------------
n00148_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00149_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00150_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00151_0]                # fname
                        mov              rsi, qword ptr [rbp + 416]                     # obj
                        mov              rdx, qword ptr [rbp + 424]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00147_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00152_subscript_α
.Lx00151_0:
                        .quad            .Lx00151_0_s
.Lx00151_0_s:
                        .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n00152_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]                     # base
                        mov              rsi, qword ptr [rbp + 392]                     # base
                        mov              rdx, qword ptr [rbp + 400]                     # idx
                        mov              rcx, qword ptr [rbp + 408]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00147_unmark_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00153_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00153_deref_α:
                        mov              rdi, qword ptr [rbp + 432]                     # d
                        mov              rsi, qword ptr [rbp + 440]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00147_unmark_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00154_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_assign_var_α:
                        mov              rdi, qword ptr [rbp + 336]                     # var
                        mov              rsi, qword ptr [rbp + 344]                     # var
                        mov              rdx, qword ptr [rbp + 448]                     # val
                        mov              rcx, qword ptr [rbp + 456]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00147_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00147_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00147_unmark_α:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   n00139_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00155_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00157_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00158_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_call_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn407:              .string          "gedcom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn407]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    proc_gedload_ω
                                                                                        jmp   n00159_return_α
n00158_call_β:
                                                                                        jmp   proc_gedload_ω
#-----------------------------------------------------------------------------------------------------------------------
n00159_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedload_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_β:
                                                                                        jmp   proc_gedload_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2688]
                        mov              rcx, qword ptr [rbp + 2664]
                        mov              rbp, qword ptr [rbp + 2680]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_ω:
                        lea              rsp, [rbp + 2688]
                        mov              rcx, qword ptr [rbp + 2672]
                        mov              rbp, qword ptr [rbp + 2680]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_dcα:
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
                        lea              rcx, [rip + .Lx00160_2]
                        lea              rdx, [rip + .Lx00160_3]
                                                                                        jmp   proc_gedload_α
.Lx00160_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00160_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedscan_α
proc_gedscan_α:
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rcx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              qword ptr [rsp + 1352], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1328
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
proc_gedscan_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00161_disjunction_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0
                                                                                        jmp   n00162_var_ref_α
n00161_disjunction_as:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        jne   .Lx00163_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00164_var_α
.Lx00163_0:
                                                                                        jmp   n00164_var_α
n00161_disjunction_β:
                        mov              eax, dword ptr [rbp + 1072]
                                                                                        jmp   n00164_var_α
n00161_disjunction_af:
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                                                                                        jmp   n00164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00162_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                                # gedscan__INITFLAG__0
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00165_nulltest_var_α
n00162_var_ref_β:
                                                                                        jmp   n00161_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00165_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 104
                                                                                        je    n00161_disjunction_af
                        mov              rdi, qword ptr [rbp + 1184]                    # d
                        mov              rsi, qword ptr [rbp + 1192]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00161_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00161_disjunction_af
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00167_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00168_assign_var_α
.Lx00167_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00168_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # var
                        mov              rsi, qword ptr [rbp + 1208]                    # var
                        mov              rdx, qword ptr [rbp + 1232]                    # val
                        mov              rcx, qword ptr [rbp + 1240]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00161_disjunction_af
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n00169_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_lit_charset_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], -1
                        mov              rax, qword ptr [rip + .Lx00170_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00171_lit_charset_α
.Lx00170_0:
                        .quad            .Lx00170_0_s
.Lx00170_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00171_lit_charset_α:
                        mov              qword ptr [rbp + 1152], 2                      # result
                        mov              dword ptr [rbp + 1156], -1
                        mov              rax, qword ptr [rip + .Lx00172_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00173_binop_α
.Lx00172_0:
                        .quad            .Lx00172_0_s
.Lx00172_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00173_binop_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n00164_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00174_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_lit_charset_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx00175_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00176_binop_α
.Lx00175_0:
                        .quad            .Lx00175_0_s
.Lx00175_0_s:
                        .string          "_"
#-----------------------------------------------------------------------------------------------------------------------
n00176_binop_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n00164_var_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00177_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00177_assign_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [1879052304], rax                    # gedscan__STATIC__alnum
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00161_disjunction_as
n00177_assign_β:
                                                                                        jmp   n00164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00178_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00178_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # lo
                        mov              rsi, qword ptr [rbp + 1048]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00179_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00179_lit_charset_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx00180_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n00181_scan_many_α
.Lx00180_0:
                        .quad            .Lx00180_0_s
.Lx00180_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00181_scan_many_α:
                        mov              eax, r14d
.Lx00182_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00182_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00182_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00182_1
                        add              eax, 1
                                                                                        jmp   .Lx00182_0
.Lx00182_1:
                        cmp              eax, r14d
                                                                                        je    n00183_disjunction_α
                        mov              qword ptr [rbp + 1008], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1016], rcx
                                                                                        jmp   n00184_scan_tab_α
n00181_scan_many_β:
                                                                                        jmp   n00183_disjunction_α
.Lx00182_2:
                        .quad            .Lx00182_2_s
.Lx00182_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00184_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1016]
                        cmp              rax, 1
                                                                                        jge   .Lx00185_0
                        add              rax, r15
                        add              rax, 1
.Lx00185_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00185_239
                        add              rsp, 16
                                                                                        jmp   n00183_disjunction_α
.Lx00185_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00185_240
                        add              rsp, 16
                                                                                        jmp   n00183_disjunction_α
.Lx00185_240:
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
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00183_disjunction_α
n00184_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00183_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00183_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n00186_lit_charset_α
n00183_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx00187_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00188_assign_α
.Lx00187_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00187_1
                                                                                        jmp   n00188_assign_α
.Lx00187_1:
                                                                                        jmp   n00188_assign_α
n00183_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        je    n00183_disjunction_af
                                                                                        jmp   n00183_disjunction_af
n00183_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1
                                                                                        je    proc_gedscan_ω
                                                                                        jmp   n00189_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00188_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n00189_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00189_lit_charset_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], -1
                        mov              rax, qword ptr [rip + .Lx00190_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00191_scan_many_α
.Lx00190_0:
                        .quad            .Lx00190_0_s
.Lx00190_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00191_scan_many_α:
                        mov              eax, r14d
.Lx00192_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00192_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00192_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00192_1
                        add              eax, 1
                                                                                        jmp   .Lx00192_0
.Lx00192_1:
                        cmp              eax, r14d
                                                                                        je    n00193_disjunction_α
                        mov              qword ptr [rbp + 848], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 856], rcx
                                                                                        jmp   n00194_scan_tab_α
n00191_scan_many_β:
                                                                                        jmp   n00193_disjunction_α
.Lx00192_2:
                        .quad            .Lx00192_2_s
.Lx00192_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00194_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 856]
                        cmp              rax, 1
                                                                                        jge   .Lx00195_0
                        add              rax, r15
                        add              rax, 1
.Lx00195_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00195_239
                        add              rsp, 16
                                                                                        jmp   n00193_disjunction_α
.Lx00195_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00195_240
                        add              rsp, 16
                                                                                        jmp   n00193_disjunction_α
.Lx00195_240:
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
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00193_disjunction_α
n00194_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00193_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00193_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n00196_scan_sequence_α
n00193_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx00197_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00198_disjunction_α
.Lx00197_0:
                                                                                        jmp   n00198_disjunction_α
n00193_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n00198_disjunction_α
n00193_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n00198_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00196_scan_sequence_α:
                        mov              dword ptr [rbp + 592], r14d
                        mov              dword ptr [rbp + 596], 0
                                                                                        jmp   n00199_lit_string_α
n00196_scan_sequence_as:
                        mov              eax, dword ptr [rbp + 596]
                        add              eax, 1
                        mov              dword ptr [rbp + 596], eax
                        cmp              eax, 1
                                                                                        je    n00200_lit_charset_α
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        push             r10
                        push             r10
                        mov              rdi, rax                                       # a
                        mov              rsi, rdx                                       # a
                        mov              rdx, qword ptr [rbp + 688]                     # b
                        mov              rcx, qword ptr [rbp + 696]                     # b
                        call             str_concat_d@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00201_assign_α
n00196_scan_sequence_β:
                        mov              dword ptr [rbp + 596], 2
n00196_scan_sequence_af:
                        mov              eax, dword ptr [rbp + 596]
                        sub              eax, 1
                        mov              dword ptr [rbp + 596], eax
                        cmp              eax, 0
                                                                                        je    n00202_scan_tab_β
                        cmp              eax, 1
                                                                                        je    n00203_scan_tab_β
                                                                                        jmp   n00193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00201_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n00204_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00204_lit_charset_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], -1
                        mov              rax, qword ptr [rip + .Lx00205_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00206_scan_many_α
.Lx00205_0:
                        .quad            .Lx00205_0_s
.Lx00205_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00206_scan_many_α:
                        mov              eax, r14d
.Lx00207_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00207_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00207_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00207_1
                        add              eax, 1
                                                                                        jmp   .Lx00207_0
.Lx00207_1:
                        cmp              eax, r14d
                                                                                        je    n00198_disjunction_α
                        mov              qword ptr [rbp + 544], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 552], rcx
                                                                                        jmp   n00208_scan_tab_α
n00206_scan_many_β:
                                                                                        jmp   n00198_disjunction_α
.Lx00207_2:
                        .quad            .Lx00207_2_s
.Lx00207_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00208_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 552]
                        cmp              rax, 1
                                                                                        jge   .Lx00209_0
                        add              rax, r15
                        add              rax, 1
.Lx00209_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00209_239
                        add              rsp, 16
                                                                                        jmp   n00198_disjunction_α
.Lx00209_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00209_240
                        add              rsp, 16
                                                                                        jmp   n00198_disjunction_α
.Lx00209_240:
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n00193_disjunction_as
n00208_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00198_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00198_disjunction_α:
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              dword ptr [rbp + 400], 0
                                                                                        jmp   n00210_var_α
n00198_disjunction_as:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        jne   .Lx00211_0
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00212_assign_α
.Lx00211_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00211_1
                                                                                        jmp   n00212_assign_α
.Lx00211_1:
                                                                                        jmp   n00212_assign_α
n00198_disjunction_β:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        je    n00198_disjunction_af
                                                                                        jmp   n00198_disjunction_af
n00198_disjunction_af:
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 1
                                                                                        je    proc_gedscan_ω
                                                                                        jmp   n00213_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00212_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n00213_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_charset_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], -1
                        mov              rax, qword ptr [rip + .Lx00214_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00215_scan_many_α
.Lx00214_0:
                        .quad            .Lx00214_0_s
.Lx00214_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00215_scan_many_α:
                        mov              eax, r14d
.Lx00216_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00216_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00216_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00216_1
                        add              eax, 1
                                                                                        jmp   .Lx00216_0
.Lx00216_1:
                        cmp              eax, r14d
                                                                                        je    n00217_lit_integer_α
                        mov              qword ptr [rbp + 352], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 360], rcx
                                                                                        jmp   n00218_scan_tab_α
n00215_scan_many_β:
                                                                                        jmp   n00217_lit_integer_α
.Lx00216_2:
                        .quad            .Lx00216_2_s
.Lx00216_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00218_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 360]
                        cmp              rax, 1
                                                                                        jge   .Lx00219_0
                        add              rax, r15
                        add              rax, 1
.Lx00219_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00219_239
                        add              rsp, 16
                                                                                        jmp   n00217_lit_integer_α
.Lx00219_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00219_240
                        add              rsp, 16
                                                                                        jmp   n00217_lit_integer_α
.Lx00219_240:
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
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00217_lit_integer_α
n00218_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00217_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00220_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00221_scan_tab_α
.Lx00220_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00221_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00222_0
                        add              rax, r15
                        add              rax, 1
.Lx00222_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00222_239
                        add              rsp, 16
                                                                                        jmp   n00223_var_α
.Lx00222_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00222_240
                        add              rsp, 16
                                                                                        jmp   n00223_var_α
.Lx00222_240:
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00224_assign_α
n00221_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n00223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00223_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00225_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00225_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00226_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00228_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00228_call_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn527:              .string          "gednode"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn527]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00229_240
                        add              rsp, 1168
                                                                                        jmp   proc_gedscan_ω
.Lx00229_240:
                                                                                        jmp   n00230_return_α
n00228_call_β:
                        add              rsp, 1168
                                                                                        jmp   proc_gedscan_ω
#-----------------------------------------------------------------------------------------------------------------------
n00230_return_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 1168
                                                                                        jmp   proc_gedscan_γ
#-----------------------------------------------------------------------------------------------------------------------
n00210_var_α:
                        mov              rax, qword ptr [1879052304]                    # gedscan__STATIC__alnum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 464], rax                     # result
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00231_scan_many_α
n00210_var_β:
                                                                                        jmp   n00198_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00231_scan_many_α:
                        mov              eax, r14d
.Lx00232_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00232_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 472]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00232_1
                        add              eax, 1
                                                                                        jmp   .Lx00232_0
.Lx00232_1:
                        cmp              eax, r14d
                                                                                        je    n00198_disjunction_af
                        mov              qword ptr [rbp + 448], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 456], rcx
                                                                                        jmp   n00233_scan_tab_α
n00231_scan_many_β:
                                                                                        jmp   n00198_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00233_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 456]
                        cmp              rax, 1
                                                                                        jge   .Lx00234_0
                        add              rax, r15
                        add              rax, 1
.Lx00234_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00234_239
                        add              rsp, 16
                                                                                        jmp   n00198_disjunction_af
.Lx00234_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00234_240
                        add              rsp, 16
                                                                                        jmp   n00198_disjunction_af
.Lx00234_240:
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
                                                                                        jmp   n00198_disjunction_as
n00233_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00198_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00200_lit_charset_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00235_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00236_scan_upto_α
n00200_lit_charset_β:
                                                                                        jmp   n00196_scan_sequence_af
.Lx00235_0:
                        .quad            .Lx00235_0_s
.Lx00235_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00236_scan_upto_α:
                        mov              qword ptr [rbp + 768], r14
.Lx00237_0:
                        mov              rax, qword ptr [rbp + 768]
                        cmp              rax, r15
                                                                                        jge   n00196_scan_sequence_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00237_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00237_1
                        mov              qword ptr [rbp + 752], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00238_lit_integer_α
.Lx00237_1:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00237_0
n00236_scan_upto_β:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00237_0
.Lx00237_2:
                        .quad            .Lx00237_2_s
.Lx00237_2_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00238_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00239_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00240_coerce_numeric_α
.Lx00239_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00240_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 5
                                                                                        je    .Lx00241_1
                        cmp              eax, 3
                                                                                        jne   .Lx00241_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 3
                                                                                        jne   .Lx00241_0
.Lx00241_1:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00242_binop_α
.Lx00241_0:
                        lea              rdi, [rbp + 752]                               # self
                        lea              rsi, [rbp + 800]                               # other
                        lea              rdx, [rbp + 736]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00242_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00242_binop_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 3
                                                                                        jne   .Lx00243_0
                        mov              rax, qword ptr [rbp + 744]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 720], 3
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00203_scan_tab_α
.Lx00243_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00196_scan_sequence_af
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n00203_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n00203_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 728]
                        cmp              rax, 1
                                                                                        jge   .Lx00244_0
                        add              rax, r15
                        add              rax, 1
.Lx00244_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00244_239
                        add              rsp, 16
                                                                                        jmp   n00236_scan_upto_β
.Lx00244_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00244_240
                        add              rsp, 16
                                                                                        jmp   n00236_scan_upto_β
.Lx00244_240:
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00196_scan_sequence_as
n00203_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00236_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00199_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Lx00245_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00246_scan_match_α
n00199_lit_string_β:
                                                                                        jmp   n00196_scan_sequence_af
.Lx00245_0:
                        .quad            .Lx00245_0_s
.Lx00245_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00246_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00247_239
                        add              rsp, 16
                                                                                        jmp   n00196_scan_sequence_af
.Lx00247_239:
                        mov              rdi, qword ptr [rip + .Lx00247_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00247_240
                        add              rsp, 16
                                                                                        jmp   n00196_scan_sequence_af
.Lx00247_240:
                        mov              qword ptr [rbp + 640], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00202_scan_tab_α
.Lx00247_0:
                        .quad            .Lx00247_0_s
.Lx00247_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00202_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 648]
                        cmp              rax, 1
                                                                                        jge   .Lx00248_0
                        add              rax, r15
                        add              rax, 1
.Lx00248_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00248_239
                        add              rsp, 16
                                                                                        jmp   n00196_scan_sequence_af
.Lx00248_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00248_240
                        add              rsp, 16
                                                                                        jmp   n00196_scan_sequence_af
.Lx00248_240:
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
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00196_scan_sequence_as
n00202_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00196_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n00186_lit_charset_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], -1
                        mov              rax, qword ptr [rip + .Lx00249_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00250_scan_many_α
n00186_lit_charset_β:
                                                                                        jmp   n00183_disjunction_af
.Lx00249_0:
                        .quad            .Lx00249_0_s
.Lx00249_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00250_scan_many_α:
                        mov              eax, r14d
.Lx00251_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00251_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00251_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00251_1
                        add              eax, 1
                                                                                        jmp   .Lx00251_0
.Lx00251_1:
                        cmp              eax, r14d
                                                                                        je    n00183_disjunction_af
                        mov              qword ptr [rbp + 944], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 952], rcx
                                                                                        jmp   n00252_scan_tab_α
n00250_scan_many_β:
                                                                                        jmp   n00183_disjunction_af
.Lx00251_2:
                        .quad            .Lx00251_2_s
.Lx00251_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00252_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 952]
                        cmp              rax, 1
                                                                                        jge   .Lx00253_0
                        add              rax, r15
                        add              rax, 1
.Lx00253_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00253_239
                        add              rsp, 16
                                                                                        jmp   n00183_disjunction_af
.Lx00253_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00253_240
                        add              rsp, 16
                                                                                        jmp   n00183_disjunction_af
.Lx00253_240:
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n00183_disjunction_as
n00252_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00183_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_β:
                                                                                        jmp   proc_gedscan_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              rbp, qword ptr [rbp + 1352]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_ω:
                        lea              rsp, [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1352]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_dcα:
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
                        lea              rcx, [rip + .Lx00254_2]
                        lea              rdx, [rip + .Lx00254_3]
                                                                                        jmp   proc_gedscan_α
.Lx00254_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00254_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedwalk_α
proc_gedwalk_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, qword ptr [rbp + 248]
                        mov              rsi, qword ptr [rbp + 256]
                        call             rt_gen_save_wires@PLT
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, qword ptr [rbp + 264]
                        call             rt_gen_save_caller_rbp@PLT
proc_gedwalk_α_body:
                        lea              rax, [rip + n00255_suspend_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n00256_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00257_var_α
n00256_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00258_0
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00255_suspend_α
.Lx00258_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00258_1
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00255_suspend_α
.Lx00258_1:
                                                                                        jmp   n00255_suspend_α
n00256_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n00256_disjunction_af
                                                                                        jmp   n00259_proc_gen_β
n00256_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00260_var_α
                                                                                        jmp   proc_gedwalk_ω
#-----------------------------------------------------------------------------------------------------------------------
n00255_suspend_α:
                        lea              rdi, [rip + n00255_suspend_β]
                        call             rt_gen_save_cont@PLT
                        lea              rax, [rip + n00255_suspend_β]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 176
                                                                                        jmp   proc_gedwalk_γ
n00255_suspend_β:
                        sub              rsp, 176
                                                                                        jmp   n00256_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00260_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00261_field_get_α
n00260_var_β:
                                                                                        jmp   n00256_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00261_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00262_0]                # fname
                        mov              rsi, qword ptr [rbp + 192]                     # obj
                        mov              rdx, qword ptr [rbp + 200]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00256_disjunction_af
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n00263_iterate_α
.Lx00262_0:
                        .quad            .Lx00262_0_s
.Lx00262_0_s:
                        .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00263_iterate_α:
                        mov              qword ptr [rbp + 160], 0
.Lx00264_0:
                        mov              rdi, qword ptr [rbp + 176]                     # obj
                        mov              rsi, qword ptr [rbp + 184]                     # obj
                        mov              rdx, qword ptr [rbp + 160]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              rax, 99
                                                                                        je    n00256_disjunction_af
                                                                                        jmp   n00259_proc_gen_α
n00263_iterate_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx00264_0
#-----------------------------------------------------------------------------------------------------------------------
n00259_proc_gen_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00265_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00265_21
.Lx00265_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx00265_21:
                        mov              edi, 5                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00265_1
                        lea              rcx, [rip + .Lx00265_3]
                        lea              rdx, [rip + .Lx00265_4]
                                                                                        jmp   rax
.Lx00265_3:
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx00265_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00265_2
.Lx00265_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00265_2
.Lx00265_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx00265_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00265_2
.Lx00265_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00265_2
.Lx00265_1:
                        call             rt_faildescr@PLT
.Lx00265_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n00263_iterate_β
                                                                                        jmp   n00256_disjunction_as
n00259_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00265_0:
                        .quad            .Lx00265_0_s
.Lx00265_0_s:
                        .string          "gedwalk"
#-----------------------------------------------------------------------------------------------------------------------
n00257_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00256_disjunction_as
n00257_var_β:
                                                                                        jmp   n00256_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_gedwalk_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedwalk_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_gedwalk_γ:
                        mov              r14, rbp
                        call             rt_gen_get_gamma_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                        mov              rdi, qword ptr [r14 + 0]
                        mov              rsi, qword ptr [r14 + 8]
                        mov              rax, r14
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
proc_gedwalk_ω:
                        call             rt_gen_get_omega_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedsub_α
proc_gedsub_α:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rbp
                        mov              rbp, rsp
                        mov              rdi, qword ptr [rbp + 744]
                        mov              rsi, qword ptr [rbp + 752]
                        call             rt_gen_save_wires@PLT
                        mov              rdi, rbp
                        mov              esi, 672
                        mov              edx, 736
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, qword ptr [rbp + 760]
                        call             rt_gen_save_caller_rbp@PLT
proc_gedsub_α_body:
                        lea              rax, [rip + n00266_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n00267_disjunction_α:
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              dword ptr [rbp + 592], 0
                                                                                        jmp   n00268_var_α
n00267_disjunction_as:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        jne   .Lx00269_0
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00270_assign_α
.Lx00269_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00269_1
                                                                                        jmp   n00270_assign_α
.Lx00269_1:
                                                                                        jmp   n00270_assign_α
n00267_disjunction_β:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        je    n00267_disjunction_af
                                                                                        jmp   n00267_disjunction_af
n00267_disjunction_af:
                        add              dword ptr [rbp + 592], 1
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 1
                                                                                        je    proc_gedsub_ω
                                                                                        jmp   n00271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00270_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00272_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00272_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00273_0]                # fname
                        mov              rsi, qword ptr [rbp + 112]                     # obj
                        mov              rdx, qword ptr [rbp + 120]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00273_240
                        add              rsp, 624
                                                                                        jmp   proc_gedsub_ω
.Lx00273_240:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00274_iterate_α
.Lx00273_0:
                        .quad            .Lx00273_0_s
.Lx00273_0_s:
                        .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00274_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00275_0:
                        mov              rdi, qword ptr [rbp + 96]                      # obj
                        mov              rsi, qword ptr [rbp + 104]                     # obj
                        mov              rdx, qword ptr [rbp + 80]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx00275_240
                        add              rsp, 624
                                                                                        jmp   proc_gedsub_ω
.Lx00275_240:
                                                                                        jmp   n00276_assign_α
n00274_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx00275_0
#-----------------------------------------------------------------------------------------------------------------------
n00276_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00277_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00277_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n00278_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_disjunction_α:
                        mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0
                                                                                        jmp   n00279_var_α
n00278_disjunction_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0
                                                                                        jne   .Lx00280_0
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00281_unmark_α
.Lx00280_0:
                                                                                        jmp   n00281_unmark_α
n00278_disjunction_β:
                        mov              eax, dword ptr [rbp + 192]
                                                                                        jmp   n00282_disjunction_β
n00278_disjunction_af:
                        add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                                                                                        jmp   n00281_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00279_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00283_field_get_α
n00279_var_β:
                                                                                        jmp   n00278_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00283_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00284_0]                # fname
                        mov              rsi, qword ptr [rbp + 544]                     # obj
                        mov              rdx, qword ptr [rbp + 552]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00278_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00285_var_α
.Lx00284_0:
                        .quad            .Lx00284_0_s
.Lx00284_0_s:
                        .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n00285_var_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00286_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_binop_test_α:
                        mov              rdi, qword ptr [rbp + 528]                     # lhs
                        mov              rsi, qword ptr [rbp + 536]                     # lhs
                        mov              rdx, qword ptr [rbp + 704]                     # rhs
                        mov              rcx, qword ptr [rbp + 712]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00278_disjunction_af
                        mov              rdi, qword ptr [rbp + 704]                     # d
                        mov              rsi, qword ptr [rbp + 712]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n00282_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00282_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n00287_var_α
n00282_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx00288_0
                                                                                        jmp   n00278_disjunction_as
.Lx00288_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00288_1
                                                                                        jmp   n00278_disjunction_as
.Lx00288_1:
                                                                                        jmp   n00278_disjunction_as
n00282_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        je    n00289_call_value_β
                                                                                        jmp   n00281_unmark_α
n00282_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 1
                                                                                        je    n00290_var_α
                                                                                        jmp   n00281_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00266_suspend_α
n00290_var_β:
                                                                                        jmp   n00281_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_suspend_α:
                        lea              rdi, [rip + n00266_suspend_β]
                        call             rt_gen_save_cont@PLT
                        lea              rax, [rip + n00266_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedsub_γ
n00266_suspend_β:
                                                                                        jmp   n00282_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00291_unop_α
n00287_var_β:
                                                                                        jmp   n00282_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00291_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00292_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00293_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00294_binop_test_α
.Lx00293_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00294_binop_test_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 112
                                                                                        je    .Lx00295_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 112
                                                                                        je    .Lx00295_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx00295_2
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx00295_2
.Lx00295_1:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, qword ptr [rbp + 488]
                        cmp              rax, rcx
                                                                                        jle   n00282_disjunction_af
                        mov              rcx, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rcx
                        mov              rcx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rcx
                                                                                        jmp   n00296_lit_string_α
.Lx00295_0:
                        mov              rdi, qword ptr [rbp + 448]                     # a
                        mov              rsi, qword ptr [rbp + 456]                     # a
                        mov              rdx, qword ptr [rbp + 480]                     # b
                        mov              rcx, qword ptr [rbp + 488]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 432]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00295_1
                        cmp              eax, 1
                                                                                        je    n00282_disjunction_af
                                                                                        jmp   n00296_lit_string_α
.Lx00295_2:
                        mov              rdi, qword ptr [rbp + 448]                     # lhs
                        mov              rsi, qword ptr [rbp + 456]                     # lhs
                        mov              rdx, qword ptr [rbp + 480]                     # rhs
                        mov              rcx, qword ptr [rbp + 488]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00282_disjunction_af
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00296_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00296_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 6
                        mov              rax, qword ptr [rip + .Lx00297_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00298_var_α
.Lx00297_0:
                        .quad            .Lx00297_0_s
.Lx00297_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00299_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00299_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00300_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00300_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn638:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn638]                         # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n00281_unmark_α
                                                                                        jmp   n00289_call_value_α
n00300_call_builtin_icon_β:
                                                                                        jmp   n00281_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00289_call_value_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                        mov              qword ptr [rbp + 288], 0
                        mov              rdi, qword ptr [rbp + 240]                     # callee
                        mov              rsi, qword ptr [rbp + 248]                     # callee
                        mov              rdx, qword ptr [rbp + 272]                     # lv
                        mov              rcx, qword ptr [rbp + 280]                     # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00301_7
                        lea              rcx, [rip + .Lx00301_3]
                        lea              rdx, [rip + .Lx00301_4]
                                                                                        jmp   rax
.Lx00301_3:
                        mov              qword ptr [rbp + 296], rsp
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx00301_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00301_2
.Lx00301_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00301_2
.Lx00301_4:
                        mov              qword ptr [rbp + 296], rsp
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx00301_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00301_2
.Lx00301_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00301_2
.Lx00301_7:
                        mov              rdi, qword ptr [rbp + 240]                     # callee
                        mov              rsi, qword ptr [rbp + 248]                     # callee
                        mov              rdx, qword ptr [rbp + 272]                     # lv
                        mov              rcx, qword ptr [rbp + 280]                     # lv
                        lea              r8, [rbp + 288]                                # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx00301_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n00281_unmark_α
                                                                                        jmp   n00302_suspend_α
n00289_call_value_β:
                        mov              rax, qword ptr [rbp + 288]
                        cmp              rax, 1
                                                                                        jne   .Lx00301_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 296]
                                                                                        jmp   qword ptr [rsp]
.Lx00301_8:
                        lea              rdi, [rbp + 288]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n00281_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00302_suspend_α
                                                                                        jmp   n00281_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00302_suspend_α:
                        lea              rdi, [rip + n00302_suspend_β]
                        call             rt_gen_save_cont@PLT
                        lea              rax, [rip + n00302_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedsub_γ
n00302_suspend_β:
                                                                                        jmp   n00289_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n00281_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n00274_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00303_call_builtin_icon_α
n00268_var_β:
                                                                                        jmp   n00267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn648:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn648]                         # fn
                        lea              rsi, [rbp + 624]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n00267_disjunction_af
                                                                                        jmp   n00267_disjunction_as
n00303_call_builtin_icon_β:
                                                                                        jmp   n00267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_gedsub_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedsub_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_gedsub_γ:
                        mov              r14, rbp
                        call             rt_gen_get_gamma_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                        mov              rdi, qword ptr [r14 + 0]
                        mov              rsi, qword ptr [r14 + 8]
                        mov              rax, r14
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
proc_gedsub_ω:
                        call             rt_gen_get_omega_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedval_α
proc_gedval_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, qword ptr [rbp + 200]
                        mov              rsi, qword ptr [rbp + 208]
                        call             rt_gen_save_wires@PLT
                        mov              rdi, rbp
                        mov              esi, 160
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, qword ptr [rbp + 216]
                        call             rt_gen_save_caller_rbp@PLT
proc_gedval_α_body:
                        lea              rax, [rip + n00304_suspend_β]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n00305_lit_string_α:
                        sub              rsp, 128
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
                        mov              qword ptr [rbp + 48], 2                        # result
                        mov              dword ptr [rbp + 52], 6
                        mov              rax, qword ptr [rip + .Lx00306_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00307_var_α
.Lx00306_0:
                        .quad            .Lx00306_0_s
.Lx00306_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00307_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00308_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n00308_call_value_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
                        mov              rdi, qword ptr [rbp + 48]                      # callee
                        mov              rsi, qword ptr [rbp + 56]                      # callee
                        mov              rdx, qword ptr [rbp + 80]                      # lv
                        mov              rcx, qword ptr [rbp + 88]                      # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00309_7
                        lea              rcx, [rip + .Lx00309_3]
                        lea              rdx, [rip + .Lx00309_4]
                                                                                        jmp   rax
.Lx00309_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx00309_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00309_2
.Lx00309_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00309_2
.Lx00309_4:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx00309_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00309_2
.Lx00309_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00309_2
.Lx00309_7:
                        mov              rdi, qword ptr [rbp + 48]                      # callee
                        mov              rsi, qword ptr [rbp + 56]                      # callee
                        mov              rdx, qword ptr [rbp + 80]                      # lv
                        mov              rcx, qword ptr [rbp + 88]                      # lv
                        lea              r8, [rbp + 96]                                 # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx00309_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00309_239
                        add              rsp, 128
                                                                                        jmp   proc_gedval_ω
.Lx00309_239:
                                                                                        jmp   n00310_field_get_α
n00308_call_value_β:
                        mov              rax, qword ptr [rbp + 96]
                        cmp              rax, 1
                                                                                        jne   .Lx00309_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx00309_8:
                        lea              rdi, [rbp + 96]                                # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00309_240
                        add              rsp, 128
                                                                                        jmp   proc_gedval_ω
.Lx00309_240:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00310_field_get_α
                        add              rsp, 128
                                                                                        jmp   proc_gedval_ω
#-----------------------------------------------------------------------------------------------------------------------
n00310_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00311_0]                # fname
                        mov              rsi, qword ptr [rbp + 64]                      # obj
                        mov              rdx, qword ptr [rbp + 72]                      # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00311_240
                        add              rsp, 128
                                                                                        jmp   proc_gedval_ω
.Lx00311_240:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00304_suspend_α
.Lx00311_0:
                        .quad            .Lx00311_0_s
.Lx00311_0_s:
                        .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n00304_suspend_α:
                        lea              rdi, [rip + n00304_suspend_β]
                        call             rt_gen_save_cont@PLT
                        lea              rax, [rip + n00304_suspend_β]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 128
                                                                                        jmp   proc_gedval_γ
n00304_suspend_β:
                        sub              rsp, 128
                                                                                        jmp   n00308_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gedval_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedval_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_gedval_γ:
                        mov              r14, rbp
                        call             rt_gen_get_gamma_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                        mov              rdi, qword ptr [r14 + 0]
                        mov              rsi, qword ptr [r14 + 8]
                        mov              rax, r14
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
proc_gedval_ω:
                        call             rt_gen_get_omega_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedref_α
proc_gedref_α:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, qword ptr [rbp + 216]
                        mov              rsi, qword ptr [rbp + 224]
                        call             rt_gen_save_wires@PLT
                        mov              rdi, rbp
                        mov              esi, 176
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, qword ptr [rbp + 232]
                        call             rt_gen_save_caller_rbp@PLT
proc_gedref_α_body:
                        lea              rax, [rip + n00312_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n00313_lit_string_α:
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
                        mov              qword ptr [rbp + 64], 2                        # result
                        mov              dword ptr [rbp + 68], 6
                        mov              rax, qword ptr [rip + .Lx00314_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00315_var_α
.Lx00314_0:
                        .quad            .Lx00314_0_s
.Lx00314_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00316_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n00316_call_value_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 0
                        mov              rdi, qword ptr [rbp + 64]                      # callee
                        mov              rsi, qword ptr [rbp + 72]                      # callee
                        mov              rdx, qword ptr [rbp + 96]                      # lv
                        mov              rcx, qword ptr [rbp + 104]                     # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00317_7
                        lea              rcx, [rip + .Lx00317_3]
                        lea              rdx, [rip + .Lx00317_4]
                                                                                        jmp   rax
.Lx00317_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx00317_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00317_2
.Lx00317_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00317_2
.Lx00317_4:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx00317_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00317_2
.Lx00317_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00317_2
.Lx00317_7:
                        mov              rdi, qword ptr [rbp + 64]                      # callee
                        mov              rsi, qword ptr [rbp + 72]                      # callee
                        mov              rdx, qword ptr [rbp + 96]                      # lv
                        mov              rcx, qword ptr [rbp + 104]                     # lv
                        lea              r8, [rbp + 112]                                # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx00317_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00317_239
                        add              rsp, 144
                                                                                        jmp   proc_gedref_ω
.Lx00317_239:
                                                                                        jmp   n00318_field_get_α
n00316_call_value_β:
                        mov              rax, qword ptr [rbp + 112]
                        cmp              rax, 1
                                                                                        jne   .Lx00317_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx00317_8:
                        lea              rdi, [rbp + 112]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00317_240
                        add              rsp, 144
                                                                                        jmp   proc_gedref_ω
.Lx00317_240:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00318_field_get_α
                        add              rsp, 144
                                                                                        jmp   proc_gedref_ω
#-----------------------------------------------------------------------------------------------------------------------
n00318_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00319_0]                # fname
                        mov              rsi, qword ptr [rbp + 80]                      # obj
                        mov              rdx, qword ptr [rbp + 88]                      # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00319_240
                        add              rsp, 144
                                                                                        jmp   proc_gedref_ω
.Lx00319_240:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00320_unop_test_α
.Lx00319_0:
                        .quad            .Lx00319_0_s
.Lx00319_0_s:
                        .string          "ref"
#-----------------------------------------------------------------------------------------------------------------------
n00320_unop_test_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 104
                                                                                        je    n00316_call_value_β
                        cmp              eax, 0
                                                                                        je    n00316_call_value_β
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00312_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n00312_suspend_α:
                        lea              rdi, [rip + n00312_suspend_β]
                        call             rt_gen_save_cont@PLT
                        lea              rax, [rip + n00312_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 144
                                                                                        jmp   proc_gedref_γ
n00312_suspend_β:
                        sub              rsp, 144
                                                                                        jmp   n00316_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gedref_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedref_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_gedref_γ:
                        mov              r14, rbp
                        call             rt_gen_get_gamma_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                        mov              rdi, qword ptr [r14 + 0]
                        mov              rsi, qword ptr [r14 + 8]
                        mov              rax, r14
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
proc_gedref_ω:
                        call             rt_gen_get_omega_wire@PLT
                        mov              r15, rax
                        call             rt_gen_get_caller_rbp@PLT
                        mov              rbp, rax
                                                                                        jmp   r15
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedfnf_α
proc_gedfnf_α:
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1224], rcx
                        mov              qword ptr [rsp + 1232], rdx
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1216
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
proc_gedfnf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00321_disjunction_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              dword ptr [rbp + 1024], 0
                                                                                        jmp   n00322_var_α
n00321_disjunction_as:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        jne   .Lx00323_0
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n00324_assign_α
.Lx00323_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00323_1
                                                                                        jmp   n00324_assign_α
.Lx00323_1:
                                                                                        jmp   n00324_assign_α
n00321_disjunction_β:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        je    n00325_proc_gen_β
                                                                                        jmp   n00321_disjunction_af
n00321_disjunction_af:
                        add              dword ptr [rbp + 1024], 1
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 1
                                                                                        je    proc_gedfnf_ω
                                                                                        jmp   n00326_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00326_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00326_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00327_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00327_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 992]                     # lo
                        mov              rsi, qword ptr [rbp + 1000]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00328_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_disjunction_α:
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0
                                                                                        jmp   n00329_lit_charset_α
n00328_disjunction_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        jne   .Lx00330_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00331_assign_α
.Lx00330_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00330_1
                                                                                        jmp   n00331_assign_α
.Lx00330_1:
                                                                                        jmp   n00331_assign_α
n00328_disjunction_β:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        je    n00332_scan_upto_β
                                                                                        jmp   n00328_disjunction_af
n00328_disjunction_af:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 1
                                                                                        je    n00333_lit_integer_α
                                                                                        jmp   n00334_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00331_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00334_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00334_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Lx00335_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00336_scan_match_α
.Lx00335_0:
                        .quad            .Lx00335_0_s
.Lx00335_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00336_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00337_239
                        add              rsp, 16
                                                                                        jmp   n00338_disjunction_α
.Lx00337_239:
                        mov              rdi, qword ptr [rip + .Lx00337_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00337_240
                        add              rsp, 16
                                                                                        jmp   n00338_disjunction_α
.Lx00337_240:
                        mov              qword ptr [rbp + 736], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00339_scan_tab_α
.Lx00337_0:
                        .quad            .Lx00337_0_s
.Lx00337_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00339_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 744]
                        cmp              rax, 1
                                                                                        jge   .Lx00340_0
                        add              rax, r15
                        add              rax, 1
.Lx00340_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00340_239
                        add              rsp, 16
                                                                                        jmp   n00338_disjunction_α
.Lx00340_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00340_240
                        add              rsp, 16
                                                                                        jmp   n00338_disjunction_α
.Lx00340_240:
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
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00338_disjunction_α
n00339_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00338_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00338_disjunction_α:
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0
                                                                                        jmp   n00341_lit_charset_α
n00338_disjunction_as:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        jne   .Lx00342_0
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00343_scan_tab_α
.Lx00342_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00342_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00343_scan_tab_α
.Lx00342_1:
                                                                                        jmp   n00343_scan_tab_α
n00338_disjunction_β:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        je    n00344_scan_upto_β
                                                                                        jmp   n00338_disjunction_af
n00338_disjunction_af:
                        add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 1
                                                                                        je    n00345_lit_integer_α
                                                                                        jmp   n00346_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 616]
                        cmp              rax, 1
                                                                                        jge   .Lx00347_0
                        add              rax, r15
                        add              rax, 1
.Lx00347_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00347_239
                        add              rsp, 16
                                                                                        jmp   n00338_disjunction_β
.Lx00347_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00347_240
                        add              rsp, 16
                                                                                        jmp   n00338_disjunction_β
.Lx00347_240:
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
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00348_assign_α
n00343_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00338_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00348_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00349_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00349_conjunction_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00350_scan_α
n00349_conjunction_β:
                                                                                        jmp   n00346_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00350_scan_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496]
                                                                                        jmp   n00351_disjunction_α
n00350_scan_β:
                                                                                        jmp   n00351_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00345_lit_integer_α:
                        mov              qword ptr [rbp + 688], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00352_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00338_disjunction_as
n00345_lit_integer_β:
                                                                                        jmp   n00338_disjunction_af
.Lx00352_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00341_lit_charset_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], -1
                        mov              rax, qword ptr [rip + .Lx00353_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00344_scan_upto_α
n00341_lit_charset_β:
                                                                                        jmp   n00338_disjunction_af
.Lx00353_0:
                        .quad            .Lx00353_0_s
.Lx00353_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00344_scan_upto_α:
                        mov              qword ptr [rbp + 656], r14
.Lx00354_0:
                        mov              rax, qword ptr [rbp + 656]
                        cmp              rax, r15
                                                                                        jge   n00338_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00354_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00354_1
                        mov              qword ptr [rbp + 640], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00338_disjunction_as
.Lx00354_1:
                        inc              qword ptr [rbp + 656]
                                                                                        jmp   .Lx00354_0
n00344_scan_upto_β:
                        inc              qword ptr [rbp + 656]
                                                                                        jmp   .Lx00354_0
.Lx00354_2:
                        .quad            .Lx00354_2_s
.Lx00354_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00333_lit_integer_α:
                        mov              qword ptr [rbp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00355_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00356_scan_tab_α
n00333_lit_integer_β:
                                                                                        jmp   proc_gedfnf_ω
.Lx00355_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00356_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00357_0
                        add              rax, r15
                        add              rax, 1
.Lx00357_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00357_239
                        add              rsp, 16
                                                                                        jmp   proc_gedfnf_ω
.Lx00357_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00357_240
                        add              rsp, 16
                                                                                        jmp   proc_gedfnf_ω
.Lx00357_240:
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
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n00358_return_α
n00356_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_gedfnf_ω
#-----------------------------------------------------------------------------------------------------------------------
n00358_return_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedfnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00329_lit_charset_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], -1
                        mov              rax, qword ptr [rip + .Lx00359_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n00332_scan_upto_α
n00329_lit_charset_β:
                                                                                        jmp   n00328_disjunction_af
.Lx00359_0:
                        .quad            .Lx00359_0_s
.Lx00359_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00332_scan_upto_α:
                        mov              qword ptr [rbp + 912], r14
.Lx00360_0:
                        mov              rax, qword ptr [rbp + 912]
                        cmp              rax, r15
                                                                                        jge   n00328_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00360_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00360_1
                        mov              qword ptr [rbp + 896], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00361_scan_tab_α
.Lx00360_1:
                        inc              qword ptr [rbp + 912]
                                                                                        jmp   .Lx00360_0
n00332_scan_upto_β:
                        inc              qword ptr [rbp + 912]
                                                                                        jmp   .Lx00360_0
.Lx00360_2:
                        .quad            .Lx00360_2_s
.Lx00360_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00361_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 904]
                        cmp              rax, 1
                                                                                        jge   .Lx00362_0
                        add              rax, r15
                        add              rax, 1
.Lx00362_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00362_239
                        add              rsp, 16
                                                                                        jmp   n00332_scan_upto_β
.Lx00362_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00362_240
                        add              rsp, 16
                                                                                        jmp   n00332_scan_upto_β
.Lx00362_240:
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
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00363_call_builtin_icon_α
n00361_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00332_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00363_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn765:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn765]                         # fn
                        lea              rsi, [rbp + 832]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n00332_scan_upto_β
                                                                                        jmp   n00328_disjunction_as
n00363_call_builtin_icon_β:
                                                                                        jmp   n00332_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00351_disjunction_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   n00364_var_α
n00351_disjunction_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx00365_0
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00366_var_α
.Lx00365_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00365_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00366_var_α
.Lx00365_1:
                                                                                        jmp   n00366_var_α
n00351_disjunction_β:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        je    n00366_var_α
                                                                                        jmp   n00366_var_α
n00351_disjunction_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1
                                                                                        je    n00367_var_α
                                                                                        jmp   n00366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00367_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00368_assign_α
n00367_var_β:
                                                                                        jmp   n00366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00368_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00351_disjunction_as
n00368_assign_β:
                                                                                        jmp   n00366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00369_unop_α
n00364_var_β:
                                                                                        jmp   n00351_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00369_unop_α:
                        mov              rdi, qword ptr [rbp + 1168]                    # lo
                        mov              rsi, qword ptr [rbp + 1176]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00370_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00371_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00372_binop_test_α
.Lx00371_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00372_binop_test_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 112
                                                                                        je    .Lx00373_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 112
                                                                                        je    .Lx00373_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx00373_2
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 3
                                                                                        jne   .Lx00373_2
.Lx00373_1:
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, qword ptr [rbp + 424]
                        cmp              rax, rcx
                                                                                        jle   n00351_disjunction_af
                        mov              rcx, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rcx
                        mov              rcx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rcx
                                                                                        jmp   n00374_var_α
.Lx00373_0:
                        mov              rdi, qword ptr [rbp + 384]                     # a
                        mov              rsi, qword ptr [rbp + 392]                     # a
                        mov              rdx, qword ptr [rbp + 416]                     # b
                        mov              rcx, qword ptr [rbp + 424]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 368]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00373_1
                        cmp              eax, 1
                                                                                        je    n00351_disjunction_af
                                                                                        jmp   n00374_var_α
.Lx00373_2:
                        mov              rdi, qword ptr [rbp + 384]                     # lhs
                        mov              rsi, qword ptr [rbp + 392]                     # lhs
                        mov              rdx, qword ptr [rbp + 416]                     # rhs
                        mov              rcx, qword ptr [rbp + 424]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00351_disjunction_af
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00374_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Lx00376_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00377_binop_α
.Lx00376_0:
                        .quad            .Lx00376_0_s
.Lx00376_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00377_binop_α:
                        mov              rdi, qword ptr [rbp + 1168]                    # a
                        mov              rsi, qword ptr [rbp + 1176]                    # a
                        mov              rdx, qword ptr [rbp + 336]                     # b
                        mov              rcx, qword ptr [rbp + 344]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00378_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00379_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00379_binop_α:
                        mov              rdi, qword ptr [rbp + 304]                     # a
                        mov              rsi, qword ptr [rbp + 312]                     # a
                        mov              rdx, qword ptr [rbp + 1184]                    # b
                        mov              rcx, qword ptr [rbp + 1192]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00380_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00351_disjunction_as
n00380_assign_β:
                                                                                        jmp   n00366_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00381_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Lx00382_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00383_var_α
.Lx00382_0:
                        .quad            .Lx00382_0_s
.Lx00382_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00383_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 4
                        mov              rax, qword ptr [rip + .Lx00385_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00386_proc_gen_α
.Lx00385_0:
                        .quad            .Lx00385_0_s
.Lx00385_0_s:
                        .string          "TITL"
#-----------------------------------------------------------------------------------------------------------------------
n00386_proc_gen_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00387_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00387_21
.Lx00387_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx00387_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00387_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00387_23
.Lx00387_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx00387_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00387_1
                        lea              rcx, [rip + .Lx00387_3]
                        lea              rdx, [rip + .Lx00387_4]
                                                                                        jmp   rax
.Lx00387_3:
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx00387_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00387_2
.Lx00387_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00387_2
.Lx00387_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx00387_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00387_2
.Lx00387_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00387_2
.Lx00387_1:
                        call             rt_faildescr@PLT
.Lx00387_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n00388_var_α
                                                                                        jmp   n00389_binop_α
n00386_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00387_0:
                        .quad            .Lx00387_0_s
.Lx00387_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00389_binop_α:
                        mov              rdi, qword ptr [rbp + 112]                     # a
                        mov              rsi, qword ptr [rbp + 120]                     # a
                        mov              rdx, qword ptr [rbp + 128]                     # b
                        mov              rcx, qword ptr [rbp + 136]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00390_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]                    # a
                        mov              rsi, qword ptr [rbp + 1160]                    # a
                        mov              rdx, qword ptr [rbp + 96]                      # b
                        mov              rcx, qword ptr [rbp + 104]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00391_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00388_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00392_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 1120
                                                                                        jmp   proc_gedfnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00322_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00393_lit_string_α
n00322_var_β:
                                                                                        jmp   n00321_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00393_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 4
                        mov              rax, qword ptr [rip + .Lx00394_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00325_proc_gen_α
.Lx00394_0:
                        .quad            .Lx00394_0_s
.Lx00394_0_s:
                        .string          "NAME"
#-----------------------------------------------------------------------------------------------------------------------
n00325_proc_gen_α:
                        mov              qword ptr [rbp + 1088], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00395_20
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00395_21
.Lx00395_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1120]                    # v
                        mov              rdx, qword ptr [rbp + 1128]                    # v
                        call             rt_arg_stage@PLT
.Lx00395_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00395_22
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00395_23
.Lx00395_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1136]                    # v
                        mov              rdx, qword ptr [rbp + 1144]                    # v
                        call             rt_arg_stage@PLT
.Lx00395_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00395_1
                        lea              rcx, [rip + .Lx00395_3]
                        lea              rdx, [rip + .Lx00395_4]
                                                                                        jmp   rax
.Lx00395_3:
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1088]
                        test             rax, rax
                                                                                        jne   .Lx00395_5
                        mov              qword ptr [rbp + 1088], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00395_2
.Lx00395_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00395_2
.Lx00395_4:
                        mov              rax, qword ptr [rbp + 1088]
                        test             rax, rax
                                                                                        jne   .Lx00395_6
                        mov              qword ptr [rbp + 1088], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00395_2
.Lx00395_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00395_2
.Lx00395_1:
                        call             rt_faildescr@PLT
.Lx00395_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n00321_disjunction_af
                                                                                        jmp   n00321_disjunction_as
n00325_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00395_0:
                        .quad            .Lx00395_0_s
.Lx00395_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00346_scan_α:
                        lea              rdi, [rbp + 480]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496]
                                                                                        jmp   n00351_disjunction_α
n00346_scan_β:
                                                                                        jmp   n00351_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_β:
                                                                                        jmp   proc_gedfnf_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              rbp, qword ptr [rbp + 1240]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_ω:
                        lea              rsp, [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1232]
                        mov              rbp, qword ptr [rbp + 1240]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_dcα:
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
                        lea              rcx, [rip + .Lx00396_2]
                        lea              rdx, [rip + .Lx00396_3]
                                                                                        jmp   proc_gedfnf_α
.Lx00396_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00396_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedlnf_α
proc_gedlnf_α:
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rcx
                        mov              qword ptr [rsp + 1088], rdx
                        mov              qword ptr [rsp + 1096], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1072
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
proc_gedlnf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00397_disjunction_α:
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              dword ptr [rbp + 880], 0
                                                                                        jmp   n00398_var_α
n00397_disjunction_as:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        jne   .Lx00399_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00400_assign_α
.Lx00399_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00399_1
                                                                                        jmp   n00400_assign_α
.Lx00399_1:
                                                                                        jmp   n00400_assign_α
n00397_disjunction_β:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        je    n00401_proc_gen_β
                                                                                        jmp   n00397_disjunction_af
n00397_disjunction_af:
                        add              dword ptr [rbp + 880], 1
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 1
                                                                                        je    proc_gedlnf_ω
                                                                                        jmp   n00402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00400_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00402_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00403_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 848]                     # lo
                        mov              rsi, qword ptr [rbp + 856]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00404_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n00405_lit_charset_α
n00404_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx00406_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00407_assign_α
.Lx00406_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00406_1
                                                                                        jmp   n00407_assign_α
.Lx00406_1:
                                                                                        jmp   n00407_assign_α
n00404_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    n00408_scan_upto_β
                                                                                        jmp   n00404_disjunction_af
n00404_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    n00409_lit_integer_α
                                                                                        jmp   n00410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00407_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n00410_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00410_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx00411_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00412_scan_match_α
.Lx00411_0:
                        .quad            .Lx00411_0_s
.Lx00411_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00412_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00413_239
                        add              rsp, 16
                                                                                        jmp   n00414_disjunction_α
.Lx00413_239:
                        mov              rdi, qword ptr [rip + .Lx00413_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00413_240
                        add              rsp, 16
                                                                                        jmp   n00414_disjunction_α
.Lx00413_240:
                        mov              qword ptr [rbp + 592], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00415_scan_tab_α
.Lx00413_0:
                        .quad            .Lx00413_0_s
.Lx00413_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00415_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 600]
                        cmp              rax, 1
                                                                                        jge   .Lx00416_0
                        add              rax, r15
                        add              rax, 1
.Lx00416_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00416_239
                        add              rsp, 16
                                                                                        jmp   n00414_disjunction_α
.Lx00416_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00416_240
                        add              rsp, 16
                                                                                        jmp   n00414_disjunction_α
.Lx00416_240:
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
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00414_disjunction_α
n00415_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00414_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00414_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00417_lit_charset_α
n00414_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00418_0
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00419_scan_tab_α
.Lx00418_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00418_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00419_scan_tab_α
.Lx00418_1:
                                                                                        jmp   n00419_scan_tab_α
n00414_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00420_scan_upto_β
                                                                                        jmp   n00414_disjunction_af
n00414_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00421_lit_integer_α
                                                                                        jmp   n00422_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00419_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 472]
                        cmp              rax, 1
                                                                                        jge   .Lx00423_0
                        add              rax, r15
                        add              rax, 1
.Lx00423_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00423_239
                        add              rsp, 16
                                                                                        jmp   n00414_disjunction_β
.Lx00423_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00423_240
                        add              rsp, 16
                                                                                        jmp   n00414_disjunction_β
.Lx00423_240:
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
                                                                                        jmp   n00424_assign_α
n00419_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00414_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00424_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00425_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00425_conjunction_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00426_scan_α
n00425_conjunction_β:
                                                                                        jmp   n00422_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00426_scan_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n00427_var_α
n00426_scan_β:
                                                                                        jmp   n00427_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00428_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00414_disjunction_as
n00421_lit_integer_β:
                                                                                        jmp   n00414_disjunction_af
.Lx00428_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00417_lit_charset_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], -1
                        mov              rax, qword ptr [rip + .Lx00429_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00420_scan_upto_α
n00417_lit_charset_β:
                                                                                        jmp   n00414_disjunction_af
.Lx00429_0:
                        .quad            .Lx00429_0_s
.Lx00429_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00420_scan_upto_α:
                        mov              qword ptr [rbp + 512], r14
.Lx00430_0:
                        mov              rax, qword ptr [rbp + 512]
                        cmp              rax, r15
                                                                                        jge   n00414_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00430_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00430_1
                        mov              qword ptr [rbp + 496], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00414_disjunction_as
.Lx00430_1:
                        inc              qword ptr [rbp + 512]
                                                                                        jmp   .Lx00430_0
n00420_scan_upto_β:
                        inc              qword ptr [rbp + 512]
                                                                                        jmp   .Lx00430_0
.Lx00430_2:
                        .quad            .Lx00430_2_s
.Lx00430_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00409_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00431_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00432_scan_tab_α
n00409_lit_integer_β:
                                                                                        jmp   proc_gedlnf_ω
.Lx00431_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00432_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00433_0
                        add              rax, r15
                        add              rax, 1
.Lx00433_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00433_239
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
.Lx00433_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00433_240
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
.Lx00433_240:
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
                                                                                        jmp   n00434_return_α
n00432_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
#-----------------------------------------------------------------------------------------------------------------------
n00434_return_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedlnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00405_lit_charset_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00435_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00408_scan_upto_α
n00405_lit_charset_β:
                                                                                        jmp   n00404_disjunction_af
.Lx00435_0:
                        .quad            .Lx00435_0_s
.Lx00435_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00408_scan_upto_α:
                        mov              qword ptr [rbp + 768], r14
.Lx00436_0:
                        mov              rax, qword ptr [rbp + 768]
                        cmp              rax, r15
                                                                                        jge   n00404_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00436_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00436_1
                        mov              qword ptr [rbp + 752], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00437_scan_tab_α
.Lx00436_1:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00436_0
n00408_scan_upto_β:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00436_0
.Lx00436_2:
                        .quad            .Lx00436_2_s
.Lx00436_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00437_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 760]
                        cmp              rax, 1
                                                                                        jge   .Lx00438_0
                        add              rax, r15
                        add              rax, 1
.Lx00438_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00438_239
                        add              rsp, 16
                                                                                        jmp   n00408_scan_upto_β
.Lx00438_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00438_240
                        add              rsp, 16
                                                                                        jmp   n00408_scan_upto_β
.Lx00438_240:
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
                                                                                        jmp   n00439_call_builtin_icon_α
n00437_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00408_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00439_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn887:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn887]                         # fn
                        lea              rsi, [rbp + 688]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n00408_scan_upto_β
                                                                                        jmp   n00404_disjunction_as
n00439_call_builtin_icon_β:
                                                                                        jmp   n00408_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00427_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00440_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00440_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 2
                        mov              rax, qword ptr [rip + .Lx00441_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00442_binop_α
.Lx00441_0:
                        .quad            .Lx00441_0_s
.Lx00441_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n00442_binop_α:
                        mov              rdi, qword ptr [rbp + 1024]                    # a
                        mov              rsi, qword ptr [rbp + 1032]                    # a
                        mov              rdx, qword ptr [rbp + 288]                     # b
                        mov              rcx, qword ptr [rbp + 296]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00443_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00443_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00444_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00444_binop_α:
                        mov              rdi, qword ptr [rbp + 256]                     # a
                        mov              rsi, qword ptr [rbp + 264]                     # a
                        mov              rdx, qword ptr [rbp + 1040]                    # b
                        mov              rcx, qword ptr [rbp + 1048]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00445_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00445_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00446_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00446_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00447_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00447_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Lx00448_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00449_var_α
.Lx00448_0:
                        .quad            .Lx00448_0_s
.Lx00448_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00449_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00450_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 4
                        mov              rax, qword ptr [rip + .Lx00451_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00452_proc_gen_α
.Lx00451_0:
                        .quad            .Lx00451_0_s
.Lx00451_0_s:
                        .string          "TITL"
#-----------------------------------------------------------------------------------------------------------------------
n00452_proc_gen_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00453_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00453_21
.Lx00453_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx00453_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00453_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00453_23
.Lx00453_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx00453_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00453_1
                        lea              rcx, [rip + .Lx00453_3]
                        lea              rdx, [rip + .Lx00453_4]
                                                                                        jmp   rax
.Lx00453_3:
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx00453_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00453_2
.Lx00453_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00453_2
.Lx00453_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx00453_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00453_2
.Lx00453_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00453_2
.Lx00453_1:
                        call             rt_faildescr@PLT
.Lx00453_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n00454_var_α
                                                                                        jmp   n00455_binop_α
n00452_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00453_0:
                        .quad            .Lx00453_0_s
.Lx00453_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00455_binop_α:
                        mov              rdi, qword ptr [rbp + 112]                     # a
                        mov              rsi, qword ptr [rbp + 120]                     # a
                        mov              rdx, qword ptr [rbp + 128]                     # b
                        mov              rcx, qword ptr [rbp + 136]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00456_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00456_binop_α:
                        mov              rdi, qword ptr [rbp + 1008]                    # a
                        mov              rsi, qword ptr [rbp + 1016]                    # a
                        mov              rdx, qword ptr [rbp + 96]                      # b
                        mov              rcx, qword ptr [rbp + 104]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00457_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00457_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00454_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00454_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00458_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00458_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 976
                                                                                        jmp   proc_gedlnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00398_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00459_lit_string_α
n00398_var_β:
                                                                                        jmp   n00397_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00459_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 4
                        mov              rax, qword ptr [rip + .Lx00460_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00401_proc_gen_α
.Lx00460_0:
                        .quad            .Lx00460_0_s
.Lx00460_0_s:
                        .string          "NAME"
#-----------------------------------------------------------------------------------------------------------------------
n00401_proc_gen_α:
                        mov              qword ptr [rbp + 944], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00461_20
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00461_21
.Lx00461_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 976]                     # v
                        mov              rdx, qword ptr [rbp + 984]                     # v
                        call             rt_arg_stage@PLT
.Lx00461_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00461_22
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00461_23
.Lx00461_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 992]                     # v
                        mov              rdx, qword ptr [rbp + 1000]                    # v
                        call             rt_arg_stage@PLT
.Lx00461_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00461_1
                        lea              rcx, [rip + .Lx00461_3]
                        lea              rdx, [rip + .Lx00461_4]
                                                                                        jmp   rax
.Lx00461_3:
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx00461_5
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00461_2
.Lx00461_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00461_2
.Lx00461_4:
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx00461_6
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00461_2
.Lx00461_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00461_2
.Lx00461_1:
                        call             rt_faildescr@PLT
.Lx00461_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n00397_disjunction_af
                                                                                        jmp   n00397_disjunction_as
n00401_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00461_0:
                        .quad            .Lx00461_0_s
.Lx00461_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00422_scan_α:
                        lea              rdi, [rbp + 336]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n00427_var_α
n00422_scan_β:
                                                                                        jmp   n00427_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_β:
                                                                                        jmp   proc_gedlnf_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              rbp, qword ptr [rbp + 1096]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_ω:
                        lea              rsp, [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1096]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_dcα:
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
                        lea              rcx, [rip + .Lx00462_2]
                        lea              rdx, [rip + .Lx00462_3]
                                                                                        jmp   proc_gedlnf_α
.Lx00462_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00462_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_geddate_α
proc_geddate_α:
                        sub              rsp, 2688
                        mov              qword ptr [rsp + 2664], rcx
                        mov              qword ptr [rsp + 2672], rdx
                        mov              qword ptr [rsp + 2680], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2656
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
proc_geddate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00463_disjunction_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0
                                                                                        jmp   n00464_var_ref_α
n00463_disjunction_as:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        jne   .Lx00465_0
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n00466_disjunction_α
.Lx00465_0:
                                                                                        jmp   n00466_disjunction_α
n00463_disjunction_β:
                        mov              eax, dword ptr [rbp + 1104]
                                                                                        jmp   n00466_disjunction_α
n00463_disjunction_af:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                                                                                        jmp   n00466_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00464_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                                # geddate__INITFLAG__0
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00467_nulltest_var_α
n00464_var_ref_β:
                                                                                        jmp   n00463_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00467_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 104
                                                                                        je    n00463_disjunction_af
                        mov              rdi, qword ptr [rbp + 2528]                    # d
                        mov              rsi, qword ptr [rbp + 2536]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00463_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00463_disjunction_af
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n00468_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00468_lit_integer_α:
                        mov              qword ptr [rbp + 2576], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00469_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n00470_assign_var_α
.Lx00469_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00470_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2544]                    # var
                        mov              rsi, qword ptr [rbp + 2552]                    # var
                        mov              rdx, qword ptr [rbp + 2576]                    # val
                        mov              rcx, qword ptr [rbp + 2584]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00463_disjunction_af
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n00471_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00471_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1070:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1070]                        # fn
                        lea              rsi, [rbp + 2512]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 104
                                                                                        je    n00472_var_ref_α
                                                                                        jmp   n00473_assign_α
n00471_call_builtin_icon_β:
                                                                                        jmp   n00472_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_assign_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        mov              qword ptr [1879052336], rax                    # geddate__STATIC__ftab
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00472_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00472_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n00474_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_lit_string_α:
                        mov              qword ptr [rbp + 2432], 2                      # result
                        mov              dword ptr [rbp + 2436], 3
                        mov              rax, qword ptr [rip + .Lx00475_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00476_subscript_α
.Lx00475_0:
                        .quad            .Lx00475_0_s
.Lx00475_0_s:
                        .string          "JAN"
#-----------------------------------------------------------------------------------------------------------------------
n00476_subscript_α:
                        mov              rdi, qword ptr [rbp + 2416]                    # base
                        mov              rsi, qword ptr [rbp + 2424]                    # base
                        mov              rdx, qword ptr [rbp + 2432]                    # idx
                        mov              rcx, qword ptr [rbp + 2440]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00477_var_ref_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00478_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00478_lit_string_α:
                        mov              qword ptr [rbp + 2480], 2                      # result
                        mov              dword ptr [rbp + 2484], 3
                        mov              rax, qword ptr [rip + .Lx00479_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00480_assign_var_α
.Lx00479_0:
                        .quad            .Lx00479_0_s
.Lx00479_0_s:
                        .string          "Jan"
#-----------------------------------------------------------------------------------------------------------------------
n00480_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2448]                    # var
                        mov              rsi, qword ptr [rbp + 2456]                    # var
                        mov              rdx, qword ptr [rbp + 2480]                    # val
                        mov              rcx, qword ptr [rbp + 2488]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00477_var_ref_α
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n00477_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00477_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n00481_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_lit_string_α:
                        mov              qword ptr [rbp + 2352], 2                      # result
                        mov              dword ptr [rbp + 2356], 3
                        mov              rax, qword ptr [rip + .Lx00482_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n00483_subscript_α
.Lx00482_0:
                        .quad            .Lx00482_0_s
.Lx00482_0_s:
                        .string          "FEB"
#-----------------------------------------------------------------------------------------------------------------------
n00483_subscript_α:
                        mov              rdi, qword ptr [rbp + 2336]                    # base
                        mov              rsi, qword ptr [rbp + 2344]                    # base
                        mov              rdx, qword ptr [rbp + 2352]                    # idx
                        mov              rcx, qword ptr [rbp + 2360]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00484_var_ref_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n00485_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00485_lit_string_α:
                        mov              qword ptr [rbp + 2400], 2                      # result
                        mov              dword ptr [rbp + 2404], 3
                        mov              rax, qword ptr [rip + .Lx00486_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00487_assign_var_α
.Lx00486_0:
                        .quad            .Lx00486_0_s
.Lx00486_0_s:
                        .string          "Feb"
#-----------------------------------------------------------------------------------------------------------------------
n00487_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2368]                    # var
                        mov              rsi, qword ptr [rbp + 2376]                    # var
                        mov              rdx, qword ptr [rbp + 2400]                    # val
                        mov              rcx, qword ptr [rbp + 2408]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00484_var_ref_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n00484_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00488_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00488_lit_string_α:
                        mov              qword ptr [rbp + 2272], 2                      # result
                        mov              dword ptr [rbp + 2276], 3
                        mov              rax, qword ptr [rip + .Lx00489_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n00490_subscript_α
.Lx00489_0:
                        .quad            .Lx00489_0_s
.Lx00489_0_s:
                        .string          "MAR"
#-----------------------------------------------------------------------------------------------------------------------
n00490_subscript_α:
                        mov              rdi, qword ptr [rbp + 2256]                    # base
                        mov              rsi, qword ptr [rbp + 2264]                    # base
                        mov              rdx, qword ptr [rbp + 2272]                    # idx
                        mov              rcx, qword ptr [rbp + 2280]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00491_var_ref_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n00492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00492_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 3
                        mov              rax, qword ptr [rip + .Lx00493_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00494_assign_var_α
.Lx00493_0:
                        .quad            .Lx00493_0_s
.Lx00493_0_s:
                        .string          "Mar"
#-----------------------------------------------------------------------------------------------------------------------
n00494_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2288]                    # var
                        mov              rsi, qword ptr [rbp + 2296]                    # var
                        mov              rdx, qword ptr [rbp + 2320]                    # val
                        mov              rcx, qword ptr [rbp + 2328]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00491_var_ref_α
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n00491_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00491_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n00495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_lit_string_α:
                        mov              qword ptr [rbp + 2192], 2                      # result
                        mov              dword ptr [rbp + 2196], 3
                        mov              rax, qword ptr [rip + .Lx00496_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00497_subscript_α
.Lx00496_0:
                        .quad            .Lx00496_0_s
.Lx00496_0_s:
                        .string          "APR"
#-----------------------------------------------------------------------------------------------------------------------
n00497_subscript_α:
                        mov              rdi, qword ptr [rbp + 2176]                    # base
                        mov              rsi, qword ptr [rbp + 2184]                    # base
                        mov              rdx, qword ptr [rbp + 2192]                    # idx
                        mov              rcx, qword ptr [rbp + 2200]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00498_var_ref_α
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n00499_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00499_lit_string_α:
                        mov              qword ptr [rbp + 2240], 2                      # result
                        mov              dword ptr [rbp + 2244], 3
                        mov              rax, qword ptr [rip + .Lx00500_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00501_assign_var_α
.Lx00500_0:
                        .quad            .Lx00500_0_s
.Lx00500_0_s:
                        .string          "Apr"
#-----------------------------------------------------------------------------------------------------------------------
n00501_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2208]                    # var
                        mov              rsi, qword ptr [rbp + 2216]                    # var
                        mov              rdx, qword ptr [rbp + 2240]                    # val
                        mov              rcx, qword ptr [rbp + 2248]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00498_var_ref_α
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n00498_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00498_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n00502_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00502_lit_string_α:
                        mov              qword ptr [rbp + 2112], 2                      # result
                        mov              dword ptr [rbp + 2116], 3
                        mov              rax, qword ptr [rip + .Lx00503_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n00504_subscript_α
.Lx00503_0:
                        .quad            .Lx00503_0_s
.Lx00503_0_s:
                        .string          "MAY"
#-----------------------------------------------------------------------------------------------------------------------
n00504_subscript_α:
                        mov              rdi, qword ptr [rbp + 2096]                    # base
                        mov              rsi, qword ptr [rbp + 2104]                    # base
                        mov              rdx, qword ptr [rbp + 2112]                    # idx
                        mov              rcx, qword ptr [rbp + 2120]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00505_var_ref_α
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n00506_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00506_lit_string_α:
                        mov              qword ptr [rbp + 2160], 2                      # result
                        mov              dword ptr [rbp + 2164], 3
                        mov              rax, qword ptr [rip + .Lx00507_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n00508_assign_var_α
.Lx00507_0:
                        .quad            .Lx00507_0_s
.Lx00507_0_s:
                        .string          "May"
#-----------------------------------------------------------------------------------------------------------------------
n00508_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2128]                    # var
                        mov              rsi, qword ptr [rbp + 2136]                    # var
                        mov              rdx, qword ptr [rbp + 2160]                    # val
                        mov              rcx, qword ptr [rbp + 2168]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00505_var_ref_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n00505_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00505_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n00509_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00509_lit_string_α:
                        mov              qword ptr [rbp + 2032], 2                      # result
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx00510_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n00511_subscript_α
.Lx00510_0:
                        .quad            .Lx00510_0_s
.Lx00510_0_s:
                        .string          "JUN"
#-----------------------------------------------------------------------------------------------------------------------
n00511_subscript_α:
                        mov              rdi, qword ptr [rbp + 2016]                    # base
                        mov              rsi, qword ptr [rbp + 2024]                    # base
                        mov              rdx, qword ptr [rbp + 2032]                    # idx
                        mov              rcx, qword ptr [rbp + 2040]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00512_var_ref_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n00513_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00513_lit_string_α:
                        mov              qword ptr [rbp + 2080], 2                      # result
                        mov              dword ptr [rbp + 2084], 3
                        mov              rax, qword ptr [rip + .Lx00514_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00515_assign_var_α
.Lx00514_0:
                        .quad            .Lx00514_0_s
.Lx00514_0_s:
                        .string          "Jun"
#-----------------------------------------------------------------------------------------------------------------------
n00515_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2048]                    # var
                        mov              rsi, qword ptr [rbp + 2056]                    # var
                        mov              rdx, qword ptr [rbp + 2080]                    # val
                        mov              rcx, qword ptr [rbp + 2088]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00512_var_ref_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n00512_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n00516_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00516_lit_string_α:
                        mov              qword ptr [rbp + 1952], 2                      # result
                        mov              dword ptr [rbp + 1956], 3
                        mov              rax, qword ptr [rip + .Lx00517_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n00518_subscript_α
.Lx00517_0:
                        .quad            .Lx00517_0_s
.Lx00517_0_s:
                        .string          "JUL"
#-----------------------------------------------------------------------------------------------------------------------
n00518_subscript_α:
                        mov              rdi, qword ptr [rbp + 1936]                    # base
                        mov              rsi, qword ptr [rbp + 1944]                    # base
                        mov              rdx, qword ptr [rbp + 1952]                    # idx
                        mov              rcx, qword ptr [rbp + 1960]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00519_var_ref_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n00520_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 3
                        mov              rax, qword ptr [rip + .Lx00521_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00522_assign_var_α
.Lx00521_0:
                        .quad            .Lx00521_0_s
.Lx00521_0_s:
                        .string          "Jul"
#-----------------------------------------------------------------------------------------------------------------------
n00522_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1968]                    # var
                        mov              rsi, qword ptr [rbp + 1976]                    # var
                        mov              rdx, qword ptr [rbp + 2000]                    # val
                        mov              rcx, qword ptr [rbp + 2008]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00519_var_ref_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n00519_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00519_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n00523_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_lit_string_α:
                        mov              qword ptr [rbp + 1872], 2                      # result
                        mov              dword ptr [rbp + 1876], 3
                        mov              rax, qword ptr [rip + .Lx00524_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n00525_subscript_α
.Lx00524_0:
                        .quad            .Lx00524_0_s
.Lx00524_0_s:
                        .string          "AUG"
#-----------------------------------------------------------------------------------------------------------------------
n00525_subscript_α:
                        mov              rdi, qword ptr [rbp + 1856]                    # base
                        mov              rsi, qword ptr [rbp + 1864]                    # base
                        mov              rdx, qword ptr [rbp + 1872]                    # idx
                        mov              rcx, qword ptr [rbp + 1880]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00526_var_ref_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n00527_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00527_lit_string_α:
                        mov              qword ptr [rbp + 1920], 2                      # result
                        mov              dword ptr [rbp + 1924], 3
                        mov              rax, qword ptr [rip + .Lx00528_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00529_assign_var_α
.Lx00528_0:
                        .quad            .Lx00528_0_s
.Lx00528_0_s:
                        .string          "Aug"
#-----------------------------------------------------------------------------------------------------------------------
n00529_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1888]                    # var
                        mov              rsi, qword ptr [rbp + 1896]                    # var
                        mov              rdx, qword ptr [rbp + 1920]                    # val
                        mov              rcx, qword ptr [rbp + 1928]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00526_var_ref_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n00526_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00526_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n00530_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00530_lit_string_α:
                        mov              qword ptr [rbp + 1792], 2                      # result
                        mov              dword ptr [rbp + 1796], 3
                        mov              rax, qword ptr [rip + .Lx00531_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00532_subscript_α
.Lx00531_0:
                        .quad            .Lx00531_0_s
.Lx00531_0_s:
                        .string          "SEP"
#-----------------------------------------------------------------------------------------------------------------------
n00532_subscript_α:
                        mov              rdi, qword ptr [rbp + 1776]                    # base
                        mov              rsi, qword ptr [rbp + 1784]                    # base
                        mov              rdx, qword ptr [rbp + 1792]                    # idx
                        mov              rcx, qword ptr [rbp + 1800]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00533_var_ref_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n00534_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00534_lit_string_α:
                        mov              qword ptr [rbp + 1840], 2                      # result
                        mov              dword ptr [rbp + 1844], 3
                        mov              rax, qword ptr [rip + .Lx00535_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n00536_assign_var_α
.Lx00535_0:
                        .quad            .Lx00535_0_s
.Lx00535_0_s:
                        .string          "Sep"
#-----------------------------------------------------------------------------------------------------------------------
n00536_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1808]                    # var
                        mov              rsi, qword ptr [rbp + 1816]                    # var
                        mov              rdx, qword ptr [rbp + 1840]                    # val
                        mov              rcx, qword ptr [rbp + 1848]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00533_var_ref_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n00533_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00533_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00537_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00537_lit_string_α:
                        mov              qword ptr [rbp + 1712], 2                      # result
                        mov              dword ptr [rbp + 1716], 3
                        mov              rax, qword ptr [rip + .Lx00538_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n00539_subscript_α
.Lx00538_0:
                        .quad            .Lx00538_0_s
.Lx00538_0_s:
                        .string          "OCT"
#-----------------------------------------------------------------------------------------------------------------------
n00539_subscript_α:
                        mov              rdi, qword ptr [rbp + 1696]                    # base
                        mov              rsi, qword ptr [rbp + 1704]                    # base
                        mov              rdx, qword ptr [rbp + 1712]                    # idx
                        mov              rcx, qword ptr [rbp + 1720]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00540_var_ref_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00541_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00541_lit_string_α:
                        mov              qword ptr [rbp + 1760], 2                      # result
                        mov              dword ptr [rbp + 1764], 3
                        mov              rax, qword ptr [rip + .Lx00542_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n00543_assign_var_α
.Lx00542_0:
                        .quad            .Lx00542_0_s
.Lx00542_0_s:
                        .string          "Oct"
#-----------------------------------------------------------------------------------------------------------------------
n00543_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1728]                    # var
                        mov              rsi, qword ptr [rbp + 1736]                    # var
                        mov              rdx, qword ptr [rbp + 1760]                    # val
                        mov              rcx, qword ptr [rbp + 1768]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00540_var_ref_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00540_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00540_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n00544_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00544_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 3
                        mov              rax, qword ptr [rip + .Lx00545_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n00546_subscript_α
.Lx00545_0:
                        .quad            .Lx00545_0_s
.Lx00545_0_s:
                        .string          "NOV"
#-----------------------------------------------------------------------------------------------------------------------
n00546_subscript_α:
                        mov              rdi, qword ptr [rbp + 1616]                    # base
                        mov              rsi, qword ptr [rbp + 1624]                    # base
                        mov              rdx, qword ptr [rbp + 1632]                    # idx
                        mov              rcx, qword ptr [rbp + 1640]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00547_var_ref_α
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n00548_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00548_lit_string_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx00549_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00550_assign_var_α
.Lx00549_0:
                        .quad            .Lx00549_0_s
.Lx00549_0_s:
                        .string          "Nov"
#-----------------------------------------------------------------------------------------------------------------------
n00550_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1648]                    # var
                        mov              rsi, qword ptr [rbp + 1656]                    # var
                        mov              rdx, qword ptr [rbp + 1680]                    # val
                        mov              rcx, qword ptr [rbp + 1688]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00547_var_ref_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n00547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00547_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n00551_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 3
                        mov              rax, qword ptr [rip + .Lx00552_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00553_subscript_α
.Lx00552_0:
                        .quad            .Lx00552_0_s
.Lx00552_0_s:
                        .string          "DEC"
#-----------------------------------------------------------------------------------------------------------------------
n00553_subscript_α:
                        mov              rdi, qword ptr [rbp + 1536]                    # base
                        mov              rsi, qword ptr [rbp + 1544]                    # base
                        mov              rdx, qword ptr [rbp + 1552]                    # idx
                        mov              rcx, qword ptr [rbp + 1560]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00554_var_ref_α
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n00555_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00555_lit_string_α:
                        mov              qword ptr [rbp + 1600], 2                      # result
                        mov              dword ptr [rbp + 1604], 3
                        mov              rax, qword ptr [rip + .Lx00556_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00557_assign_var_α
.Lx00556_0:
                        .quad            .Lx00556_0_s
.Lx00556_0_s:
                        .string          "Dec"
#-----------------------------------------------------------------------------------------------------------------------
n00557_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # var
                        mov              rsi, qword ptr [rbp + 1576]                    # var
                        mov              rdx, qword ptr [rbp + 1600]                    # val
                        mov              rcx, qword ptr [rbp + 1608]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00554_var_ref_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n00554_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n00558_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00558_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 3
                        mov              rax, qword ptr [rip + .Lx00559_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n00560_subscript_α
.Lx00559_0:
                        .quad            .Lx00559_0_s
.Lx00559_0_s:
                        .string          "ABT"
#-----------------------------------------------------------------------------------------------------------------------
n00560_subscript_α:
                        mov              rdi, qword ptr [rbp + 1456]                    # base
                        mov              rsi, qword ptr [rbp + 1464]                    # base
                        mov              rdx, qword ptr [rbp + 1472]                    # idx
                        mov              rcx, qword ptr [rbp + 1480]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00561_var_ref_α
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n00562_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00562_lit_string_α:
                        mov              qword ptr [rbp + 1520], 2                      # result
                        mov              dword ptr [rbp + 1524], 3
                        mov              rax, qword ptr [rip + .Lx00563_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n00564_assign_var_α
.Lx00563_0:
                        .quad            .Lx00563_0_s
.Lx00563_0_s:
                        .string          "abt"
#-----------------------------------------------------------------------------------------------------------------------
n00564_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1488]                    # var
                        mov              rsi, qword ptr [rbp + 1496]                    # var
                        mov              rdx, qword ptr [rbp + 1520]                    # val
                        mov              rcx, qword ptr [rbp + 1528]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00561_var_ref_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n00561_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00561_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00565_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 3
                        mov              rax, qword ptr [rip + .Lx00566_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00567_subscript_α
.Lx00566_0:
                        .quad            .Lx00566_0_s
.Lx00566_0_s:
                        .string          "BEF"
#-----------------------------------------------------------------------------------------------------------------------
n00567_subscript_α:
                        mov              rdi, qword ptr [rbp + 1376]                    # base
                        mov              rsi, qword ptr [rbp + 1384]                    # base
                        mov              rdx, qword ptr [rbp + 1392]                    # idx
                        mov              rcx, qword ptr [rbp + 1400]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00568_var_ref_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00569_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00569_lit_string_α:
                        mov              qword ptr [rbp + 1440], 2                      # result
                        mov              dword ptr [rbp + 1444], 3
                        mov              rax, qword ptr [rip + .Lx00570_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00571_assign_var_α
.Lx00570_0:
                        .quad            .Lx00570_0_s
.Lx00570_0_s:
                        .string          "bef"
#-----------------------------------------------------------------------------------------------------------------------
n00571_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1408]                    # var
                        mov              rsi, qword ptr [rbp + 1416]                    # var
                        mov              rdx, qword ptr [rbp + 1440]                    # val
                        mov              rcx, qword ptr [rbp + 1448]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00568_var_ref_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n00568_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00568_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n00572_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00572_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 3
                        mov              rax, qword ptr [rip + .Lx00573_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00574_subscript_α
.Lx00573_0:
                        .quad            .Lx00573_0_s
.Lx00573_0_s:
                        .string          "AFT"
#-----------------------------------------------------------------------------------------------------------------------
n00574_subscript_α:
                        mov              rdi, qword ptr [rbp + 1296]                    # base
                        mov              rsi, qword ptr [rbp + 1304]                    # base
                        mov              rdx, qword ptr [rbp + 1312]                    # idx
                        mov              rcx, qword ptr [rbp + 1320]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00575_var_ref_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n00576_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00576_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx00577_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00578_assign_var_α
.Lx00577_0:
                        .quad            .Lx00577_0_s
.Lx00577_0_s:
                        .string          "aft"
#-----------------------------------------------------------------------------------------------------------------------
n00578_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1328]                    # var
                        mov              rsi, qword ptr [rbp + 1336]                    # var
                        mov              rdx, qword ptr [rbp + 1360]                    # val
                        mov              rcx, qword ptr [rbp + 1368]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00575_var_ref_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n00575_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00575_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n00579_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00579_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 3
                        mov              rax, qword ptr [rip + .Lx00580_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00581_subscript_α
.Lx00580_0:
                        .quad            .Lx00580_0_s
.Lx00580_0_s:
                        .string          "CAL"
#-----------------------------------------------------------------------------------------------------------------------
n00581_subscript_α:
                        mov              rdi, qword ptr [rbp + 1216]                    # base
                        mov              rsi, qword ptr [rbp + 1224]                    # base
                        mov              rdx, qword ptr [rbp + 1232]                    # idx
                        mov              rcx, qword ptr [rbp + 1240]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00582_var_ref_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n00583_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00583_lit_string_α:
                        mov              qword ptr [rbp + 1280], 2                      # result
                        mov              dword ptr [rbp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx00584_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n00585_assign_var_α
.Lx00584_0:
                        .quad            .Lx00584_0_s
.Lx00584_0_s:
                        .string          "cal"
#-----------------------------------------------------------------------------------------------------------------------
n00585_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1248]                    # var
                        mov              rsi, qword ptr [rbp + 1256]                    # var
                        mov              rdx, qword ptr [rbp + 1280]                    # val
                        mov              rcx, qword ptr [rbp + 1288]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00582_var_ref_α
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n00582_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00582_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n00586_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00586_lit_string_α:
                        mov              qword ptr [rbp + 1152], 2                      # result
                        mov              dword ptr [rbp + 1156], 3
                        mov              rax, qword ptr [rip + .Lx00587_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00588_subscript_α
.Lx00587_0:
                        .quad            .Lx00587_0_s
.Lx00587_0_s:
                        .string          "EST"
#-----------------------------------------------------------------------------------------------------------------------
n00588_subscript_α:
                        mov              rdi, qword ptr [rbp + 1136]                    # base
                        mov              rsi, qword ptr [rbp + 1144]                    # base
                        mov              rdx, qword ptr [rbp + 1152]                    # idx
                        mov              rcx, qword ptr [rbp + 1160]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00466_disjunction_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00589_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00589_lit_string_α:
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 3
                        mov              rax, qword ptr [rip + .Lx00590_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00591_assign_var_α
.Lx00590_0:
                        .quad            .Lx00590_0_s
.Lx00590_0_s:
                        .string          "est"
#-----------------------------------------------------------------------------------------------------------------------
n00591_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1168]                    # var
                        mov              rsi, qword ptr [rbp + 1176]                    # var
                        mov              rdx, qword ptr [rbp + 1200]                    # val
                        mov              rcx, qword ptr [rbp + 1208]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00466_disjunction_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00592_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00592_conjunction_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00463_disjunction_as
n00592_conjunction_β:
                                                                                        jmp   n00466_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00466_disjunction_α:
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              dword ptr [rbp + 880], 0
                                                                                        jmp   n00593_var_α
n00466_disjunction_as:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        jne   .Lx00594_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00595_assign_α
.Lx00594_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00594_1
                                                                                        jmp   n00595_assign_α
.Lx00594_1:
                                                                                        jmp   n00595_assign_α
n00466_disjunction_β:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        je    n00596_proc_gen_β
                                                                                        jmp   n00466_disjunction_af
n00466_disjunction_af:
                        add              dword ptr [rbp + 880], 1
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 1
                                                                                        je    proc_geddate_ω
                                                                                        jmp   n00597_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00595_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00597_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00597_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 0
                        mov              rax, qword ptr [rip + .Lx00598_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00599_assign_α
.Lx00598_0:
                        .quad            .Lx00598_0_s
.Lx00598_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00599_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n00600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00600_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00601_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00601_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 832]                     # lo
                        mov              rsi, qword ptr [rbp + 840]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00602_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00602_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00603_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00604_scan_pos_α
.Lx00603_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00604_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00605_0
                        add              rax, r15
                        add              rax, 1
.Lx00605_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00605_238
                        add              rsp, 2512
                                                                                        jmp   n00606_var_α
.Lx00605_238:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00605_239
                        add              rsp, 2512
                                                                                        jmp   n00606_var_α
.Lx00605_239:
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        je    .Lx00605_240
                        add              rsp, 2512
                                                                                        jmp   n00606_var_α
.Lx00605_240:
                        mov              qword ptr [rbp + 368], 3
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00607_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00606_var_α:
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                                                                                        jmp   n00608_lit_charset_α
n00606_var_β:
                                                                                        jmp   n00607_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00608_lit_charset_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], -1
                        mov              rax, qword ptr [rip + .Lx00609_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00610_scan_many_α
.Lx00609_0:
                        .quad            .Lx00609_0_s
.Lx00609_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00610_scan_many_α:
                        mov              eax, r14d
.Lx00611_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00611_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00611_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00611_1
                        add              eax, 1
                                                                                        jmp   .Lx00611_0
.Lx00611_1:
                        cmp              eax, r14d
                                                                                        je    n00612_disjunction_α
                        mov              qword ptr [rbp + 800], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 808], rcx
                                                                                        jmp   n00613_scan_tab_α
n00610_scan_many_β:
                                                                                        jmp   n00612_disjunction_α
.Lx00611_2:
                        .quad            .Lx00611_2_s
.Lx00611_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00613_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 808]
                        cmp              rax, 1
                                                                                        jge   .Lx00614_0
                        add              rax, r15
                        add              rax, 1
.Lx00614_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00614_239
                        add              rsp, 16
                                                                                        jmp   n00612_disjunction_α
.Lx00614_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00614_240
                        add              rsp, 16
                                                                                        jmp   n00612_disjunction_α
.Lx00614_240:
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
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n00612_disjunction_α
n00613_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00612_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00612_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n00615_lit_charset_α
n00612_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx00616_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00617_scan_tab_α
.Lx00616_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00616_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00617_scan_tab_α
.Lx00616_1:
                                                                                        jmp   n00617_scan_tab_α
n00612_disjunction_β:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        je    n00618_scan_upto_β
                                                                                        jmp   n00612_disjunction_af
n00612_disjunction_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1
                                                                                        je    n00619_lit_integer_α
                                                                                        jmp   n00620_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00617_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 680]
                        cmp              rax, 1
                                                                                        jge   .Lx00621_0
                        add              rax, r15
                        add              rax, 1
.Lx00621_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00621_239
                        add              rsp, 16
                                                                                        jmp   n00612_disjunction_β
.Lx00621_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00621_240
                        add              rsp, 16
                                                                                        jmp   n00612_disjunction_β
.Lx00621_240:
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
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00622_assign_α
n00617_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00612_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00622_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00620_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00620_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00623_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00623_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 1
                        mov              rax, qword ptr [rip + .Lx00624_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00625_disjunction_α
.Lx00624_0:
                        .quad            .Lx00624_0_s
.Lx00624_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00625_disjunction_α:
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                        mov              dword ptr [rbp + 512], 0
                                                                                        jmp   n00626_var_ref_α
n00625_disjunction_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0
                                                                                        jne   .Lx00627_0
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00628_binop_α
.Lx00627_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00627_1
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00628_binop_α
.Lx00627_1:
                                                                                        jmp   n00628_binop_α
n00625_disjunction_β:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0
                                                                                        je    n00625_disjunction_af
                                                                                        jmp   n00625_disjunction_af
n00625_disjunction_af:
                        add              dword ptr [rbp + 512], 1
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 1
                                                                                        je    n00629_var_α
                                                                                        jmp   n00602_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00628_binop_α:
                        mov              rdi, qword ptr [rbp + 480]                     # a
                        mov              rsi, qword ptr [rbp + 488]                     # a
                        mov              rdx, qword ptr [rbp + 496]                     # b
                        mov              rcx, qword ptr [rbp + 504]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00630_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00630_binop_α:
                        mov              rdi, qword ptr [rbp + 2592]                    # a
                        mov              rsi, qword ptr [rbp + 2600]                    # a
                        mov              rdx, qword ptr [rbp + 464]                     # b
                        mov              rcx, qword ptr [rbp + 472]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00631_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00631_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00632_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00632_conjunction_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00602_lit_integer_α
n00632_conjunction_β:
                                                                                        jmp   n00602_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00629_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00625_disjunction_as
n00629_var_β:
                                                                                        jmp   n00625_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00626_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                                # geddate__STATIC__ftab
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00633_var_α
n00626_var_ref_β:
                                                                                        jmp   n00625_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00633_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00634_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00634_subscript_α:
                        mov              rdi, qword ptr [rbp + 544]                     # base
                        mov              rsi, qword ptr [rbp + 552]                     # base
                        mov              rdx, qword ptr [rbp + 560]                     # idx
                        mov              rcx, qword ptr [rbp + 568]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00625_disjunction_af
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00635_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00635_deref_α:
                        mov              rdi, qword ptr [rbp + 576]                     # d
                        mov              rsi, qword ptr [rbp + 584]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00625_disjunction_af
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00636_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00636_unop_test_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 104
                                                                                        je    n00625_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00625_disjunction_af
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00625_disjunction_as
n00636_unop_test_β:
                                                                                        jmp   n00625_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00619_lit_integer_α:
                        mov              qword ptr [rbp + 752], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00637_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00612_disjunction_as
n00619_lit_integer_β:
                                                                                        jmp   n00612_disjunction_af
.Lx00637_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00615_lit_charset_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], -1
                        mov              rax, qword ptr [rip + .Lx00638_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00618_scan_upto_α
n00615_lit_charset_β:
                                                                                        jmp   n00612_disjunction_af
.Lx00638_0:
                        .quad            .Lx00638_0_s
.Lx00638_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00618_scan_upto_α:
                        mov              qword ptr [rbp + 720], r14
.Lx00639_0:
                        mov              rax, qword ptr [rbp + 720]
                        cmp              rax, r15
                                                                                        jge   n00612_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00639_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00639_1
                        mov              qword ptr [rbp + 704], 3
                        add              rax, 1
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00612_disjunction_as
.Lx00639_1:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00639_0
n00618_scan_upto_β:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00639_0
.Lx00639_2:
                        .quad            .Lx00639_2_s
.Lx00639_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00607_scan_α:
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00640_disjunction_α
n00607_scan_β:
                                                                                        jmp   n00640_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00640_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00641_var_α
n00640_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00642_0
                                                                                        jmp   proc_geddate_γ
.Lx00642_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00642_1
                                                                                        jmp   proc_geddate_γ
.Lx00642_1:
                                                                                        jmp   proc_geddate_γ
n00640_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_geddate_ω
                                                                                        jmp   proc_geddate_ω
n00640_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00643_var_α
                                                                                        jmp   proc_geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00643_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00644_lit_integer_α
n00643_var_β:
                                                                                        jmp   proc_geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00644_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00645_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00646_call_builtin_icon_α
.Lx00645_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n00646_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn1228:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1228]                        # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    proc_geddate_ω
                                                                                        jmp   n00647_return_α
n00646_call_builtin_icon_β:
                                                                                        jmp   proc_geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00647_return_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_geddate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00641_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00648_unop_α
n00641_var_β:
                                                                                        jmp   n00640_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00648_unop_α:
                        mov              rdi, qword ptr [rbp + 2592]                    # lo
                        mov              rsi, qword ptr [rbp + 2600]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00649_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00649_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00650_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00651_binop_test_α
.Lx00650_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n00651_binop_test_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 112
                                                                                        je    .Lx00652_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 112
                                                                                        je    .Lx00652_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx00652_2
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 3
                                                                                        jne   .Lx00652_2
.Lx00652_1:
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, qword ptr [rbp + 184]
                        cmp              rax, rcx
                                                                                        jle   n00640_disjunction_af
                        mov              rcx, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rcx
                        mov              rcx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rcx
                                                                                        jmp   n00653_var_α
.Lx00652_0:
                        mov              rdi, qword ptr [rbp + 144]                     # a
                        mov              rsi, qword ptr [rbp + 152]                     # a
                        mov              rdx, qword ptr [rbp + 176]                     # b
                        mov              rcx, qword ptr [rbp + 184]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 128]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00652_1
                        cmp              eax, 1
                                                                                        je    n00640_disjunction_af
                                                                                        jmp   n00653_var_α
.Lx00652_2:
                        mov              rdi, qword ptr [rbp + 144]                     # lhs
                        mov              rsi, qword ptr [rbp + 152]                     # lhs
                        mov              rdx, qword ptr [rbp + 176]                     # rhs
                        mov              rcx, qword ptr [rbp + 184]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00640_disjunction_af
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00653_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00653_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00654_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00654_lit_integer_α:
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00655_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00656_lit_integer_α
.Lx00655_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00656_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00657_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00658_subscript_α
.Lx00657_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00658_subscript_α:
                        mov              rdi, qword ptr [rbp + 80]                      # arr
                        mov              rsi, qword ptr [rbp + 88]                      # arr
                        mov              rdx, qword ptr [rbp + 96]                      # i
                        mov              rcx, qword ptr [rbp + 104]                     # i
                        mov              r8, qword ptr [rbp + 112]                      # j
                        mov              r9, qword ptr [rbp + 120]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    proc_geddate_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00659_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00659_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_geddate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00593_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00660_lit_string_α
n00593_var_β:
                                                                                        jmp   n00466_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00660_lit_string_α:
                        mov              qword ptr [rbp + 1056], 2                      # result
                        mov              dword ptr [rbp + 1060], 4
                        mov              rax, qword ptr [rip + .Lx00661_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00596_proc_gen_α
.Lx00661_0:
                        .quad            .Lx00661_0_s
.Lx00661_0_s:
                        .string          "DATE"
#-----------------------------------------------------------------------------------------------------------------------
n00596_proc_gen_α:
                        mov              qword ptr [rbp + 1008], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00662_20
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00662_21
.Lx00662_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1040]                    # v
                        mov              rdx, qword ptr [rbp + 1048]                    # v
                        call             rt_arg_stage@PLT
.Lx00662_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00662_22
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00662_23
.Lx00662_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1056]                    # v
                        mov              rdx, qword ptr [rbp + 1064]                    # v
                        call             rt_arg_stage@PLT
.Lx00662_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00662_1
                        lea              rcx, [rip + .Lx00662_3]
                        lea              rdx, [rip + .Lx00662_4]
                                                                                        jmp   rax
.Lx00662_3:
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx00662_5
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00662_2
.Lx00662_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00662_2
.Lx00662_4:
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx00662_6
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00662_2
.Lx00662_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00662_2
.Lx00662_1:
                        call             rt_faildescr@PLT
.Lx00662_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n00466_disjunction_af
                                                                                        jmp   n00663_lit_charset_α
n00596_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00662_0:
                        .quad            .Lx00662_0_s
.Lx00662_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00663_lit_charset_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx00664_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00665_call_builtin_icon_α
.Lx00664_0:
                        .quad            .Lx00664_0_s
.Lx00664_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00665_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn1248:             .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1248]                        # fn
                        lea              rsi, [rbp + 912]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n00596_proc_gen_β
                                                                                        jmp   n00466_disjunction_as
n00665_call_builtin_icon_β:
                                                                                        jmp   n00596_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_β:
                                                                                        jmp   proc_geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2688]
                        mov              rcx, qword ptr [rbp + 2664]
                        mov              rbp, qword ptr [rbp + 2680]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_ω:
                        lea              rsp, [rbp + 2688]
                        mov              rcx, qword ptr [rbp + 2672]
                        mov              rbp, qword ptr [rbp + 2680]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_dcα:
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
                        lea              rcx, [rip + .Lx00666_2]
                        lea              rdx, [rip + .Lx00666_3]
                                                                                        jmp   proc_geddate_α
.Lx00666_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00666_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "person(n,k,r)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "gedcom(tree,id,fam,ind)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec2:           .string          "gednode(level,id,tag,data,lnum,parent,ref,sub)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec2]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "event"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_event_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 864
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_event_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "refto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_refto_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_refto_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "sortkey"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_sortkey_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_sortkey_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "gedload"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_gedload_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_gedload_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "gedscan"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_gedscan_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_gedscan_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "gedwalk"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_gedwalk_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "gedsub"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_gedsub_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "gedval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_gedval_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "gedref"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_gedref_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "gedfnf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_gedfnf_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1200
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_gedfnf_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "gedlnf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_gedlnf_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_gedlnf_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "geddate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_geddate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_geddate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ptab"
.Lgvan1:                .string          "gedscan__STATIC__alnum"
.Lgvan2:                .string          "gedscan__INITFLAG__0"
.Lgvan3:                .string          "geddate__STATIC__ftab"
.Lgvan4:                .string          "geddate__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
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
                        sub              rsp, 5072
                        mov              qword ptr [rsp + 5048], rcx
                        mov              qword ptr [rsp + 5056], rdx
                        mov              qword ptr [rsp + 5064], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 5040
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 10
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00667_disjunction_α:
                        mov              qword ptr [rbp + 4448], 0
                        mov              qword ptr [rbp + 4456], 0
                        mov              dword ptr [rbp + 4464], 0
                                                                                        jmp   n00668_var_α
n00667_disjunction_as:
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, 0
                                                                                        jne   .Lx00669_0
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n00670_var_α
.Lx00669_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00669_1
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n00670_var_α
.Lx00669_1:
                                                                                        jmp   n00670_var_α
n00667_disjunction_β:
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, 0
                                                                                        je    n00671_disjunction_β
                                                                                        jmp   n00670_var_α
n00667_disjunction_af:
                        add              dword ptr [rbp + 4464], 1
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, 1
                                                                                        je    n00672_keyword_icon_α
                                                                                        jmp   n00670_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00670_var_α:
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n00673_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00673_call_proc_staged_α:
                        lea              rsi, [rbp + 4432]
                        call             proc_gedload_dcα
                                                                                        jmp   .Lx00674_2
.Lx00674_2:
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              eax, 104
                                                                                        je    n00675_var_α
                                                                                        jmp   n00676_assign_α
n00673_call_proc_staged_β:
                                                                                        jmp   n00675_var_α
.Lx00674_0:
                        .quad            .Lx00674_0_s
.Lx00674_0_s:
                        .string          "gedload"
#-----------------------------------------------------------------------------------------------------------------------
n00676_assign_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              rdx, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n00675_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00675_var_α:
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n00677_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00677_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4344], rax
                        .section         .rodata
.Lrkfn1444:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1444]                        # fn
                        lea              rsi, [rbp + 4336]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 104
                                                                                        je    n00678_make_list_α
                                                                                        jmp   n00678_make_list_α
n00677_call_builtin_icon_β:
                                                                                        jmp   n00678_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00678_make_list_α:
                        lea              rdi, [rbp + 4320]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                                                                                        jmp   n00679_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00679_assign_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              rdx, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   n00680_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00680_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1449:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1449]                        # fn
                        lea              rsi, [rbp + 4288]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 104
                                                                                        je    n00681_var_α
                                                                                        jmp   n00682_assign_α
n00680_call_builtin_icon_β:
                                                                                        jmp   n00681_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00682_assign_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              rdx, qword ptr [rbp + 4280]
                        mov              qword ptr [1879052288], rax                    # ptab
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00681_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00681_var_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n00683_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00683_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00684_0]               # fname
                        mov              rsi, qword ptr [rbp + 3888]                    # obj
                        mov              rdx, qword ptr [rbp + 3896]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00684_240
                        add              rsp, 4864
                                                                                        jmp   n00685_var_α
.Lx00684_240:
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                                                                                        jmp   n00686_iterate_α
.Lx00684_0:
                        .quad            .Lx00684_0_s
.Lx00684_0_s:
                        .string          "ind"
#-----------------------------------------------------------------------------------------------------------------------
n00686_iterate_α:
                        mov              qword ptr [rbp + 3856], 0
.Lx00687_0:
                        mov              rdi, qword ptr [rbp + 3872]                    # obj
                        mov              rsi, qword ptr [rbp + 3880]                    # obj
                        mov              rdx, qword ptr [rbp + 3856]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx00687_240
                        add              rsp, 4864
                                                                                        jmp   n00685_var_α
.Lx00687_240:
                                                                                        jmp   n00688_assign_α
n00686_iterate_β:
                        inc              qword ptr [rbp + 3856]
                                                                                        jmp   .Lx00687_0
#-----------------------------------------------------------------------------------------------------------------------
n00688_assign_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              rdx, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00689_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00689_bound_α:
                        mov              qword ptr [rbp + 3904], rsp
                                                                                        jmp   n00690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00690_var_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n00691_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00691_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                                # ptab
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n00692_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00692_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n00693_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00693_subscript_α:
                        mov              rdi, qword ptr [rbp + 4032]                    # base
                        mov              rsi, qword ptr [rbp + 4040]                    # base
                        mov              rdx, qword ptr [rbp + 4048]                    # idx
                        mov              rcx, qword ptr [rbp + 4056]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00694_unmark_α
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n00695_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00695_lit_integer_α:
                        mov              qword ptr [rbp + 4176], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00696_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n00697_var_α
.Lx00696_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00697_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n00698_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00698_call_proc_staged_α:
                        lea              rsi, [rbp + 4240]
                        call             proc_sortkey_dcα
                                                                                        jmp   .Lx00699_2
.Lx00699_2:
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 104
                                                                                        je    n00694_unmark_α
                                                                                        jmp   n00700_var_α
n00698_call_proc_staged_β:
                                                                                        jmp   n00694_unmark_α
.Lx00699_0:
                        .quad            .Lx00699_0_s
.Lx00699_0_s:
                        .string          "sortkey"
#-----------------------------------------------------------------------------------------------------------------------
n00700_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n00701_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00701_call_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4152], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4136], rax
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4120], rax
                        .section         .rodata
.Lrkfn1474:             .string          "person"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1474]                        # fn
                        lea              rsi, [rbp + 4112]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 104
                                                                                        je    n00694_unmark_α
                                                                                        jmp   n00702_assign_var_α
n00701_call_β:
                                                                                        jmp   n00694_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00702_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4064]                    # var
                        mov              rsi, qword ptr [rbp + 4072]                    # var
                        mov              rdx, qword ptr [rbp + 4096]                    # val
                        mov              rcx, qword ptr [rbp + 4104]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00694_unmark_α
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n00703_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00703_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3976], rax
                        .section         .rodata
.Lrkfn1477:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1477]                        # fn
                        lea              rsi, [rbp + 3968]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 104
                                                                                        je    n00694_unmark_α
                                                                                        jmp   n00694_unmark_α
n00703_call_builtin_icon_β:
                                                                                        jmp   n00694_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00694_unmark_α:
                        mov              rsp, qword ptr [rbp + 3904]
                                                                                        jmp   n00686_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00685_var_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n00704_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00704_lit_integer_α:
                        mov              qword ptr [rbp + 3824], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00705_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n00706_call_builtin_icon_α
.Lx00705_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00706_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3768], rax
                        .section         .rodata
.Lrkfn1484:             .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1484]                        # fn
                        lea              rsi, [rbp + 3760]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 104
                                                                                        je    n00707_lit_integer_α
                                                                                        jmp   n00708_assign_α
n00706_call_builtin_icon_β:
                                                                                        jmp   n00707_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00708_assign_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   n00707_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00707_lit_integer_α:
                        mov              qword ptr [rbp + 3728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00709_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n00710_assign_α
.Lx00709_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00710_assign_α:
                        mov              rax, qword ptr [rbp + 3728]
                        mov              rdx, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                                                                                        jmp   n00711_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00711_var_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n00712_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00712_iterate_α:
                        mov              qword ptr [rbp + 3600], 0
.Lx00713_0:
                        mov              rdi, qword ptr [rbp + 3616]                    # obj
                        mov              rsi, qword ptr [rbp + 3624]                    # obj
                        mov              rdx, qword ptr [rbp + 3600]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              rax, 99
                                                                                        je    n00714_var_α
                                                                                        jmp   n00715_field_var_α
n00712_iterate_β:
                        inc              qword ptr [rbp + 3600]
                                                                                        jmp   .Lx00713_0
#-----------------------------------------------------------------------------------------------------------------------
n00715_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00716_0]               # fname
                        mov              rsi, qword ptr [rbp + 3584]                    # obj
                        mov              rdx, qword ptr [rbp + 3592]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n00714_var_α
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n00717_var_α
.Lx00716_0:
                        .quad            .Lx00716_0_s
.Lx00716_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00717_var_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n00718_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00718_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00719_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n00720_coerce_numeric_α
.Lx00719_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00720_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 5
                                                                                        je    .Lx00721_1
                        cmp              eax, 3
                                                                                        jne   .Lx00721_0
                        mov              eax, dword ptr [rbp + 3712]
                        cmp              eax, 3
                                                                                        jne   .Lx00721_0
.Lx00721_1:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n00722_binop_α
.Lx00721_0:
                        lea              rdi, [rbp + 4976]                              # self
                        lea              rsi, [rbp + 3712]                              # other
                        lea              rdx, [rbp + 3680]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00722_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00722_binop_α:
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 3
                                                                                        jne   .Lx00723_0
                        mov              rax, qword ptr [rbp + 3688]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 3664], 3
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n00724_assign_α
.Lx00723_0:
                        mov              rdi, qword ptr [rbp + 3680]
                        mov              rsi, qword ptr [rbp + 3688]
                        mov              rdx, qword ptr [rbp + 3712]
                        mov              rcx, qword ptr [rbp + 3720]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00712_iterate_β
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n00724_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00724_assign_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n00725_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00725_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3568]                    # var
                        mov              rsi, qword ptr [rbp + 3576]                    # var
                        mov              rdx, qword ptr [rbp + 3648]                    # val
                        mov              rcx, qword ptr [rbp + 3656]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00714_var_α
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n00712_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00714_var_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00726_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00726_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx00727_0:
                        mov              rdi, qword ptr [rbp + 80]                      # obj
                        mov              rsi, qword ptr [rbp + 88]                      # obj
                        mov              rdx, qword ptr [rbp + 64]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   n00728_assign_α
n00726_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx00727_0
#-----------------------------------------------------------------------------------------------------------------------
n00728_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                                                                                        jmp   n00729_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00729_bound_α:
                        mov              qword ptr [rbp + 96], rsp
                                                                                        jmp   n00730_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00730_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1509:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1509]                        # fn
                        lea              rsi, [rbp + 3552]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 104
                                                                                        je    n00731_lit_string_α
                                                                                        jmp   n00731_lit_string_α
n00730_call_builtin_icon_β:
                                                                                        jmp   n00731_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00731_lit_string_α:
                        mov              qword ptr [rbp + 3392], 2                      # result
                        mov              dword ptr [rbp + 3396], 1
                        mov              rax, qword ptr [rip + .Lx00732_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n00733_var_α
.Lx00732_0:
                        .quad            .Lx00732_0_s
.Lx00732_0_s:
                        .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n00733_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n00734_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00734_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00735_0]               # fname
                        mov              rsi, qword ptr [rbp + 3424]                    # obj
                        mov              rdx, qword ptr [rbp + 3432]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00736_disjunction_α
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n00737_lit_string_α
.Lx00735_0:
                        .quad            .Lx00735_0_s
.Lx00735_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00737_lit_string_α:
                        mov              qword ptr [rbp + 3440], 2                      # result
                        mov              dword ptr [rbp + 3444], 2
                        mov              rax, qword ptr [rip + .Lx00738_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n00739_var_α
.Lx00738_0:
                        .quad            .Lx00738_0_s
.Lx00738_0_s:
                        .string          "] "
#-----------------------------------------------------------------------------------------------------------------------
n00739_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n00740_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00740_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00741_0]               # fname
                        mov              rsi, qword ptr [rbp + 3520]                    # obj
                        mov              rdx, qword ptr [rbp + 3528]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00736_disjunction_α
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n00742_call_proc_staged_α
.Lx00741_0:
                        .quad            .Lx00741_0_s
.Lx00741_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00742_call_proc_staged_α:
                        lea              rsi, [rbp + 3504]
                        call             proc_gedlnf_dcα
                                                                                        jmp   .Lx00743_2
.Lx00743_2:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 104
                                                                                        je    n00736_disjunction_α
                                                                                        jmp   n00744_call_builtin_icon_α
n00742_call_proc_staged_β:
                                                                                        jmp   n00736_disjunction_α
.Lx00743_0:
                        .quad            .Lx00743_0_s
.Lx00743_0_s:
                        .string          "gedlnf"
#-----------------------------------------------------------------------------------------------------------------------
n00744_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3320], rax
                        .section         .rodata
.Lrkfn1521:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1521]                        # fn
                        lea              rsi, [rbp + 3312]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n00736_disjunction_α
                                                                                        jmp   n00736_disjunction_α
n00744_call_builtin_icon_β:
                                                                                        jmp   n00736_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00736_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n00745_var_α
n00736_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx00746_0
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n00747_lit_string_α
.Lx00746_0:
                                                                                        jmp   n00747_lit_string_α
n00736_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n00748_proc_gen_β
n00736_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n00747_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00745_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n00749_field_get_α
n00745_var_β:
                                                                                        jmp   n00736_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00749_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00750_0]               # fname
                        mov              rsi, qword ptr [rbp + 3264]                    # obj
                        mov              rdx, qword ptr [rbp + 3272]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00736_disjunction_af
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n00751_lit_string_α
.Lx00750_0:
                        .quad            .Lx00750_0_s
.Lx00750_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00751_lit_string_α:
                        mov              qword ptr [rbp + 3280], 2                      # result
                        mov              dword ptr [rbp + 3284], 4
                        mov              rax, qword ptr [rip + .Lx00752_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n00753_proc_gen_α
.Lx00752_0:
                        .quad            .Lx00752_0_s
.Lx00752_0_s:
                        .string          "FAMC"
#-----------------------------------------------------------------------------------------------------------------------
n00753_proc_gen_α:
                        mov              qword ptr [rbp + 3216], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00754_20
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00754_21
.Lx00754_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3248]                    # v
                        mov              rdx, qword ptr [rbp + 3256]                    # v
                        call             rt_arg_stage@PLT
.Lx00754_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00754_22
                        mov              rax, qword ptr [rbp + 3280]
                        mov              rdx, qword ptr [rbp + 3288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00754_23
.Lx00754_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3280]                    # v
                        mov              rdx, qword ptr [rbp + 3288]                    # v
                        call             rt_arg_stage@PLT
.Lx00754_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00754_1
                        lea              rcx, [rip + .Lx00754_3]
                        lea              rdx, [rip + .Lx00754_4]
                                                                                        jmp   rax
.Lx00754_3:
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax
                                                                                        jne   .Lx00754_5
                        mov              qword ptr [rbp + 3216], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00754_2
.Lx00754_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00754_2
.Lx00754_4:
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax
                                                                                        jne   .Lx00754_6
                        mov              qword ptr [rbp + 3216], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00754_2
.Lx00754_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00754_2
.Lx00754_1:
                        call             rt_faildescr@PLT
.Lx00754_2:
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 104
                                                                                        je    n00736_disjunction_af
                                                                                        jmp   n00755_assign_α
n00753_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00754_0:
                        .quad            .Lx00754_0_s
.Lx00754_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00755_assign_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n00756_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00756_lit_string_α:
                        mov              qword ptr [rbp + 3040], 2                      # result
                        mov              dword ptr [rbp + 3044], 6
                        mov              rax, qword ptr [rip + .Lx00757_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n00758_var_α
.Lx00757_0:
                        .quad            .Lx00757_0_s
.Lx00757_0_s:
                        .string          "father"
#-----------------------------------------------------------------------------------------------------------------------
n00758_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n00759_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00759_lit_string_α:
                        mov              qword ptr [rbp + 3152], 2                      # result
                        mov              dword ptr [rbp + 3156], 4
                        mov              rax, qword ptr [rip + .Lx00760_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n00761_proc_gen_α
.Lx00760_0:
                        .quad            .Lx00760_0_s
.Lx00760_0_s:
                        .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00761_proc_gen_α:
                        mov              qword ptr [rbp + 3104], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00762_20
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00762_21
.Lx00762_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3136]                    # v
                        mov              rdx, qword ptr [rbp + 3144]                    # v
                        call             rt_arg_stage@PLT
.Lx00762_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00762_22
                        mov              rax, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00762_23
.Lx00762_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3152]                    # v
                        mov              rdx, qword ptr [rbp + 3160]                    # v
                        call             rt_arg_stage@PLT
.Lx00762_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00762_1
                        lea              rcx, [rip + .Lx00762_3]
                        lea              rdx, [rip + .Lx00762_4]
                                                                                        jmp   rax
.Lx00762_3:
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx00762_5
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00762_2
.Lx00762_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00762_2
.Lx00762_4:
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx00762_6
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00762_2
.Lx00762_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00762_2
.Lx00762_1:
                        call             rt_faildescr@PLT
.Lx00762_2:
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 104
                                                                                        je    n00763_lit_string_α
                                                                                        jmp   n00764_call_proc_staged_α
n00761_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00762_0:
                        .quad            .Lx00762_0_s
.Lx00762_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00764_call_proc_staged_α:
                        lea              rsi, [rbp + 3040]
                        lea              rdx, [rbp + 3056]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00765_2
.Lx00765_2:
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 104
                                                                                        je    n00761_proc_gen_β
                                                                                        jmp   n00763_lit_string_α
n00764_call_proc_staged_β:
                                                                                        jmp   n00761_proc_gen_β
.Lx00765_0:
                        .quad            .Lx00765_0_s
.Lx00765_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00763_lit_string_α:
                        mov              qword ptr [rbp + 2848], 2                      # result
                        mov              dword ptr [rbp + 2852], 6
                        mov              rax, qword ptr [rip + .Lx00766_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n00767_var_α
.Lx00766_0:
                        .quad            .Lx00766_0_s
.Lx00766_0_s:
                        .string          "mother"
#-----------------------------------------------------------------------------------------------------------------------
n00767_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n00768_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00768_lit_string_α:
                        mov              qword ptr [rbp + 2960], 2                      # result
                        mov              dword ptr [rbp + 2964], 4
                        mov              rax, qword ptr [rip + .Lx00769_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n00748_proc_gen_α
.Lx00769_0:
                        .quad            .Lx00769_0_s
.Lx00769_0_s:
                        .string          "WIFE"
#-----------------------------------------------------------------------------------------------------------------------
n00748_proc_gen_α:
                        mov              qword ptr [rbp + 2912], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00770_20
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00770_21
.Lx00770_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2944]                    # v
                        mov              rdx, qword ptr [rbp + 2952]                    # v
                        call             rt_arg_stage@PLT
.Lx00770_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00770_22
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00770_23
.Lx00770_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2960]                    # v
                        mov              rdx, qword ptr [rbp + 2968]                    # v
                        call             rt_arg_stage@PLT
.Lx00770_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00770_1
                        lea              rcx, [rip + .Lx00770_3]
                        lea              rdx, [rip + .Lx00770_4]
                                                                                        jmp   rax
.Lx00770_3:
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2912]
                        test             rax, rax
                                                                                        jne   .Lx00770_5
                        mov              qword ptr [rbp + 2912], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00770_2
.Lx00770_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00770_2
.Lx00770_4:
                        mov              rax, qword ptr [rbp + 2912]
                        test             rax, rax
                                                                                        jne   .Lx00770_6
                        mov              qword ptr [rbp + 2912], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00770_2
.Lx00770_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00770_2
.Lx00770_1:
                        call             rt_faildescr@PLT
.Lx00770_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 104
                                                                                        je    n00747_lit_string_α
                                                                                        jmp   n00771_call_proc_staged_α
n00748_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00770_0:
                        .quad            .Lx00770_0_s
.Lx00770_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00771_call_proc_staged_α:
                        lea              rsi, [rbp + 2848]
                        lea              rdx, [rbp + 2864]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00772_2
.Lx00772_2:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 104
                                                                                        je    n00748_proc_gen_β
                                                                                        jmp   n00773_conjunction_α
n00771_call_proc_staged_β:
                                                                                        jmp   n00748_proc_gen_β
.Lx00772_0:
                        .quad            .Lx00772_0_s
.Lx00772_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00773_conjunction_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n00736_disjunction_as
n00773_conjunction_β:
                                                                                        jmp   n00747_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00747_lit_string_α:
                        mov              qword ptr [rbp + 2592], 2                      # result
                        mov              dword ptr [rbp + 2596], 2
                        mov              rax, qword ptr [rip + .Lx00774_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00775_var_α
.Lx00774_0:
                        .quad            .Lx00774_0_s
.Lx00774_0_s:
                        .string          "b."
#-----------------------------------------------------------------------------------------------------------------------
n00775_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n00776_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00776_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00777_0]               # fname
                        mov              rsi, qword ptr [rbp + 2704]                    # obj
                        mov              rdx, qword ptr [rbp + 2712]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00778_keyword_icon_α
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n00779_lit_string_α
.Lx00777_0:
                        .quad            .Lx00777_0_s
.Lx00777_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00779_lit_string_α:
                        mov              qword ptr [rbp + 2720], 2                      # result
                        mov              dword ptr [rbp + 2724], 4
                        mov              rax, qword ptr [rip + .Lx00780_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n00781_proc_gen_α
.Lx00780_0:
                        .quad            .Lx00780_0_s
.Lx00780_0_s:
                        .string          "BIRT"
#-----------------------------------------------------------------------------------------------------------------------
n00781_proc_gen_α:
                        mov              qword ptr [rbp + 2656], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00782_20
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00782_21
.Lx00782_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2688]                    # v
                        mov              rdx, qword ptr [rbp + 2696]                    # v
                        call             rt_arg_stage@PLT
.Lx00782_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00782_22
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00782_23
.Lx00782_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2720]                    # v
                        mov              rdx, qword ptr [rbp + 2728]                    # v
                        call             rt_arg_stage@PLT
.Lx00782_23:
                        mov              edi, 6                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00782_1
                        lea              rcx, [rip + .Lx00782_3]
                        lea              rdx, [rip + .Lx00782_4]
                                                                                        jmp   rax
.Lx00782_3:
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx00782_5
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00782_2
.Lx00782_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00782_2
.Lx00782_4:
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx00782_6
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00782_2
.Lx00782_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00782_2
.Lx00782_1:
                        call             rt_faildescr@PLT
.Lx00782_2:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 104
                                                                                        je    n00778_keyword_icon_α
                                                                                        jmp   n00783_call_proc_staged_α
n00781_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00782_0:
                        .quad            .Lx00782_0_s
.Lx00782_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00783_call_proc_staged_α:
                        lea              rsi, [rbp + 2592]
                        lea              rdx, [rbp + 2608]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00784_2
.Lx00784_2:
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 104
                                                                                        je    n00781_proc_gen_β
                                                                                        jmp   n00778_keyword_icon_α
n00783_call_proc_staged_β:
                                                                                        jmp   n00781_proc_gen_β
.Lx00784_0:
                        .quad            .Lx00784_0_s
.Lx00784_0_s:
                        .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00778_keyword_icon_α:
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                                                                                        jmp   n00785_assign_α
n00778_keyword_icon_β:
                                                                                        jmp   n00786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00785_assign_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00786_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00786_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00787_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00787_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00788_0]               # fname
                        mov              rsi, qword ptr [rbp + 464]                     # obj
                        mov              rdx, qword ptr [rbp + 472]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00789_lit_string_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00790_lit_string_α
.Lx00788_0:
                        .quad            .Lx00788_0_s
.Lx00788_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00790_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 4
                        mov              rax, qword ptr [rip + .Lx00791_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00792_proc_gen_α
.Lx00791_0:
                        .quad            .Lx00791_0_s
.Lx00791_0_s:
                        .string          "FAMS"
#-----------------------------------------------------------------------------------------------------------------------
n00792_proc_gen_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00793_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00793_21
.Lx00793_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 448]                     # v
                        mov              rdx, qword ptr [rbp + 456]                     # v
                        call             rt_arg_stage@PLT
.Lx00793_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00793_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00793_23
.Lx00793_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 480]                     # v
                        mov              rdx, qword ptr [rbp + 488]                     # v
                        call             rt_arg_stage@PLT
.Lx00793_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00793_1
                        lea              rcx, [rip + .Lx00793_3]
                        lea              rdx, [rip + .Lx00793_4]
                                                                                        jmp   rax
.Lx00793_3:
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx00793_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00793_2
.Lx00793_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00793_2
.Lx00793_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx00793_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00793_2
.Lx00793_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00793_2
.Lx00793_1:
                        call             rt_faildescr@PLT
.Lx00793_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n00789_lit_string_α
                                                                                        jmp   n00794_assign_α
n00792_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00793_0:
                        .quad            .Lx00793_0_s
.Lx00793_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00794_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n00795_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00795_bound_α:
                        mov              qword ptr [rbp + 496], rsp
                                                                                        jmp   n00796_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00796_lit_string_α:
                        mov              qword ptr [rbp + 2368], 2                      # result
                        mov              dword ptr [rbp + 2372], 2
                        mov              rax, qword ptr [rip + .Lx00797_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n00798_var_α
.Lx00797_0:
                        .quad            .Lx00797_0_s
.Lx00797_0_s:
                        .string          "m."
#-----------------------------------------------------------------------------------------------------------------------
n00798_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n00799_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00799_lit_string_α:
                        mov              qword ptr [rbp + 2480], 2                      # result
                        mov              dword ptr [rbp + 2484], 4
                        mov              rax, qword ptr [rip + .Lx00800_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00801_proc_gen_α
.Lx00800_0:
                        .quad            .Lx00800_0_s
.Lx00800_0_s:
                        .string          "MARR"
#-----------------------------------------------------------------------------------------------------------------------
n00801_proc_gen_α:
                        mov              qword ptr [rbp + 2432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00802_20
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00802_21
.Lx00802_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2464]                    # v
                        mov              rdx, qword ptr [rbp + 2472]                    # v
                        call             rt_arg_stage@PLT
.Lx00802_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00802_22
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00802_23
.Lx00802_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2480]                    # v
                        mov              rdx, qword ptr [rbp + 2488]                    # v
                        call             rt_arg_stage@PLT
.Lx00802_23:
                        mov              edi, 6                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00802_1
                        lea              rcx, [rip + .Lx00802_3]
                        lea              rdx, [rip + .Lx00802_4]
                                                                                        jmp   rax
.Lx00802_3:
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax
                                                                                        jne   .Lx00802_5
                        mov              qword ptr [rbp + 2432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00802_2
.Lx00802_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00802_2
.Lx00802_4:
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax
                                                                                        jne   .Lx00802_6
                        mov              qword ptr [rbp + 2432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00802_2
.Lx00802_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00802_2
.Lx00802_1:
                        call             rt_faildescr@PLT
.Lx00802_2:
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 104
                                                                                        je    n00803_lit_string_α
                                                                                        jmp   n00804_call_proc_staged_α
n00801_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00802_0:
                        .quad            .Lx00802_0_s
.Lx00802_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00804_call_proc_staged_α:
                        lea              rsi, [rbp + 2368]
                        lea              rdx, [rbp + 2384]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00805_2
.Lx00805_2:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 104
                                                                                        je    n00801_proc_gen_β
                                                                                        jmp   n00806_assign_α
n00804_call_proc_staged_β:
                                                                                        jmp   n00801_proc_gen_β
.Lx00805_0:
                        .quad            .Lx00805_0_s
.Lx00805_0_s:
                        .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00806_assign_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00803_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00803_lit_string_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], 6
                        mov              rax, qword ptr [rip + .Lx00807_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n00808_var_α
.Lx00807_0:
                        .quad            .Lx00807_0_s
.Lx00807_0_s:
                        .string          "  husb"
#-----------------------------------------------------------------------------------------------------------------------
n00808_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00809_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00809_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00810_0]               # fname
                        mov              rsi, qword ptr [rbp + 2176]                    # obj
                        mov              rdx, qword ptr [rbp + 2184]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00811_lit_string_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n00812_var_α
.Lx00810_0:
                        .quad            .Lx00810_0_s
.Lx00810_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00812_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n00813_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00813_lit_string_α:
                        mov              qword ptr [rbp + 2288], 2                      # result
                        mov              dword ptr [rbp + 2292], 4
                        mov              rax, qword ptr [rip + .Lx00814_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00815_proc_gen_α
.Lx00814_0:
                        .quad            .Lx00814_0_s
.Lx00814_0_s:
                        .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00815_proc_gen_α:
                        mov              qword ptr [rbp + 2240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00816_20
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00816_21
.Lx00816_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2272]                    # v
                        mov              rdx, qword ptr [rbp + 2280]                    # v
                        call             rt_arg_stage@PLT
.Lx00816_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00816_22
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00816_23
.Lx00816_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2288]                    # v
                        mov              rdx, qword ptr [rbp + 2296]                    # v
                        call             rt_arg_stage@PLT
.Lx00816_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00816_1
                        lea              rcx, [rip + .Lx00816_3]
                        lea              rdx, [rip + .Lx00816_4]
                                                                                        jmp   rax
.Lx00816_3:
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2240]
                        test             rax, rax
                                                                                        jne   .Lx00816_5
                        mov              qword ptr [rbp + 2240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00816_2
.Lx00816_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00816_2
.Lx00816_4:
                        mov              rax, qword ptr [rbp + 2240]
                        test             rax, rax
                                                                                        jne   .Lx00816_6
                        mov              qword ptr [rbp + 2240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00816_2
.Lx00816_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00816_2
.Lx00816_1:
                        call             rt_faildescr@PLT
.Lx00816_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        je    n00811_lit_string_α
                                                                                        jmp   n00817_binop_test_α
n00815_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00816_0:
                        .quad            .Lx00816_0_s
.Lx00816_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00817_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]                    # lhs
                        mov              rsi, qword ptr [rbp + 2168]                    # lhs
                        mov              rdx, qword ptr [rbp + 2192]                    # rhs
                        mov              rcx, qword ptr [rbp + 2200]                    # rhs
                        mov              r8d, 23                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00815_proc_gen_β
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00818_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00818_call_proc_staged_α:
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 2144]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00819_2
.Lx00819_2:
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 104
                                                                                        je    n00815_proc_gen_β
                                                                                        jmp   n00820_assign_α
n00818_call_proc_staged_β:
                                                                                        jmp   n00815_proc_gen_β
.Lx00819_0:
                        .quad            .Lx00819_0_s
.Lx00819_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00820_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00811_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00811_lit_string_α:
                        mov              qword ptr [rbp + 1888], 2                      # result
                        mov              dword ptr [rbp + 1892], 6
                        mov              rax, qword ptr [rip + .Lx00821_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00822_var_α
.Lx00821_0:
                        .quad            .Lx00821_0_s
.Lx00821_0_s:
                        .string          "  wife"
#-----------------------------------------------------------------------------------------------------------------------
n00822_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n00823_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00823_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00824_0]               # fname
                        mov              rsi, qword ptr [rbp + 1936]                    # obj
                        mov              rdx, qword ptr [rbp + 1944]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00825_disjunction_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n00826_var_α
.Lx00824_0:
                        .quad            .Lx00824_0_s
.Lx00824_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00826_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n00827_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00827_lit_string_α:
                        mov              qword ptr [rbp + 2048], 2                      # result
                        mov              dword ptr [rbp + 2052], 4
                        mov              rax, qword ptr [rip + .Lx00828_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n00829_proc_gen_α
.Lx00828_0:
                        .quad            .Lx00828_0_s
.Lx00828_0_s:
                        .string          "WIFE"
#-----------------------------------------------------------------------------------------------------------------------
n00829_proc_gen_α:
                        mov              qword ptr [rbp + 2000], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00830_20
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00830_21
.Lx00830_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2032]                    # v
                        mov              rdx, qword ptr [rbp + 2040]                    # v
                        call             rt_arg_stage@PLT
.Lx00830_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00830_22
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00830_23
.Lx00830_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2048]                    # v
                        mov              rdx, qword ptr [rbp + 2056]                    # v
                        call             rt_arg_stage@PLT
.Lx00830_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00830_1
                        lea              rcx, [rip + .Lx00830_3]
                        lea              rdx, [rip + .Lx00830_4]
                                                                                        jmp   rax
.Lx00830_3:
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2000]
                        test             rax, rax
                                                                                        jne   .Lx00830_5
                        mov              qword ptr [rbp + 2000], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00830_2
.Lx00830_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00830_2
.Lx00830_4:
                        mov              rax, qword ptr [rbp + 2000]
                        test             rax, rax
                                                                                        jne   .Lx00830_6
                        mov              qword ptr [rbp + 2000], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00830_2
.Lx00830_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00830_2
.Lx00830_1:
                        call             rt_faildescr@PLT
.Lx00830_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 104
                                                                                        je    n00825_disjunction_α
                                                                                        jmp   n00831_binop_test_α
n00829_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00830_0:
                        .quad            .Lx00830_0_s
.Lx00830_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00831_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1920]                    # lhs
                        mov              rsi, qword ptr [rbp + 1928]                    # lhs
                        mov              rdx, qword ptr [rbp + 1952]                    # rhs
                        mov              rcx, qword ptr [rbp + 1960]                    # rhs
                        mov              r8d, 23                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00829_proc_gen_β
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00832_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00832_call_proc_staged_α:
                        lea              rsi, [rbp + 1888]
                        lea              rdx, [rbp + 1904]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00833_2
.Lx00833_2:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n00829_proc_gen_β
                                                                                        jmp   n00834_assign_α
n00832_call_proc_staged_β:
                                                                                        jmp   n00829_proc_gen_β
.Lx00833_0:
                        .quad            .Lx00833_0_s
.Lx00833_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00834_assign_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00825_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00825_disjunction_α:
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              dword ptr [rbp + 1712], 0
                                                                                        jmp   n00835_var_α
n00825_disjunction_as:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 0
                                                                                        jne   .Lx00836_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n00837_disjunction_α
.Lx00836_0:
                                                                                        jmp   n00837_disjunction_α
n00825_disjunction_β:
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n00837_disjunction_α
n00825_disjunction_af:
                        add              dword ptr [rbp + 1712], 1
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n00837_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00835_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00838_unop_test_α
n00835_var_β:
                                                                                        jmp   n00825_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00838_unop_test_α:
                        mov              eax, dword ptr [rbp + 4944]
                        cmp              eax, 104
                                                                                        je    n00825_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00825_disjunction_af
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00839_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00839_lit_string_α:
                        mov              qword ptr [rbp + 1776], 2                      # result
                        mov              dword ptr [rbp + 1780], 5
                        mov              rax, qword ptr [rip + .Lx00840_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00841_call_builtin_icon_α
.Lx00840_0:
                        .quad            .Lx00840_0_s
.Lx00840_0_s:
                        .string          "   m."
#-----------------------------------------------------------------------------------------------------------------------
n00841_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn1610:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1610]                        # fn
                        lea              rsi, [rbp + 1744]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 104
                                                                                        je    n00837_disjunction_α
                                                                                        jmp   n00825_disjunction_as
n00841_call_builtin_icon_β:
                                                                                        jmp   n00837_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00837_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00842_disjunction_α
n00837_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00843_0
                                                                                        jmp   n00844_conjunction_α
.Lx00843_0:
                                                                                        jmp   n00844_conjunction_α
n00837_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                                                                                        jmp   n00845_unmark_α
n00837_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                                                                                        jmp   n00845_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00844_conjunction_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00845_unmark_α
n00844_conjunction_β:
                                                                                        jmp   n00845_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00842_disjunction_α:
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                        mov              dword ptr [rbp + 1392], 0
                                                                                        jmp   n00846_var_α
n00842_disjunction_as:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        jne   .Lx00847_0
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n00848_var_α
.Lx00847_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00847_1
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n00848_var_α
.Lx00847_1:
                                                                                        jmp   n00848_var_α
n00842_disjunction_β:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        je    n00849_proc_gen_β
                                                                                        jmp   n00842_disjunction_af
n00842_disjunction_af:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 1
                                                                                        je    n00850_var_α
                                                                                        jmp   n00837_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00848_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00851_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00851_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 4
                        mov              rax, qword ptr [rip + .Lx00852_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00853_proc_gen_α
.Lx00852_0:
                        .quad            .Lx00852_0_s
.Lx00852_0_s:
                        .string          "CHIL"
#-----------------------------------------------------------------------------------------------------------------------
n00853_proc_gen_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00854_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00854_21
.Lx00854_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 672]                     # v
                        mov              rdx, qword ptr [rbp + 680]                     # v
                        call             rt_arg_stage@PLT
.Lx00854_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00854_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00854_23
.Lx00854_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 688]                     # v
                        mov              rdx, qword ptr [rbp + 696]                     # v
                        call             rt_arg_stage@PLT
.Lx00854_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00854_1
                        lea              rcx, [rip + .Lx00854_3]
                        lea              rdx, [rip + .Lx00854_4]
                                                                                        jmp   rax
.Lx00854_3:
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx00854_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00854_2
.Lx00854_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00854_2
.Lx00854_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx00854_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00854_2
.Lx00854_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00854_2
.Lx00854_1:
                        call             rt_faildescr@PLT
.Lx00854_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n00845_unmark_α
                                                                                        jmp   n00855_assign_α
n00853_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00854_0:
                        .quad            .Lx00854_0_s
.Lx00854_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00855_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00856_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00856_bound_α:
                        mov              qword ptr [rbp + 704], rsp
                                                                                        jmp   n00857_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00857_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n00858_var_α
n00857_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx00859_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00860_lit_string_α
.Lx00859_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00859_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00860_lit_string_α
.Lx00859_1:
                                                                                        jmp   n00860_lit_string_α
n00857_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n00861_proc_gen_β
                                                                                        jmp   n00857_disjunction_af
n00857_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n00862_lit_string_α
                                                                                        jmp   n00863_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00860_lit_string_α:
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx00864_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00865_call_builtin_α
.Lx00864_0:
                        .quad            .Lx00864_0_s
.Lx00864_0_s:
                        .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n00865_call_builtin_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn1628:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1628]                        # fn
                        lea              rsi, [rbp + 1328]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n00866_lit_string_α
                                                                                        jmp   n00867_lit_string_α
n00865_call_builtin_β:
                                                                                        jmp   n00866_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00867_lit_string_α:
                        mov              qword ptr [rbp + 1280], 2                      # result
                        mov              dword ptr [rbp + 1284], 6
                        mov              rax, qword ptr [rip + .Lx00868_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n00869_var_α
.Lx00868_0:
                        .quad            .Lx00868_0_s
.Lx00868_0_s:
                        .string          "   son"
#-----------------------------------------------------------------------------------------------------------------------
n00869_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n00870_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00870_call_proc_staged_α:
                        lea              rsi, [rbp + 1280]
                        lea              rdx, [rbp + 1296]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00871_2
.Lx00871_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    n00863_unmark_α
                                                                                        jmp   n00872_assign_α
n00870_call_proc_staged_β:
                                                                                        jmp   n00863_unmark_α
.Lx00871_0:
                        .quad            .Lx00871_0_s
.Lx00871_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00872_assign_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                                                                                        jmp   n00873_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00866_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx00874_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n00875_call_builtin_α
.Lx00874_0:
                        .quad            .Lx00874_0_s
.Lx00874_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n00875_call_builtin_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn1637:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1637]                        # fn
                        lea              rsi, [rbp + 1152]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 104
                                                                                        je    n00876_lit_string_α
                                                                                        jmp   n00877_lit_string_α
n00875_call_builtin_β:
                                                                                        jmp   n00876_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00877_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 6
                        mov              rax, qword ptr [rip + .Lx00878_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n00879_var_α
.Lx00878_0:
                        .quad            .Lx00878_0_s
.Lx00878_0_s:
                        .string          "   dau"
#-----------------------------------------------------------------------------------------------------------------------
n00879_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00880_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00880_call_proc_staged_α:
                        lea              rsi, [rbp + 1104]
                        lea              rdx, [rbp + 1120]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00881_2
.Lx00881_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n00863_unmark_α
                                                                                        jmp   n00882_assign_α
n00880_call_proc_staged_β:
                                                                                        jmp   n00863_unmark_α
.Lx00881_0:
                        .quad            .Lx00881_0_s
.Lx00881_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00882_assign_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                                                                                        jmp   n00873_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00876_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 6
                        mov              rax, qword ptr [rip + .Lx00883_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00884_var_α
.Lx00883_0:
                        .quad            .Lx00883_0_s
.Lx00883_0_s:
                        .string          " child"
#-----------------------------------------------------------------------------------------------------------------------
n00884_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n00885_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00885_call_proc_staged_α:
                        lea              rsi, [rbp + 992]
                        lea              rdx, [rbp + 1008]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00886_2
.Lx00886_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n00863_unmark_α
                                                                                        jmp   n00887_assign_α
n00885_call_proc_staged_β:
                                                                                        jmp   n00863_unmark_α
.Lx00886_0:
                        .quad            .Lx00886_0_s
.Lx00886_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00887_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                                                                                        jmp   n00873_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00873_var_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00863_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00863_unmark_α:
                        mov              rsp, qword ptr [rbp + 704]
                                                                                        jmp   n00853_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00862_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 0
                        mov              rax, qword ptr [rip + .Lx00888_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n00857_disjunction_as
n00862_lit_string_β:
                                                                                        jmp   n00857_disjunction_af
.Lx00888_0:
                        .quad            .Lx00888_0_s
.Lx00888_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00858_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00889_lit_string_α
n00858_var_β:
                                                                                        jmp   n00857_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00889_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 3
                        mov              rax, qword ptr [rip + .Lx00890_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00861_proc_gen_α
.Lx00890_0:
                        .quad            .Lx00890_0_s
.Lx00890_0_s:
                        .string          "SEX"
#-----------------------------------------------------------------------------------------------------------------------
n00861_proc_gen_α:
                        mov              qword ptr [rbp + 848], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00891_20
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00891_21
.Lx00891_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 880]                     # v
                        mov              rdx, qword ptr [rbp + 888]                     # v
                        call             rt_arg_stage@PLT
.Lx00891_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00891_22
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00891_23
.Lx00891_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 896]                     # v
                        mov              rdx, qword ptr [rbp + 904]                     # v
                        call             rt_arg_stage@PLT
.Lx00891_23:
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00891_1
                        lea              rcx, [rip + .Lx00891_3]
                        lea              rdx, [rip + .Lx00891_4]
                                                                                        jmp   rax
.Lx00891_3:
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx00891_5
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00891_2
.Lx00891_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00891_2
.Lx00891_4:
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx00891_6
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00891_2
.Lx00891_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00891_2
.Lx00891_1:
                        call             rt_faildescr@PLT
.Lx00891_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n00857_disjunction_af
                                                                                        jmp   n00857_disjunction_as
n00861_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00891_0:
                        .quad            .Lx00891_0_s
.Lx00891_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00845_unmark_α:
                        mov              rsp, qword ptr [rbp + 496]
                                                                                        jmp   n00792_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00850_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n00892_lit_string_α
n00850_var_β:
                                                                                        jmp   n00893_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00892_lit_string_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], 4
                        mov              rax, qword ptr [rip + .Lx00894_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00895_proc_gen_α
.Lx00894_0:
                        .quad            .Lx00894_0_s
.Lx00894_0_s:
                        .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00895_proc_gen_α:
                        mov              qword ptr [rbp + 1632], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00896_20
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00896_21
.Lx00896_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1664]                    # v
                        mov              rdx, qword ptr [rbp + 1672]                    # v
                        call             rt_arg_stage@PLT
.Lx00896_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00896_22
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00896_23
.Lx00896_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1680]                    # v
                        mov              rdx, qword ptr [rbp + 1688]                    # v
                        call             rt_arg_stage@PLT
.Lx00896_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00896_1
                        lea              rcx, [rip + .Lx00896_3]
                        lea              rdx, [rip + .Lx00896_4]
                                                                                        jmp   rax
.Lx00896_3:
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1632]
                        test             rax, rax
                                                                                        jne   .Lx00896_5
                        mov              qword ptr [rbp + 1632], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00896_2
.Lx00896_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00896_2
.Lx00896_4:
                        mov              rax, qword ptr [rbp + 1632]
                        test             rax, rax
                                                                                        jne   .Lx00896_6
                        mov              qword ptr [rbp + 1632], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00896_2
.Lx00896_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00896_2
.Lx00896_1:
                        call             rt_faildescr@PLT
.Lx00896_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n00893_var_α
                                                                                        jmp   n00842_disjunction_af
n00895_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00896_0:
                        .quad            .Lx00896_0_s
.Lx00896_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00893_var_α:
                        mov              qword ptr [rbp + 1568], 0
                        mov              qword ptr [rbp + 1576], 0
                                                                                        jmp   n00842_disjunction_as
n00893_var_β:
                                                                                        jmp   n00842_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00846_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00897_field_get_α
n00846_var_β:
                                                                                        jmp   n00842_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00897_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00898_0]               # fname
                        mov              rsi, qword ptr [rbp + 1440]                    # obj
                        mov              rdx, qword ptr [rbp + 1448]                    # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00842_disjunction_af
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n00899_var_α
.Lx00898_0:
                        .quad            .Lx00898_0_s
.Lx00898_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00899_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n00900_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00900_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 4
                        mov              rax, qword ptr [rip + .Lx00901_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00849_proc_gen_α
.Lx00901_0:
                        .quad            .Lx00901_0_s
.Lx00901_0_s:
                        .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00849_proc_gen_α:
                        mov              qword ptr [rbp + 1504], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00902_20
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00902_21
.Lx00902_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1536]                    # v
                        mov              rdx, qword ptr [rbp + 1544]                    # v
                        call             rt_arg_stage@PLT
.Lx00902_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00902_22
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00902_23
.Lx00902_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1552]                    # v
                        mov              rdx, qword ptr [rbp + 1560]                    # v
                        call             rt_arg_stage@PLT
.Lx00902_23:
                        mov              edi, 8                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00902_1
                        lea              rcx, [rip + .Lx00902_3]
                        lea              rdx, [rip + .Lx00902_4]
                                                                                        jmp   rax
.Lx00902_3:
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1504]
                        test             rax, rax
                                                                                        jne   .Lx00902_5
                        mov              qword ptr [rbp + 1504], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00902_2
.Lx00902_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00902_2
.Lx00902_4:
                        mov              rax, qword ptr [rbp + 1504]
                        test             rax, rax
                                                                                        jne   .Lx00902_6
                        mov              qword ptr [rbp + 1504], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00902_2
.Lx00902_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00902_2
.Lx00902_1:
                        call             rt_faildescr@PLT
.Lx00902_2:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n00842_disjunction_af
                                                                                        jmp   n00903_binop_test_α
n00849_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00902_0:
                        .quad            .Lx00902_0_s
.Lx00902_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00903_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1424]                    # lhs
                        mov              rsi, qword ptr [rbp + 1432]                    # lhs
                        mov              rdx, qword ptr [rbp + 1456]                    # rhs
                        mov              rcx, qword ptr [rbp + 1464]                    # rhs
                        mov              r8d, 22                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00849_proc_gen_β
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n00842_disjunction_as
n00903_binop_test_β:
                                                                                        jmp   n00849_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00789_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Lx00904_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00905_var_α
.Lx00904_0:
                        .quad            .Lx00904_0_s
.Lx00904_0_s:
                        .string          "d."
#-----------------------------------------------------------------------------------------------------------------------
n00905_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00906_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00906_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00907_0]               # fname
                        mov              rsi, qword ptr [rbp + 336]                     # obj
                        mov              rdx, qword ptr [rbp + 344]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n00908_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00909_lit_string_α
.Lx00907_0:
                        .quad            .Lx00907_0_s
.Lx00907_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00909_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 4
                        mov              rax, qword ptr [rip + .Lx00910_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00911_proc_gen_α
.Lx00910_0:
                        .quad            .Lx00910_0_s
.Lx00910_0_s:
                        .string          "DEAT"
#-----------------------------------------------------------------------------------------------------------------------
n00911_proc_gen_α:
                        mov              qword ptr [rbp + 288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00912_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00912_21
.Lx00912_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
.Lx00912_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00912_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00912_23
.Lx00912_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
.Lx00912_23:
                        mov              edi, 6                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00912_1
                        lea              rcx, [rip + .Lx00912_3]
                        lea              rdx, [rip + .Lx00912_4]
                                                                                        jmp   rax
.Lx00912_3:
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx00912_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00912_2
.Lx00912_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00912_2
.Lx00912_4:
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx00912_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00912_2
.Lx00912_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00912_2
.Lx00912_1:
                        call             rt_faildescr@PLT
.Lx00912_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n00908_unmark_α
                                                                                        jmp   n00913_call_proc_staged_α
n00911_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        call             rt_gen_get_cont@PLT
                        mov              r11, rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              rbp, rax
                        mov              rsp, rax
                                                                                        jmp   r11
.Lx00912_0:
                        .quad            .Lx00912_0_s
.Lx00912_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00913_call_proc_staged_α:
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 240]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00914_2
.Lx00914_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00911_proc_gen_β
                                                                                        jmp   n00915_conjunction_α
n00913_call_proc_staged_β:
                                                                                        jmp   n00911_proc_gen_β
.Lx00914_0:
                        .quad            .Lx00914_0_s
.Lx00914_0_s:
                        .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00915_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00908_unmark_α
n00915_conjunction_β:
                                                                                        jmp   n00908_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00908_unmark_α:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n00726_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00672_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00916_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00670_var_α
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                                                                                        jmp   n00917_assign_α
n00672_keyword_icon_β:
                                                                                        jmp   n00670_var_α
.Lx00916_0:
                        .quad            .Lx00916_0_s
.Lx00916_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n00917_assign_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              rdx, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n00667_disjunction_as
n00917_assign_β:
                                                                                        jmp   n00670_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00668_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n00918_unop_α
n00668_var_β:
                                                                                        jmp   n00667_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00918_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n00919_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00919_lit_integer_α:
                        mov              qword ptr [rbp + 4832], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00920_0]
                        mov              qword ptr [rbp + 4840], rax
                                                                                        jmp   n00921_binop_test_α
.Lx00920_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00921_binop_test_α:
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 112
                                                                                        je    .Lx00922_0
                        mov              eax, dword ptr [rbp + 4832]
                        cmp              eax, 112
                                                                                        je    .Lx00922_0
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 3
                                                                                        jne   .Lx00922_2
                        mov              eax, dword ptr [rbp + 4832]
                        cmp              eax, 3
                                                                                        jne   .Lx00922_2
.Lx00922_1:
                        mov              rax, qword ptr [rbp + 4808]
                        mov              rcx, qword ptr [rbp + 4840]
                        cmp              rax, rcx
                                                                                        jle   n00667_disjunction_af
                        mov              rcx, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4784], rcx
                        mov              rcx, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4792], rcx
                                                                                        jmp   n00671_disjunction_α
.Lx00922_0:
                        mov              rdi, qword ptr [rbp + 4800]                    # a
                        mov              rsi, qword ptr [rbp + 4808]                    # a
                        mov              rdx, qword ptr [rbp + 4832]                    # b
                        mov              rcx, qword ptr [rbp + 4840]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 4784]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00922_1
                        cmp              eax, 1
                                                                                        je    n00667_disjunction_af
                                                                                        jmp   n00671_disjunction_α
.Lx00922_2:
                        mov              rdi, qword ptr [rbp + 4800]                    # lhs
                        mov              rsi, qword ptr [rbp + 4808]                    # lhs
                        mov              rdx, qword ptr [rbp + 4832]                    # rhs
                        mov              rcx, qword ptr [rbp + 4840]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00667_disjunction_af
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n00671_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00671_disjunction_α:
                        mov              qword ptr [rbp + 4496], 0
                        mov              qword ptr [rbp + 4504], 0
                        mov              dword ptr [rbp + 4512], 0
                                                                                        jmp   n00923_var_ref_α
n00671_disjunction_as:
                        mov              eax, dword ptr [rbp + 4512]
                        cmp              eax, 0
                                                                                        jne   .Lx00924_0
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n00925_assign_α
.Lx00924_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00924_1
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n00925_assign_α
.Lx00924_1:
                                                                                        jmp   n00925_assign_α
n00671_disjunction_β:
                        mov              eax, dword ptr [rbp + 4512]
                        cmp              eax, 0
                                                                                        je    n00671_disjunction_af
                                                                                        jmp   n00671_disjunction_af
n00671_disjunction_af:
                        add              dword ptr [rbp + 4512], 1
                        mov              eax, dword ptr [rbp + 4512]
                        cmp              eax, 1
                                                                                        je    n00926_lit_string_α
                                                                                        jmp   n00670_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00925_assign_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              rdx, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                                                                                        jmp   n00667_disjunction_as
n00925_assign_β:
                                                                                        jmp   n00670_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00926_lit_string_α:
                        mov              qword ptr [rbp + 4704], 2                      # result
                        mov              dword ptr [rbp + 4708], 11
                        mov              rax, qword ptr [rip + .Lx00927_0]
                        mov              qword ptr [rbp + 4712], rax
                                                                                        jmp   n00928_var_ref_α
n00926_lit_string_β:
                                                                                        jmp   n00671_disjunction_af
.Lx00927_0:
                        .quad            .Lx00927_0_s
.Lx00927_0_s:
                        .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n00928_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                                                                                        jmp   n00929_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00929_lit_integer_α:
                        mov              qword ptr [rbp + 4736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00930_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n00931_subscript_α
.Lx00930_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00931_subscript_α:
                        mov              rdi, qword ptr [rbp + 4720]                    # base
                        mov              rsi, qword ptr [rbp + 4728]                    # base
                        mov              rdx, qword ptr [rbp + 4736]                    # idx
                        mov              rcx, qword ptr [rbp + 4744]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00671_disjunction_af
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n00932_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00932_deref_α:
                        mov              rdi, qword ptr [rbp + 4752]                    # d
                        mov              rsi, qword ptr [rbp + 4760]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00671_disjunction_af
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                                                                                        jmp   n00933_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00933_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4680], rax
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4664], rax
                        .section         .rodata
.Lrkfn1706:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1706]                        # fn
                        lea              rsi, [rbp + 4656]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        cmp              eax, 104
                                                                                        je    n00671_disjunction_af
                                                                                        jmp   n00671_disjunction_as
n00933_call_builtin_icon_β:
                                                                                        jmp   n00671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00923_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n00934_lit_integer_α
n00923_var_ref_β:
                                                                                        jmp   n00671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00934_lit_integer_α:
                        mov              qword ptr [rbp + 4592], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00935_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n00936_subscript_α
.Lx00935_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00936_subscript_α:
                        mov              rdi, qword ptr [rbp + 4576]                    # base
                        mov              rsi, qword ptr [rbp + 4584]                    # base
                        mov              rdx, qword ptr [rbp + 4592]                    # idx
                        mov              rcx, qword ptr [rbp + 4600]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00671_disjunction_af
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                                                                                        jmp   n00937_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00937_deref_α:
                        mov              rdi, qword ptr [rbp + 4608]                    # d
                        mov              rsi, qword ptr [rbp + 4616]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00671_disjunction_af
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                                                                                        jmp   n00938_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00938_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4552], rax
                        .section         .rodata
.Lrkfn1713:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1713]                        # fn
                        lea              rsi, [rbp + 4544]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              eax, 104
                                                                                        je    n00671_disjunction_af
                                                                                        jmp   n00671_disjunction_as
n00938_call_builtin_icon_β:
                                                                                        jmp   n00671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 5072]
                        mov              rcx, qword ptr [rbp + 5048]
                        mov              rbp, qword ptr [rbp + 5064]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 5072]
                        mov              rcx, qword ptr [rbp + 5056]
                        mov              rbp, qword ptr [rbp + 5064]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
