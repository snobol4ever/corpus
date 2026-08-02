                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_try_α
proc_try_α:
proc_try_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 496
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx23_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn25:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]                          # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n20_return_α
                                                                                        jmp   n3_lit_string_α
n2_call_builtin_icon_β:
                                                                                        jmp   n20_return_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n4_var_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n5_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:
                        lea              rsi, [rbp + 352]
                        call             proc_r_dcα
                                                                                        jmp   .Lx30_2
.Lx30_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n20_return_α
                                                                                        jmp   n6_disjunction_α
n5_call_proc_staged_β:
                                                                                        jmp   n20_return_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n15_lit_string_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx32_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n7_lit_string_α
.Lx32_0:
                        cmp              eax, 1
                                                                                        jne   .Lx32_1
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n7_lit_string_α
.Lx32_1:
                                                                                        jmp   n7_lit_string_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n14_keyword_icon_α
                                                                                        jmp   n20_return_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 4
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n8_var_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n11_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_value_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 664], rax
                        mov              qword ptr [rbp + 672], 0
                        mov              rdi, qword ptr [rbp + 608]                     # callee
                        mov              rsi, qword ptr [rbp + 616]                     # callee
                        lea              rdx, [rbp + 640]                               # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx41_7
                        lea              rcx, [rip + .Lx41_3]
                        lea              rdx, [rip + .Lx41_4]
                                                                                        jmp   rax
.Lx41_3:
                        mov              qword ptr [rbp + 680], rsp
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx41_5
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx41_2
.Lx41_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx41_2
.Lx41_4:
                        mov              qword ptr [rbp + 680], rsp
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx41_6
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx41_2
.Lx41_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx41_2
.Lx41_7:
                        mov              rdi, qword ptr [rbp + 608]                     # callee
                        mov              rsi, qword ptr [rbp + 616]                     # callee
                        lea              rdx, [rbp + 640]                               # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 672]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx41_2:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_β
                                                                                        jmp   n12_call_proc_staged_α
n11_call_value_β:
                        mov              rax, qword ptr [rbp + 672]
                        cmp              rax, 1
                                                                                        jne   .Lx41_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 680]
                                                                                        jmp   qword ptr [rsp]
.Lx41_8:
                        lea              rdi, [rbp + 672]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n6_disjunction_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n12_call_proc_staged_α
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n12_call_proc_staged_α:
                        lea              rsi, [rbp + 624]
                        call             proc_r_dcα
                                                                                        jmp   .Lx43_2
.Lx43_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n11_call_value_β
                                                                                        jmp   n13_call_builtin_icon_α
n12_call_proc_staged_β:
                                                                                        jmp   n11_call_value_β
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn45:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn45]                          # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 6                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n11_call_value_β
                                                                                        jmp   n20_return_α
n13_call_builtin_icon_β:
                                                                                        jmp   n11_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_icon_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                                                                                        jmp   n6_disjunction_as
n14_keyword_icon_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 2
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n16_var_α
n15_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n17_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n17_unop_test_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 104
                                                                                        je    n6_disjunction_af
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        lea              rsi, [rbp + 480]
                        call             proc_r_dcα
                                                                                        jmp   .Lx52_2
.Lx52_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n19_binop_α
n18_call_proc_staged_β:
                                                                                        jmp   n6_disjunction_af
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              rdi, qword ptr [rbp + 416]                     # a
                        mov              rsi, qword ptr [rbp + 424]                     # a
                        mov              rdx, qword ptr [rbp + 432]                     # b
                        mov              rcx, qword ptr [rbp + 440]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n6_disjunction_as
n19_binop_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 496
                                                                                        jmp   proc_try_γ
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
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 768], r11
                        lea              rax, [rip + .Lx55_2]
                        mov              qword ptr [rbp + 776], rax
                        lea              rax, [rip + .Lx55_3]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 752                                       # suffix_off
                        mov              edx, 768                                       # region_bytes
                        mov              ecx, 3                                         # np
                        mov              r8d, 3                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_try_α_body
.Lx55_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -800
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx55_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -800
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_r_α
proc_r_α:
proc_r_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n56_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n69_var_α
n56_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx85_0
                                                                                        jmp   proc_r_ω
.Lx85_0:
                        cmp              eax, 1
                                                                                        jne   .Lx85_1
                                                                                        jmp   proc_r_ω
.Lx85_1:
                                                                                        jmp   proc_r_ω
n56_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_r_ω
                                                                                        jmp   proc_r_ω
n56_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n57_var_α
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n58_lit_integer_α
n57_var_β:
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n59_coerce_numeric_α
.Lx88_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx90_1
                        cmp              eax, 3
                                                                                        jne   .Lx90_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx90_0
.Lx90_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n60_binop_α
.Lx90_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 480]                               # other
                        lea              rdx, [rbp + 448]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n60_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx91_0
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, 1000
                        imul             rax, rcx
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n61_lit_real_α
.Lx91_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n61_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_real_α:
                        mov              qword ptr [rbp + 496], 5                       # result
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n62_coerce_numeric_α
.Lx92_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n62_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 5
                                                                                        je    .Lx94_1
                        cmp              eax, 3
                                                                                        jne   .Lx94_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 3
                                                                                        jne   .Lx94_0
.Lx94_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n63_binop_α
.Lx94_0:
                        lea              rdi, [rbp + 432]                               # self
                        lea              rsi, [rbp + 496]                               # other
                        lea              rdx, [rbp + 416]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n63_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n64_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn97:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]                          # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    proc_r_ω
                                                                                        jmp   n65_lit_real_α
n64_call_builtin_icon_β:
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_real_α:
                        mov              qword ptr [rbp + 512], 5                       # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n66_coerce_numeric_α
.Lx98_0:
                        .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n66_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 5
                                                                                        je    .Lx100_1
                        cmp              eax, 3
                                                                                        jne   .Lx100_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx100_0
.Lx100_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n67_binop_α
.Lx100_0:
                        lea              rdi, [rbp + 352]                               # self
                        lea              rsi, [rbp + 512]                               # other
                        lea              rdx, [rbp + 336]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n67_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n68_return_α
#-----------------------------------------------------------------------------------------------------------------------
n68_return_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_r_γ
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n70_lit_integer_α
n69_var_β:
                                                                                        jmp   n56_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n71_binop_test_α
.Lx105_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx106_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 112
                                                                                        je    .Lx106_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx106_2
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx106_2
.Lx106_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 312]
                        cmp              rax, rcx
                                                                                        jl    n56_disjunction_af
                        mov              rcx, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n72_var_α
.Lx106_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 304]                     # b
                        mov              rcx, qword ptr [rbp + 312]                     # b
                        mov              r8d, 8                                         # op
                        lea              r9, [rbp + 272]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx106_1
                        cmp              eax, 1
                                                                                        je    n56_disjunction_af
                                                                                        jmp   n72_var_α
.Lx106_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 304]                     # rhs
                        mov              rcx, qword ptr [rbp + 312]                     # rhs
                        mov              r8d, 8                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n56_disjunction_af
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n72_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n73_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n74_coerce_numeric_α
.Lx109_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx111_1
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
.Lx111_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n75_binop_α
.Lx111_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 224]                               # other
                        lea              rdx, [rbp + 192]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n75_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx112_0
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, 1000
                        imul             rax, rcx
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n76_lit_real_α
.Lx112_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n76_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_real_α:
                        mov              qword ptr [rbp + 240], 5                       # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n77_coerce_numeric_α
.Lx113_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 5
                                                                                        je    .Lx115_1
                        cmp              eax, 3
                                                                                        jne   .Lx115_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx115_0
.Lx115_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n78_binop_α
.Lx115_0:
                        lea              rdi, [rbp + 176]                               # self
                        lea              rsi, [rbp + 240]                               # other
                        lea              rdx, [rbp + 160]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n78_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n79_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn118:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_r_ω
                                                                                        jmp   n80_lit_real_α
n79_call_builtin_icon_β:
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_real_α:
                        mov              qword ptr [rbp + 256], 5                       # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n81_coerce_numeric_α
.Lx119_0:
                        .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx121_1
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
.Lx121_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n82_binop_α
.Lx121_0:
                        lea              rdi, [rbp + 96]                                # self
                        lea              rsi, [rbp + 256]                               # other
                        lea              rdx, [rbp + 80]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n82_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n83_return_α
#-----------------------------------------------------------------------------------------------------------------------
n83_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_r_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_r_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_r_β:
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_r_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_r_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_r_dcα:
                        pop              r11
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 544], r11
                        lea              rax, [rip + .Lx124_2]
                        mov              qword ptr [rbp + 552], rax
                        lea              rax, [rip + .Lx124_3]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 528                                       # suffix_off
                        mov              edx, 544                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_r_α_body
.Lx124_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -576
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx124_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -576
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
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_try_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "r"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_r_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_r_dcα]
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
n125_proc_value_α:
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
                        mov              rdi, qword ptr [rip + .Lx145_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n126_disjunction_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "sqrt"
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n133_lit_real_α
n126_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx147_0
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx147_0:
                        cmp              eax, 1
                                                                                        jne   .Lx147_1
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx147_1:
                        cmp              eax, 2
                                                                                        jne   .Lx147_2
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx147_2:
                        cmp              eax, 3
                                                                                        jne   .Lx147_3
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx147_3:
                        cmp              eax, 4
                                                                                        jne   .Lx147_4
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx147_4:
                        cmp              eax, 5
                                                                                        jne   .Lx147_5
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx147_5:
                                                                                        jmp   n127_call_proc_staged_α
n126_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        je    n126_disjunction_af
                        cmp              eax, 1
                                                                                        je    n126_disjunction_af
                        cmp              eax, 2
                                                                                        je    n126_disjunction_af
                        cmp              eax, 3
                                                                                        je    n126_disjunction_af
                        cmp              eax, 4
                                                                                        je    n126_disjunction_af
                                                                                        jmp   n126_disjunction_af
n126_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 1
                                                                                        je    n132_lit_real_α
                        cmp              eax, 2
                                                                                        je    n131_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n130_lit_real_α
                        cmp              eax, 4
                                                                                        je    n129_lit_string_α
                        cmp              eax, 5
                                                                                        je    n128_lit_real_α
                                                                                        jmp   n134_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 2720]
                        lea              rdx, [rbp + 2736]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx149_1
                        lea              rcx, [rip + .Lx149_3]
                        lea              rdx, [rip + .Lx149_4]
                                                                                        jmp   rax
.Lx149_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx149_2
.Lx149_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx149_2
.Lx149_1:
                        call             rt_faildescr@PLT
.Lx149_2:
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 104
                                                                                        je    n126_disjunction_β
                                                                                        jmp   n126_disjunction_β
n127_call_proc_staged_β:
                                                                                        jmp   n126_disjunction_β
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_real_α:
                        mov              qword ptr [rbp + 2848], 5                      # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n126_disjunction_as
n128_lit_real_β:
                                                                                        jmp   n126_disjunction_af
.Lx150_0:
                        .quad            4643211215818981376
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 2832], 2                      # result
                        mov              dword ptr [rbp + 2836], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n126_disjunction_as
n129_lit_string_β:
                                                                                        jmp   n126_disjunction_af
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "4"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_real_α:
                        mov              qword ptr [rbp + 2816], 5                      # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n126_disjunction_as
n130_lit_real_β:
                                                                                        jmp   n126_disjunction_af
.Lx152_0:
                        .quad            4612248968380809216
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 3                      # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n126_disjunction_as
n131_lit_integer_β:
                                                                                        jmp   n126_disjunction_af
.Lx153_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_real_α:
                        mov              qword ptr [rbp + 2784], 5                      # result
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n126_disjunction_as
n132_lit_real_β:
                                                                                        jmp   n126_disjunction_af
.Lx154_0:
                        .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_real_α:
                        mov              qword ptr [rbp + 2768], 5                      # result
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n126_disjunction_as
n133_lit_real_β:
                                                                                        jmp   n126_disjunction_af
.Lx155_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n134_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx157_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n135_disjunction_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n135_disjunction_α:
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                        mov              dword ptr [rbp + 2512], 0
                                                                                        jmp   n143_lit_real_α
n135_disjunction_as:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 0
                                                                                        jne   .Lx159_0
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx159_0:
                        cmp              eax, 1
                                                                                        jne   .Lx159_1
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx159_1:
                        cmp              eax, 2
                                                                                        jne   .Lx159_2
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx159_2:
                        cmp              eax, 3
                                                                                        jne   .Lx159_3
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx159_3:
                        cmp              eax, 4
                                                                                        jne   .Lx159_4
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx159_4:
                        cmp              eax, 5
                                                                                        jne   .Lx159_5
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx159_5:
                        cmp              eax, 6
                                                                                        jne   .Lx159_6
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx159_6:
                                                                                        jmp   n136_call_proc_staged_α
n135_disjunction_β:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 0
                                                                                        je    n135_disjunction_af
                        cmp              eax, 1
                                                                                        je    n135_disjunction_af
                        cmp              eax, 2
                                                                                        je    n135_disjunction_af
                        cmp              eax, 3
                                                                                        je    n135_disjunction_af
                        cmp              eax, 4
                                                                                        je    n135_disjunction_af
                        cmp              eax, 5
                                                                                        je    n135_disjunction_af
                                                                                        jmp   n135_disjunction_af
n135_disjunction_af:
                        add              dword ptr [rbp + 2512], 1
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 1
                                                                                        je    n142_lit_real_α
                        cmp              eax, 2
                                                                                        je    n141_lit_real_α
                        cmp              eax, 3
                                                                                        je    n140_keyword_icon_α
                        cmp              eax, 4
                                                                                        je    n139_lit_string_α
                        cmp              eax, 5
                                                                                        je    n138_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n137_lit_integer_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 2480]
                        lea              rdx, [rbp + 2496]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx161_1
                        lea              rcx, [rip + .Lx161_3]
                        lea              rdx, [rip + .Lx161_4]
                                                                                        jmp   rax
.Lx161_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx161_2
.Lx161_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx161_2
.Lx161_1:
                        call             rt_faildescr@PLT
.Lx161_2:
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 104
                                                                                        je    n135_disjunction_β
                                                                                        jmp   n135_disjunction_β
n136_call_proc_staged_β:
                                                                                        jmp   n135_disjunction_β
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 3                      # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n135_disjunction_as
n137_lit_integer_β:
                                                                                        jmp   n135_disjunction_af
.Lx162_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 2624], 3                      # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n135_disjunction_as
n138_lit_integer_β:
                                                                                        jmp   n135_disjunction_af
.Lx163_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 2608], 2                      # result
                        mov              dword ptr [rbp + 2612], 2
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n135_disjunction_as
n139_lit_string_β:
                                                                                        jmp   n135_disjunction_af
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "10"
#-----------------------------------------------------------------------------------------------------------------------
n140_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx165_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n135_disjunction_af
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n135_disjunction_as
n140_keyword_icon_β:
                                                                                        jmp   n135_disjunction_af
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_real_α:
                        mov              qword ptr [rbp + 2560], 5                      # result
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n135_disjunction_as
n141_lit_real_β:
                                                                                        jmp   n135_disjunction_af
.Lx166_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_real_α:
                        mov              qword ptr [rbp + 2544], 5                      # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n135_disjunction_as
n142_lit_real_β:
                                                                                        jmp   n135_disjunction_af
.Lx167_0:
                        .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_real_α:
                        mov              qword ptr [rbp + 2528], 5                      # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n135_disjunction_as
n143_lit_real_β:
                                                                                        jmp   n135_disjunction_af
.Lx168_0:
                        .quad            4591870180066957722
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
