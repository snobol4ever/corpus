                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_toby_α
proc_toby_α:
                        .global          proc_toby_α
                        .global          proc_toby_β
                        .global          proc_toby_γ
                        .global          proc_toby_ω
                        sub              rsp, 864
                        mov              [rsp + 840], rcx
                        mov              [rsp + 848], rdx
                        mov              [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 800
                        mov              edx, 832
                        call             rt_jmp_frame_lexprep2@PLT
proc_toby_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
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
                        lea              rdi, [rip + .Lrkfn33]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n2_var_α
                                                                                        jmp   n3_lit_string_α
n1_call_builtin_icon_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n6_binop_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          " to "
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx37_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_binop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn42:               .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n5_var_α
                                                                                        jmp   n11_call_builtin_icon_α
n7_call_builtin_icon_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn46:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rbp + 80]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_toby_ω
                                                                                        jmp   proc_toby_ω
n9_call_builtin_icon_β:
                                                                                        jmp   proc_toby_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn50:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n5_var_α
                                                                                        jmp   n5_var_α
n11_call_builtin_icon_β:
                                                                                        jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n14_to_by_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn54:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n2_var_α
                                                                                        jmp   n15_binop_α
n13_call_builtin_icon_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_to_by_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 160], 6
                        mov              qword ptr [rbp + 168], rax
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lx56_0:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 184]
                        cmp              rdx, 0
                                                                                        jl    .Lx56_1
                        cmp              rax, rcx
                                                                                        jg    n9_call_builtin_icon_α
                                                                                        jmp   .Lx56_2
.Lx56_1:
                        cmp              rax, rcx
                                                                                        jl    n9_call_builtin_icon_α
.Lx56_2:
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n16_assign_α
n14_to_by_β:
                        mov              rdx, qword ptr [rbp + 184]
                        mov              rax, qword ptr [rbp + 128]
                        add              rax, rdx
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   .Lx56_0
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n18_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n19_binop_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          " by "
#-----------------------------------------------------------------------------------------------------------------------
n18_bound_α:
                        mov              qword ptr [rbp + 192], rsp
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n22_var_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n24_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn69:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n2_var_α
                                                                                        jmp   n26_binop_α
n23_call_builtin_icon_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn71:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n25_unmark_α
                                                                                        jmp   n25_unmark_α
n24_call_builtin_icon_β:
                                                                                        jmp   n25_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n25_unmark_α:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n14_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n28_binop_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n29_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_β:
                                                                                        jmp   proc_toby_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 840]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_ω:
                        mov              rax, [rbp + 848]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_toby_dcα:
                        pop              r11
                        sub              rsp, 880
                        mov              qword ptr [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 832], r11
                        lea              rax, [rip + .Lx78_2]
                        mov              qword ptr [rbp + 840], rax
                        lea              rax, [rip + .Lx78_3]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 800
                        mov              edx, 832
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_toby_α_body
.Lx78_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -864
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx78_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -864
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_unop_α
proc_unop_α:
                        .global          proc_unop_α
                        .global          proc_unop_β
                        .global          proc_unop_γ
                        .global          proc_unop_ω
                        sub              rsp, 1328
                        mov              [rsp + 1304], rcx
                        mov              [rsp + 1312], rdx
                        mov              [rsp + 1320], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1296
                        mov              edx, 1296
                        call             rt_jmp_frame_lexprep2@PLT
proc_unop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n82_binop_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n81_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_unop_γ
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n84_call_builtin_icon_α
.Lx119_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn121:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n81_return_α
                                                                                        jmp   n85_disjunction_α
n84_call_builtin_icon_β:
                                                                                        jmp   n81_return_α
#-----------------------------------------------------------------------------------------------------------------------
n85_disjunction_α:
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              dword ptr [rbp + 416], 0
                                                                                        jmp   n87_var_α
n85_disjunction_as:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        jne   .Lx123_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n86_lit_integer_α
.Lx123_0:
                        cmp              eax, 1
                                                                                        jne   .Lx123_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n86_lit_integer_α
.Lx123_1:
                                                                                        jmp   n86_lit_integer_α
n85_disjunction_β:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 0
                                                                                        je    n88_call_value_β
                                                                                        jmp   n85_disjunction_af
n85_disjunction_af:
                        add              dword ptr [rbp + 416], 1
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 1
                                                                                        je    n89_lit_string_α
                                                                                        jmp   n81_return_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n90_call_builtin_icon_α
.Lx124_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n91_var_α
n87_var_β:
                                                                                        jmp   n85_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_call_value_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              qword ptr [rbp + 480], 0
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        lea              rdx, [rbp + 464]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx128_7
                        lea              rcx, [rip + .Lx128_3]
                        lea              rdx, [rip + .Lx128_4]
                                                                                        jmp   rax
.Lx128_3:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx128_5
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx128_2
.Lx128_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx128_2
.Lx128_4:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx128_6
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx128_2
.Lx128_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx128_2
.Lx128_7:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        lea              rdx, [rbp + 464]
                        mov              ecx, 1
                        lea              r8, [rbp + 480]
                        call             rt_call_value_gen_h@PLT
.Lx128_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n85_disjunction_af
                                                                                        jmp   n85_disjunction_as
n88_call_value_β:
                        mov              rax, qword ptr [rbp + 480]
                        cmp              rax, 1
                                                                                        jne   .Lx128_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   qword ptr [rsp]
.Lx128_8:
                        lea              rdi, [rbp + 480]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n85_disjunction_af
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n85_disjunction_as
                                                                                        jmp   n85_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n85_disjunction_as
n89_lit_string_β:
                                                                                        jmp   n85_disjunction_af
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn131:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n85_disjunction_β
                                                                                        jmp   n92_disjunction_α
n90_call_builtin_icon_β:
                                                                                        jmp   n85_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n88_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n92_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n94_var_α
n92_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx135_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n93_lit_integer_α
.Lx135_0:
                        cmp              eax, 1
                                                                                        jne   .Lx135_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n93_lit_integer_α
.Lx135_1:
                                                                                        jmp   n93_lit_integer_α
n92_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    n95_call_value_β
                                                                                        jmp   n92_disjunction_af
n92_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    n96_lit_string_α
                                                                                        jmp   n85_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n97_call_builtin_icon_α
.Lx136_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n98_var_α
n94_var_β:
                                                                                        jmp   n92_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n95_call_value_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              qword ptr [rbp + 720], 0
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        lea              rdx, [rbp + 704]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx140_7
                        lea              rcx, [rip + .Lx140_3]
                        lea              rdx, [rip + .Lx140_4]
                                                                                        jmp   rax
.Lx140_3:
                        mov              qword ptr [rbp + 728], rsp
                        mov              rax, qword ptr [rbp + 720]
                        test             rax, rax
                                                                                        jne   .Lx140_5
                        mov              qword ptr [rbp + 720], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx140_2
.Lx140_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx140_2
.Lx140_4:
                        mov              qword ptr [rbp + 728], rsp
                        mov              rax, qword ptr [rbp + 720]
                        test             rax, rax
                                                                                        jne   .Lx140_6
                        mov              qword ptr [rbp + 720], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx140_2
.Lx140_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx140_2
.Lx140_7:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        lea              rdx, [rbp + 704]
                        mov              ecx, 1
                        lea              r8, [rbp + 720]
                        call             rt_call_value_gen_h@PLT
.Lx140_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n92_disjunction_af
                                                                                        jmp   n92_disjunction_as
n95_call_value_β:
                        mov              rax, qword ptr [rbp + 720]
                        cmp              rax, 1
                                                                                        jne   .Lx140_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 728]
                                                                                        jmp   qword ptr [rsp]
.Lx140_8:
                        lea              rdi, [rbp + 720]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n92_disjunction_af
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n92_disjunction_as
                                                                                        jmp   n92_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n92_disjunction_as
n96_lit_string_β:
                                                                                        jmp   n92_disjunction_af
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn143:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rbp + 592]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n92_disjunction_β
                                                                                        jmp   n99_disjunction_α
n97_call_builtin_icon_β:
                                                                                        jmp   n92_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n95_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n99_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n101_var_α
n99_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx147_0
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n100_lit_integer_α
.Lx147_0:
                        cmp              eax, 1
                                                                                        jne   .Lx147_1
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n100_lit_integer_α
.Lx147_1:
                                                                                        jmp   n100_lit_integer_α
n99_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        je    n102_call_value_β
                                                                                        jmp   n99_disjunction_af
n99_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1
                                                                                        je    n103_lit_string_α
                                                                                        jmp   n92_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n104_call_builtin_icon_α
.Lx148_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n105_var_α
n101_var_β:
                                                                                        jmp   n99_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n102_call_value_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              qword ptr [rbp + 960], 0
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        lea              rdx, [rbp + 944]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx152_7
                        lea              rcx, [rip + .Lx152_3]
                        lea              rdx, [rip + .Lx152_4]
                                                                                        jmp   rax
.Lx152_3:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx152_5
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx152_2
.Lx152_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx152_2
.Lx152_4:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx152_6
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx152_2
.Lx152_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx152_2
.Lx152_7:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        lea              rdx, [rbp + 944]
                        mov              ecx, 1
                        lea              r8, [rbp + 960]
                        call             rt_call_value_gen_h@PLT
.Lx152_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n99_disjunction_af
                                                                                        jmp   n99_disjunction_as
n102_call_value_β:
                        mov              rax, qword ptr [rbp + 960]
                        cmp              rax, 1
                                                                                        jne   .Lx152_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 968]
                                                                                        jmp   qword ptr [rsp]
.Lx152_8:
                        lea              rdi, [rbp + 960]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n99_disjunction_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n99_disjunction_as
                                                                                        jmp   n99_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n99_disjunction_as
n103_lit_string_β:
                                                                                        jmp   n99_disjunction_af
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn155:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rbp + 832]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n99_disjunction_β
                                                                                        jmp   n106_disjunction_α
n104_call_builtin_icon_β:
                                                                                        jmp   n99_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n102_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n106_disjunction_α:
                        mov              qword ptr [rbp + 1120], 0
                        mov              qword ptr [rbp + 1128], 0
                        mov              dword ptr [rbp + 1136], 0
                                                                                        jmp   n108_var_α
n106_disjunction_as:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 0
                                                                                        jne   .Lx159_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n107_lit_integer_α
.Lx159_0:
                        cmp              eax, 1
                                                                                        jne   .Lx159_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n107_lit_integer_α
.Lx159_1:
                                                                                        jmp   n107_lit_integer_α
n106_disjunction_β:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 0
                                                                                        je    n109_call_value_β
                                                                                        jmp   n106_disjunction_af
n106_disjunction_af:
                        add              dword ptr [rbp + 1136], 1
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 1
                                                                                        je    n110_lit_string_α
                                                                                        jmp   n99_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n111_call_builtin_icon_α
.Lx160_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n112_var_α
n108_var_β:
                                                                                        jmp   n106_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n109_call_value_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        mov              qword ptr [rbp + 1200], 0
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        lea              rdx, [rbp + 1184]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx164_7
                        lea              rcx, [rip + .Lx164_3]
                        lea              rdx, [rip + .Lx164_4]
                                                                                        jmp   rax
.Lx164_3:
                        mov              qword ptr [rbp + 1208], rsp
                        mov              rax, qword ptr [rbp + 1200]
                        test             rax, rax
                                                                                        jne   .Lx164_5
                        mov              qword ptr [rbp + 1200], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx164_2
.Lx164_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx164_2
.Lx164_4:
                        mov              qword ptr [rbp + 1208], rsp
                        mov              rax, qword ptr [rbp + 1200]
                        test             rax, rax
                                                                                        jne   .Lx164_6
                        mov              qword ptr [rbp + 1200], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx164_2
.Lx164_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx164_2
.Lx164_7:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        lea              rdx, [rbp + 1184]
                        mov              ecx, 1
                        lea              r8, [rbp + 1200]
                        call             rt_call_value_gen_h@PLT
.Lx164_2:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n106_disjunction_af
                                                                                        jmp   n106_disjunction_as
n109_call_value_β:
                        mov              rax, qword ptr [rbp + 1200]
                        cmp              rax, 1
                                                                                        jne   .Lx164_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1208]
                                                                                        jmp   qword ptr [rsp]
.Lx164_8:
                        lea              rdi, [rbp + 1200]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n106_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n106_disjunction_as
                                                                                        jmp   n106_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n106_disjunction_as
n110_lit_string_β:
                                                                                        jmp   n106_disjunction_af
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn167:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n106_disjunction_β
                                                                                        jmp   n113_call_builtin_icon_α
n111_call_builtin_icon_β:
                                                                                        jmp   n106_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n109_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
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
.Lrkfn171:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 112]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n106_disjunction_β
                                                                                        jmp   n81_return_α
n113_call_builtin_icon_β:
                                                                                        jmp   n106_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
proc_unop_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_unop_β:
                                                                                        jmp   proc_unop_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_unop_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1304]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, [rbp + 1320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_unop_ω:
                        mov              rax, [rbp + 1312]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, [rbp + 1320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_binop_α
proc_binop_α:
                        .global          proc_binop_α
                        .global          proc_binop_β
                        .global          proc_binop_γ
                        .global          proc_binop_ω
                        sub              rsp, 3792
                        mov              [rsp + 3768], rcx
                        mov              [rsp + 3776], rdx
                        mov              [rsp + 3784], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3760
                        mov              edx, 3760
                        call             rt_jmp_frame_lexprep2@PLT
proc_binop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
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
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n176_binop_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          " y"
#-----------------------------------------------------------------------------------------------------------------------
n175_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_binop_γ
#-----------------------------------------------------------------------------------------------------------------------
n176_binop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n177_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n178_call_builtin_icon_α
.Lx282_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn284:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n175_return_α
                                                                                        jmp   n179_disjunction_α
n178_call_builtin_icon_β:
                                                                                        jmp   n175_return_α
#-----------------------------------------------------------------------------------------------------------------------
n179_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n181_var_α
n179_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx286_0
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n180_lit_integer_α
.Lx286_0:
                        cmp              eax, 1
                                                                                        jne   .Lx286_1
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n180_lit_integer_α
.Lx286_1:
                                                                                        jmp   n180_lit_integer_α
n179_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n182_call_value_β
                                                                                        jmp   n179_disjunction_af
n179_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n183_lit_string_α
                                                                                        jmp   n175_return_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n184_call_builtin_icon_α
.Lx287_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n185_var_α
n181_var_β:
                                                                                        jmp   n179_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n182_call_value_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 648], rax
                        mov              qword ptr [rbp + 656], 0
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        lea              rdx, [rbp + 624]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx291_7
                        lea              rcx, [rip + .Lx291_3]
                        lea              rdx, [rip + .Lx291_4]
                                                                                        jmp   rax
.Lx291_3:
                        mov              qword ptr [rbp + 664], rsp
                        mov              rax, qword ptr [rbp + 656]
                        test             rax, rax
                                                                                        jne   .Lx291_5
                        mov              qword ptr [rbp + 656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx291_2
.Lx291_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx291_2
.Lx291_4:
                        mov              qword ptr [rbp + 664], rsp
                        mov              rax, qword ptr [rbp + 656]
                        test             rax, rax
                                                                                        jne   .Lx291_6
                        mov              qword ptr [rbp + 656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx291_2
.Lx291_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx291_2
.Lx291_7:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        lea              rdx, [rbp + 624]
                        mov              ecx, 2
                        lea              r8, [rbp + 656]
                        call             rt_call_value_gen_h@PLT
.Lx291_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n179_disjunction_af
                                                                                        jmp   n179_disjunction_as
n182_call_value_β:
                        mov              rax, qword ptr [rbp + 656]
                        cmp              rax, 1
                                                                                        jne   .Lx291_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 664]
                                                                                        jmp   qword ptr [rsp]
.Lx291_8:
                        lea              rdi, [rbp + 656]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n179_disjunction_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n179_disjunction_as
                                                                                        jmp   n179_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n179_disjunction_as
n183_lit_string_β:
                                                                                        jmp   n179_disjunction_af
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn294:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n179_disjunction_β
                                                                                        jmp   n186_disjunction_α
n184_call_builtin_icon_β:
                                                                                        jmp   n179_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n187_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_disjunction_α:
                        mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0
                                                                                        jmp   n189_var_α
n186_disjunction_as:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        jne   .Lx298_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n188_lit_integer_α
.Lx298_0:
                        cmp              eax, 1
                                                                                        jne   .Lx298_1
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n188_lit_integer_α
.Lx298_1:
                                                                                        jmp   n188_lit_integer_α
n186_disjunction_β:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0
                                                                                        je    n190_call_value_β
                                                                                        jmp   n186_disjunction_af
n186_disjunction_af:
                        add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1
                                                                                        je    n191_lit_string_α
                                                                                        jmp   n179_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n182_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n192_call_builtin_icon_α
.Lx301_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n193_var_α
n189_var_β:
                                                                                        jmp   n186_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n190_call_value_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              qword ptr [rbp + 928], 0
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        lea              rdx, [rbp + 896]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx305_7
                        lea              rcx, [rip + .Lx305_3]
                        lea              rdx, [rip + .Lx305_4]
                                                                                        jmp   rax
.Lx305_3:
                        mov              qword ptr [rbp + 936], rsp
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax
                                                                                        jne   .Lx305_5
                        mov              qword ptr [rbp + 928], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx305_2
.Lx305_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx305_2
.Lx305_4:
                        mov              qword ptr [rbp + 936], rsp
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax
                                                                                        jne   .Lx305_6
                        mov              qword ptr [rbp + 928], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx305_2
.Lx305_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx305_2
.Lx305_7:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        lea              rdx, [rbp + 896]
                        mov              ecx, 2
                        lea              r8, [rbp + 928]
                        call             rt_call_value_gen_h@PLT
.Lx305_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n186_disjunction_af
                                                                                        jmp   n186_disjunction_as
n190_call_value_β:
                        mov              rax, qword ptr [rbp + 928]
                        cmp              rax, 1
                                                                                        jne   .Lx305_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 936]
                                                                                        jmp   qword ptr [rsp]
.Lx305_8:
                        lea              rdi, [rbp + 928]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n186_disjunction_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n186_disjunction_as
                                                                                        jmp   n186_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n186_disjunction_as
n191_lit_string_β:
                                                                                        jmp   n186_disjunction_af
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn308:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
                        lea              rsi, [rbp + 784]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n186_disjunction_β
                                                                                        jmp   n194_disjunction_α
n192_call_builtin_icon_β:
                                                                                        jmp   n186_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n194_disjunction_α:
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              dword ptr [rbp + 1120], 0
                                                                                        jmp   n197_var_α
n194_disjunction_as:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        jne   .Lx312_0
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n196_lit_integer_α
.Lx312_0:
                        cmp              eax, 1
                                                                                        jne   .Lx312_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n196_lit_integer_α
.Lx312_1:
                                                                                        jmp   n196_lit_integer_α
n194_disjunction_β:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        je    n198_call_value_β
                                                                                        jmp   n194_disjunction_af
n194_disjunction_af:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 1
                                                                                        je    n199_lit_string_α
                                                                                        jmp   n186_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n190_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n200_call_builtin_icon_α
.Lx315_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n201_var_α
n197_var_β:
                                                                                        jmp   n194_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n198_call_value_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              qword ptr [rbp + 1200], 0
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        lea              rdx, [rbp + 1168]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx319_7
                        lea              rcx, [rip + .Lx319_3]
                        lea              rdx, [rip + .Lx319_4]
                                                                                        jmp   rax
.Lx319_3:
                        mov              qword ptr [rbp + 1208], rsp
                        mov              rax, qword ptr [rbp + 1200]
                        test             rax, rax
                                                                                        jne   .Lx319_5
                        mov              qword ptr [rbp + 1200], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx319_2
.Lx319_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx319_2
.Lx319_4:
                        mov              qword ptr [rbp + 1208], rsp
                        mov              rax, qword ptr [rbp + 1200]
                        test             rax, rax
                                                                                        jne   .Lx319_6
                        mov              qword ptr [rbp + 1200], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx319_2
.Lx319_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx319_2
.Lx319_7:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        lea              rdx, [rbp + 1168]
                        mov              ecx, 2
                        lea              r8, [rbp + 1200]
                        call             rt_call_value_gen_h@PLT
.Lx319_2:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n194_disjunction_af
                                                                                        jmp   n194_disjunction_as
n198_call_value_β:
                        mov              rax, qword ptr [rbp + 1200]
                        cmp              rax, 1
                                                                                        jne   .Lx319_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1208]
                                                                                        jmp   qword ptr [rsp]
.Lx319_8:
                        lea              rdi, [rbp + 1200]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n194_disjunction_af
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n194_disjunction_as
                                                                                        jmp   n194_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n194_disjunction_as
n199_lit_string_β:
                                                                                        jmp   n194_disjunction_af
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn322:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n194_disjunction_β
                                                                                        jmp   n202_disjunction_α
n200_call_builtin_icon_β:
                                                                                        jmp   n194_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n202_disjunction_α:
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                        mov              dword ptr [rbp + 1392], 0
                                                                                        jmp   n205_var_α
n202_disjunction_as:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        jne   .Lx326_0
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n204_lit_integer_α
.Lx326_0:
                        cmp              eax, 1
                                                                                        jne   .Lx326_1
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n204_lit_integer_α
.Lx326_1:
                                                                                        jmp   n204_lit_integer_α
n202_disjunction_β:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        je    n206_call_value_β
                                                                                        jmp   n202_disjunction_af
n202_disjunction_af:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 1
                                                                                        je    n207_lit_string_α
                                                                                        jmp   n194_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n198_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 6
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n208_call_builtin_icon_α
.Lx329_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n209_var_α
n205_var_β:
                                                                                        jmp   n202_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n206_call_value_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1464], rax
                        mov              qword ptr [rbp + 1472], 0
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        lea              rdx, [rbp + 1440]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx333_7
                        lea              rcx, [rip + .Lx333_3]
                        lea              rdx, [rip + .Lx333_4]
                                                                                        jmp   rax
.Lx333_3:
                        mov              qword ptr [rbp + 1480], rsp
                        mov              rax, qword ptr [rbp + 1472]
                        test             rax, rax
                                                                                        jne   .Lx333_5
                        mov              qword ptr [rbp + 1472], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx333_2
.Lx333_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx333_2
.Lx333_4:
                        mov              qword ptr [rbp + 1480], rsp
                        mov              rax, qword ptr [rbp + 1472]
                        test             rax, rax
                                                                                        jne   .Lx333_6
                        mov              qword ptr [rbp + 1472], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx333_2
.Lx333_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx333_2
.Lx333_7:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        lea              rdx, [rbp + 1440]
                        mov              ecx, 2
                        lea              r8, [rbp + 1472]
                        call             rt_call_value_gen_h@PLT
.Lx333_2:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n202_disjunction_af
                                                                                        jmp   n202_disjunction_as
n206_call_value_β:
                        mov              rax, qword ptr [rbp + 1472]
                        cmp              rax, 1
                                                                                        jne   .Lx333_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1480]
                                                                                        jmp   qword ptr [rsp]
.Lx333_8:
                        lea              rdi, [rbp + 1472]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n202_disjunction_af
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n202_disjunction_as
                                                                                        jmp   n202_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n202_disjunction_as
n207_lit_string_β:
                                                                                        jmp   n202_disjunction_af
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn336:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n202_disjunction_β
                                                                                        jmp   n210_disjunction_α
n208_call_builtin_icon_β:
                                                                                        jmp   n202_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n211_var_α
#-----------------------------------------------------------------------------------------------------------------------
n210_disjunction_α:
                        mov              qword ptr [rbp + 1648], 0
                        mov              qword ptr [rbp + 1656], 0
                        mov              dword ptr [rbp + 1664], 0
                                                                                        jmp   n213_var_α
n210_disjunction_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        jne   .Lx340_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n212_lit_integer_α
.Lx340_0:
                        cmp              eax, 1
                                                                                        jne   .Lx340_1
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n212_lit_integer_α
.Lx340_1:
                                                                                        jmp   n212_lit_integer_α
n210_disjunction_β:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        je    n214_call_value_β
                                                                                        jmp   n210_disjunction_af
n210_disjunction_af:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 1
                                                                                        je    n215_lit_string_α
                                                                                        jmp   n202_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n206_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n216_call_builtin_icon_α
.Lx343_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n217_var_α
n213_var_β:
                                                                                        jmp   n210_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n214_call_value_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1736], rax
                        mov              qword ptr [rbp + 1744], 0
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        lea              rdx, [rbp + 1712]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx347_7
                        lea              rcx, [rip + .Lx347_3]
                        lea              rdx, [rip + .Lx347_4]
                                                                                        jmp   rax
.Lx347_3:
                        mov              qword ptr [rbp + 1752], rsp
                        mov              rax, qword ptr [rbp + 1744]
                        test             rax, rax
                                                                                        jne   .Lx347_5
                        mov              qword ptr [rbp + 1744], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx347_2
.Lx347_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx347_2
.Lx347_4:
                        mov              qword ptr [rbp + 1752], rsp
                        mov              rax, qword ptr [rbp + 1744]
                        test             rax, rax
                                                                                        jne   .Lx347_6
                        mov              qword ptr [rbp + 1744], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx347_2
.Lx347_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx347_2
.Lx347_7:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        lea              rdx, [rbp + 1712]
                        mov              ecx, 2
                        lea              r8, [rbp + 1744]
                        call             rt_call_value_gen_h@PLT
.Lx347_2:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n210_disjunction_af
                                                                                        jmp   n210_disjunction_as
n214_call_value_β:
                        mov              rax, qword ptr [rbp + 1744]
                        cmp              rax, 1
                                                                                        jne   .Lx347_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1752]
                                                                                        jmp   qword ptr [rsp]
.Lx347_8:
                        lea              rdi, [rbp + 1744]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n210_disjunction_af
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n210_disjunction_as
                                                                                        jmp   n210_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n210_disjunction_as
n215_lit_string_β:
                                                                                        jmp   n210_disjunction_af
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn350:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n210_disjunction_β
                                                                                        jmp   n218_disjunction_α
n216_call_builtin_icon_β:
                                                                                        jmp   n210_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_disjunction_α:
                        mov              qword ptr [rbp + 1920], 0
                        mov              qword ptr [rbp + 1928], 0
                        mov              dword ptr [rbp + 1936], 0
                                                                                        jmp   n221_var_α
n218_disjunction_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        jne   .Lx354_0
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n220_lit_integer_α
.Lx354_0:
                        cmp              eax, 1
                                                                                        jne   .Lx354_1
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n220_lit_integer_α
.Lx354_1:
                                                                                        jmp   n220_lit_integer_α
n218_disjunction_β:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        je    n222_call_value_β
                                                                                        jmp   n218_disjunction_af
n218_disjunction_af:
                        add              dword ptr [rbp + 1936], 1
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 1
                                                                                        je    n223_lit_string_α
                                                                                        jmp   n210_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n214_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n224_call_builtin_icon_α
.Lx357_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n225_var_α
n221_var_β:
                                                                                        jmp   n218_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n222_call_value_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2008], rax
                        mov              qword ptr [rbp + 2016], 0
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        lea              rdx, [rbp + 1984]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx361_7
                        lea              rcx, [rip + .Lx361_3]
                        lea              rdx, [rip + .Lx361_4]
                                                                                        jmp   rax
.Lx361_3:
                        mov              qword ptr [rbp + 2024], rsp
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax
                                                                                        jne   .Lx361_5
                        mov              qword ptr [rbp + 2016], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx361_2
.Lx361_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx361_2
.Lx361_4:
                        mov              qword ptr [rbp + 2024], rsp
                        mov              rax, qword ptr [rbp + 2016]
                        test             rax, rax
                                                                                        jne   .Lx361_6
                        mov              qword ptr [rbp + 2016], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx361_2
.Lx361_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx361_2
.Lx361_7:
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        lea              rdx, [rbp + 1984]
                        mov              ecx, 2
                        lea              r8, [rbp + 2016]
                        call             rt_call_value_gen_h@PLT
.Lx361_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n218_disjunction_af
                                                                                        jmp   n218_disjunction_as
n222_call_value_β:
                        mov              rax, qword ptr [rbp + 2016]
                        cmp              rax, 1
                                                                                        jne   .Lx361_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2024]
                                                                                        jmp   qword ptr [rsp]
.Lx361_8:
                        lea              rdi, [rbp + 2016]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n218_disjunction_af
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n218_disjunction_as
                                                                                        jmp   n218_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n218_disjunction_as
n223_lit_string_β:
                                                                                        jmp   n218_disjunction_af
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn364:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n218_disjunction_β
                                                                                        jmp   n226_disjunction_α
n224_call_builtin_icon_β:
                                                                                        jmp   n218_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n226_disjunction_α:
                        mov              qword ptr [rbp + 2192], 0
                        mov              qword ptr [rbp + 2200], 0
                        mov              dword ptr [rbp + 2208], 0
                                                                                        jmp   n229_var_α
n226_disjunction_as:
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 0
                                                                                        jne   .Lx368_0
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n228_lit_integer_α
.Lx368_0:
                        cmp              eax, 1
                                                                                        jne   .Lx368_1
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n228_lit_integer_α
.Lx368_1:
                                                                                        jmp   n228_lit_integer_α
n226_disjunction_β:
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 0
                                                                                        je    n230_call_value_β
                                                                                        jmp   n226_disjunction_af
n226_disjunction_af:
                        add              dword ptr [rbp + 2208], 1
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 1
                                                                                        je    n231_lit_string_α
                                                                                        jmp   n218_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n222_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n232_call_builtin_icon_α
.Lx371_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n233_var_α
n229_var_β:
                                                                                        jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n230_call_value_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2280], rax
                        mov              qword ptr [rbp + 2288], 0
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        lea              rdx, [rbp + 2256]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx375_7
                        lea              rcx, [rip + .Lx375_3]
                        lea              rdx, [rip + .Lx375_4]
                                                                                        jmp   rax
.Lx375_3:
                        mov              qword ptr [rbp + 2296], rsp
                        mov              rax, qword ptr [rbp + 2288]
                        test             rax, rax
                                                                                        jne   .Lx375_5
                        mov              qword ptr [rbp + 2288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx375_2
.Lx375_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx375_2
.Lx375_4:
                        mov              qword ptr [rbp + 2296], rsp
                        mov              rax, qword ptr [rbp + 2288]
                        test             rax, rax
                                                                                        jne   .Lx375_6
                        mov              qword ptr [rbp + 2288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx375_2
.Lx375_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx375_2
.Lx375_7:
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        lea              rdx, [rbp + 2256]
                        mov              ecx, 2
                        lea              r8, [rbp + 2288]
                        call             rt_call_value_gen_h@PLT
.Lx375_2:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n226_disjunction_af
                                                                                        jmp   n226_disjunction_as
n230_call_value_β:
                        mov              rax, qword ptr [rbp + 2288]
                        cmp              rax, 1
                                                                                        jne   .Lx375_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2296]
                                                                                        jmp   qword ptr [rsp]
.Lx375_8:
                        lea              rdi, [rbp + 2288]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n226_disjunction_af
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n226_disjunction_as
                                                                                        jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n226_disjunction_as
n231_lit_string_β:
                                                                                        jmp   n226_disjunction_af
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn378:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n226_disjunction_β
                                                                                        jmp   n234_disjunction_α
n232_call_builtin_icon_β:
                                                                                        jmp   n226_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n234_disjunction_α:
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0
                        mov              dword ptr [rbp + 2480], 0
                                                                                        jmp   n237_var_α
n234_disjunction_as:
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 0
                                                                                        jne   .Lx382_0
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n236_lit_integer_α
.Lx382_0:
                        cmp              eax, 1
                                                                                        jne   .Lx382_1
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n236_lit_integer_α
.Lx382_1:
                                                                                        jmp   n236_lit_integer_α
n234_disjunction_β:
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 0
                                                                                        je    n238_call_value_β
                                                                                        jmp   n234_disjunction_af
n234_disjunction_af:
                        add              dword ptr [rbp + 2480], 1
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 1
                                                                                        je    n239_lit_string_α
                                                                                        jmp   n226_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n230_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 6
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n240_call_builtin_icon_α
.Lx385_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n241_var_α
n237_var_β:
                                                                                        jmp   n234_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n238_call_value_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2552], rax
                        mov              qword ptr [rbp + 2560], 0
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        lea              rdx, [rbp + 2528]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx389_7
                        lea              rcx, [rip + .Lx389_3]
                        lea              rdx, [rip + .Lx389_4]
                                                                                        jmp   rax
.Lx389_3:
                        mov              qword ptr [rbp + 2568], rsp
                        mov              rax, qword ptr [rbp + 2560]
                        test             rax, rax
                                                                                        jne   .Lx389_5
                        mov              qword ptr [rbp + 2560], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx389_2
.Lx389_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx389_2
.Lx389_4:
                        mov              qword ptr [rbp + 2568], rsp
                        mov              rax, qword ptr [rbp + 2560]
                        test             rax, rax
                                                                                        jne   .Lx389_6
                        mov              qword ptr [rbp + 2560], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx389_2
.Lx389_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx389_2
.Lx389_7:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        lea              rdx, [rbp + 2528]
                        mov              ecx, 2
                        lea              r8, [rbp + 2560]
                        call             rt_call_value_gen_h@PLT
.Lx389_2:
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n234_disjunction_af
                                                                                        jmp   n234_disjunction_as
n238_call_value_β:
                        mov              rax, qword ptr [rbp + 2560]
                        cmp              rax, 1
                                                                                        jne   .Lx389_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2568]
                                                                                        jmp   qword ptr [rsp]
.Lx389_8:
                        lea              rdi, [rbp + 2560]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n234_disjunction_af
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n234_disjunction_as
                                                                                        jmp   n234_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n234_disjunction_as
n239_lit_string_β:
                                                                                        jmp   n234_disjunction_af
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2440], rax
                        .section         .rodata
.Lrkfn392:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn392]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n234_disjunction_β
                                                                                        jmp   n242_disjunction_α
n240_call_builtin_icon_β:
                                                                                        jmp   n234_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n242_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n245_var_α
n242_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx396_0
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n244_lit_integer_α
.Lx396_0:
                        cmp              eax, 1
                                                                                        jne   .Lx396_1
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n244_lit_integer_α
.Lx396_1:
                                                                                        jmp   n244_lit_integer_α
n242_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        je    n246_call_value_β
                                                                                        jmp   n242_disjunction_af
n242_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 1
                                                                                        je    n247_lit_string_α
                                                                                        jmp   n234_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n238_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rbp + 2928], 6
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n248_call_builtin_icon_α
.Lx399_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n249_var_α
n245_var_β:
                                                                                        jmp   n242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n246_call_value_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2824], rax
                        mov              qword ptr [rbp + 2832], 0
                        mov              rdi, qword ptr [rbp + 2768]
                        mov              rsi, qword ptr [rbp + 2776]
                        lea              rdx, [rbp + 2800]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx403_7
                        lea              rcx, [rip + .Lx403_3]
                        lea              rdx, [rip + .Lx403_4]
                                                                                        jmp   rax
.Lx403_3:
                        mov              qword ptr [rbp + 2840], rsp
                        mov              rax, qword ptr [rbp + 2832]
                        test             rax, rax
                                                                                        jne   .Lx403_5
                        mov              qword ptr [rbp + 2832], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_4:
                        mov              qword ptr [rbp + 2840], rsp
                        mov              rax, qword ptr [rbp + 2832]
                        test             rax, rax
                                                                                        jne   .Lx403_6
                        mov              qword ptr [rbp + 2832], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_7:
                        mov              rdi, qword ptr [rbp + 2768]
                        mov              rsi, qword ptr [rbp + 2776]
                        lea              rdx, [rbp + 2800]
                        mov              ecx, 2
                        lea              r8, [rbp + 2832]
                        call             rt_call_value_gen_h@PLT
.Lx403_2:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n242_disjunction_af
                                                                                        jmp   n242_disjunction_as
n246_call_value_β:
                        mov              rax, qword ptr [rbp + 2832]
                        cmp              rax, 1
                                                                                        jne   .Lx403_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2840]
                                                                                        jmp   qword ptr [rsp]
.Lx403_8:
                        lea              rdi, [rbp + 2832]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n242_disjunction_af
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n242_disjunction_as
                                                                                        jmp   n242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 2912], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n242_disjunction_as
n247_lit_string_β:
                                                                                        jmp   n242_disjunction_af
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn406:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn406]
                        lea              rsi, [rbp + 2688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n242_disjunction_β
                                                                                        jmp   n250_disjunction_α
n248_call_builtin_icon_β:
                                                                                        jmp   n242_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_disjunction_α:
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                        mov              dword ptr [rbp + 3024], 0
                                                                                        jmp   n253_var_α
n250_disjunction_as:
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 0
                                                                                        jne   .Lx410_0
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n252_lit_integer_α
.Lx410_0:
                        cmp              eax, 1
                                                                                        jne   .Lx410_1
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n252_lit_integer_α
.Lx410_1:
                                                                                        jmp   n252_lit_integer_α
n250_disjunction_β:
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 0
                                                                                        je    n254_call_value_β
                                                                                        jmp   n250_disjunction_af
n250_disjunction_af:
                        add              dword ptr [rbp + 3024], 1
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 1
                                                                                        je    n255_lit_string_α
                                                                                        jmp   n242_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n246_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_integer_α:
                        mov              qword ptr [rbp + 3200], 6
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n256_call_builtin_icon_α
.Lx413_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n257_var_α
n253_var_β:
                                                                                        jmp   n250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n254_call_value_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3096], rax
                        mov              qword ptr [rbp + 3104], 0
                        mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
                        lea              rdx, [rbp + 3072]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx417_7
                        lea              rcx, [rip + .Lx417_3]
                        lea              rdx, [rip + .Lx417_4]
                                                                                        jmp   rax
.Lx417_3:
                        mov              qword ptr [rbp + 3112], rsp
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx417_5
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx417_2
.Lx417_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx417_2
.Lx417_4:
                        mov              qword ptr [rbp + 3112], rsp
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx417_6
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx417_2
.Lx417_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx417_2
.Lx417_7:
                        mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
                        lea              rdx, [rbp + 3072]
                        mov              ecx, 2
                        lea              r8, [rbp + 3104]
                        call             rt_call_value_gen_h@PLT
.Lx417_2:
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    n250_disjunction_af
                                                                                        jmp   n250_disjunction_as
n254_call_value_β:
                        mov              rax, qword ptr [rbp + 3104]
                        cmp              rax, 1
                                                                                        jne   .Lx417_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3112]
                                                                                        jmp   qword ptr [rsp]
.Lx417_8:
                        lea              rdi, [rbp + 3104]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n250_disjunction_af
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n250_disjunction_as
                                                                                        jmp   n250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n250_disjunction_as
n255_lit_string_β:
                                                                                        jmp   n250_disjunction_af
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 2984], rax
                        .section         .rodata
.Lrkfn420:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n250_disjunction_β
                                                                                        jmp   n258_disjunction_α
n256_call_builtin_icon_β:
                                                                                        jmp   n250_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n259_var_α
#-----------------------------------------------------------------------------------------------------------------------
n258_disjunction_α:
                        mov              qword ptr [rbp + 3280], 0
                        mov              qword ptr [rbp + 3288], 0
                        mov              dword ptr [rbp + 3296], 0
                                                                                        jmp   n261_var_α
n258_disjunction_as:
                        mov              eax, dword ptr [rbp + 3296]
                        cmp              eax, 0
                                                                                        jne   .Lx424_0
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n260_lit_integer_α
.Lx424_0:
                        cmp              eax, 1
                                                                                        jne   .Lx424_1
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n260_lit_integer_α
.Lx424_1:
                                                                                        jmp   n260_lit_integer_α
n258_disjunction_β:
                        mov              eax, dword ptr [rbp + 3296]
                        cmp              eax, 0
                                                                                        je    n262_call_value_β
                                                                                        jmp   n258_disjunction_af
n258_disjunction_af:
                        add              dword ptr [rbp + 3296], 1
                        mov              eax, dword ptr [rbp + 3296]
                        cmp              eax, 1
                                                                                        je    n263_lit_string_α
                                                                                        jmp   n250_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n254_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 6
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n264_call_builtin_icon_α
.Lx427_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n265_var_α
n261_var_β:
                                                                                        jmp   n258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n262_call_value_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3368], rax
                        mov              qword ptr [rbp + 3376], 0
                        mov              rdi, qword ptr [rbp + 3312]
                        mov              rsi, qword ptr [rbp + 3320]
                        lea              rdx, [rbp + 3344]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx431_7
                        lea              rcx, [rip + .Lx431_3]
                        lea              rdx, [rip + .Lx431_4]
                                                                                        jmp   rax
.Lx431_3:
                        mov              qword ptr [rbp + 3384], rsp
                        mov              rax, qword ptr [rbp + 3376]
                        test             rax, rax
                                                                                        jne   .Lx431_5
                        mov              qword ptr [rbp + 3376], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx431_2
.Lx431_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx431_2
.Lx431_4:
                        mov              qword ptr [rbp + 3384], rsp
                        mov              rax, qword ptr [rbp + 3376]
                        test             rax, rax
                                                                                        jne   .Lx431_6
                        mov              qword ptr [rbp + 3376], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx431_2
.Lx431_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx431_2
.Lx431_7:
                        mov              rdi, qword ptr [rbp + 3312]
                        mov              rsi, qword ptr [rbp + 3320]
                        lea              rdx, [rbp + 3344]
                        mov              ecx, 2
                        lea              r8, [rbp + 3376]
                        call             rt_call_value_gen_h@PLT
.Lx431_2:
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n258_disjunction_af
                                                                                        jmp   n258_disjunction_as
n262_call_value_β:
                        mov              rax, qword ptr [rbp + 3376]
                        cmp              rax, 1
                                                                                        jne   .Lx431_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3384]
                                                                                        jmp   qword ptr [rsp]
.Lx431_8:
                        lea              rdi, [rbp + 3376]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n258_disjunction_af
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n258_disjunction_as
                                                                                        jmp   n258_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 3456], 1
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n258_disjunction_as
n263_lit_string_β:
                                                                                        jmp   n258_disjunction_af
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lrkfn434:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn434]
                        lea              rsi, [rbp + 3232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n258_disjunction_β
                                                                                        jmp   n266_disjunction_α
n264_call_builtin_icon_β:
                                                                                        jmp   n258_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n266_disjunction_α:
                        mov              qword ptr [rbp + 3552], 0
                        mov              qword ptr [rbp + 3560], 0
                        mov              dword ptr [rbp + 3568], 0
                                                                                        jmp   n269_var_α
n266_disjunction_as:
                        mov              eax, dword ptr [rbp + 3568]
                        cmp              eax, 0
                                                                                        jne   .Lx438_0
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n268_lit_integer_α
.Lx438_0:
                        cmp              eax, 1
                                                                                        jne   .Lx438_1
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n268_lit_integer_α
.Lx438_1:
                                                                                        jmp   n268_lit_integer_α
n266_disjunction_β:
                        mov              eax, dword ptr [rbp + 3568]
                        cmp              eax, 0
                                                                                        je    n270_call_value_β
                                                                                        jmp   n266_disjunction_af
n266_disjunction_af:
                        add              dword ptr [rbp + 3568], 1
                        mov              eax, dword ptr [rbp + 3568]
                        cmp              eax, 1
                                                                                        je    n271_lit_string_α
                                                                                        jmp   n258_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n262_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_integer_α:
                        mov              qword ptr [rbp + 3744], 6
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n272_call_builtin_icon_α
.Lx441_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n273_var_α
n269_var_β:
                                                                                        jmp   n266_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n270_call_value_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3640], rax
                        mov              qword ptr [rbp + 3648], 0
                        mov              rdi, qword ptr [rbp + 3584]
                        mov              rsi, qword ptr [rbp + 3592]
                        lea              rdx, [rbp + 3616]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx445_7
                        lea              rcx, [rip + .Lx445_3]
                        lea              rdx, [rip + .Lx445_4]
                                                                                        jmp   rax
.Lx445_3:
                        mov              qword ptr [rbp + 3656], rsp
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax
                                                                                        jne   .Lx445_5
                        mov              qword ptr [rbp + 3648], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx445_2
.Lx445_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx445_2
.Lx445_4:
                        mov              qword ptr [rbp + 3656], rsp
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax
                                                                                        jne   .Lx445_6
                        mov              qword ptr [rbp + 3648], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx445_2
.Lx445_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx445_2
.Lx445_7:
                        mov              rdi, qword ptr [rbp + 3584]
                        mov              rsi, qword ptr [rbp + 3592]
                        lea              rdx, [rbp + 3616]
                        mov              ecx, 2
                        lea              r8, [rbp + 3648]
                        call             rt_call_value_gen_h@PLT
.Lx445_2:
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n266_disjunction_af
                                                                                        jmp   n266_disjunction_as
n270_call_value_β:
                        mov              rax, qword ptr [rbp + 3648]
                        cmp              rax, 1
                                                                                        jne   .Lx445_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3656]
                                                                                        jmp   qword ptr [rsp]
.Lx445_8:
                        lea              rdi, [rbp + 3648]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n266_disjunction_af
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n266_disjunction_as
                                                                                        jmp   n266_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 3728], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n266_disjunction_as
n271_lit_string_β:
                                                                                        jmp   n266_disjunction_af
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3528], rax
                        .section         .rodata
.Lrkfn448:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn448]
                        lea              rsi, [rbp + 3504]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n266_disjunction_β
                                                                                        jmp   n274_call_builtin_icon_α
n272_call_builtin_icon_β:
                                                                                        jmp   n266_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n275_var_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_icon_α:
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
.Lrkfn452:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]
                        lea              rsi, [rbp + 112]
                        mov              edx, 14
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n266_disjunction_β
                                                                                        jmp   n175_return_α
n274_call_builtin_icon_β:
                                                                                        jmp   n266_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n270_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
proc_binop_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_binop_β:
                                                                                        jmp   proc_binop_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_binop_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3768]
                        lea              rsp, [rbp + 3792]
                        mov              rbp, [rbp + 3784]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_binop_ω:
                        mov              rax, [rbp + 3776]
                        lea              rsp, [rbp + 3792]
                        mov              rbp, [rbp + 3784]
                                                                                        jmp   rax
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
                        sub              rsp, 2120
                        mov              rdi, rsp
                        mov              ecx, 2120
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2112], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_integer_α:
                        mov              qword ptr [rbp + 2032], 6
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n456_assign_α
.Lx535_0:
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
                        mov              qword ptr [rbp + 2016], 6
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n458_assign_α
.Lx537_0:
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
                        mov              qword ptr [rbp + 2000], 1
                        mov              dword ptr [rbp + 2004], -1
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n460_assign_α
.Lx539_0:
                        .quad            .Lx539_0_s
.Lx539_0_s:
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
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n462_assign_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
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
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n464_iterate_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "+-*!/\\"
#-----------------------------------------------------------------------------------------------------------------------
n464_iterate_α:
                        mov              qword ptr [rbp + 1872], 0
.Lx545_0:
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, qword ptr [rbp + 1872]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              rax, 99
                                                                                        je    n470_call_builtin_icon_α
                                                                                        jmp   n465_var_α
n464_iterate_β:
                        inc              qword ptr [rbp + 1872]
                                                                                        jmp   .Lx545_0
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
                                                                                        jne   .Lx555_20
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx555_21
.Lx555_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_arg_stage@PLT
.Lx555_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx555_22
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx555_23
.Lx555_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             rt_arg_stage@PLT
.Lx555_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx555_24
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx555_25
.Lx555_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        call             rt_arg_stage@PLT
.Lx555_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx555_26
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx555_27
.Lx555_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        call             rt_arg_stage@PLT
.Lx555_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx555_28
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx555_29
.Lx555_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        call             rt_arg_stage@PLT
.Lx555_29:
                        mov              edi, 1
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx555_1
                        lea              rcx, [rip + .Lx555_3]
                        lea              rdx, [rip + .Lx555_4]
                                                                                        jmp   rax
.Lx555_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx555_2
.Lx555_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx555_2
.Lx555_1:
                        call             rt_faildescr@PLT
.Lx555_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n464_iterate_β
                                                                                        jmp   n464_iterate_β
n469_call_proc_staged_β:
                                                                                        jmp   n464_iterate_β
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "unop"
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn557:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn557]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n471_disjunction_α
                                                                                        jmp   n471_disjunction_α
n470_call_builtin_icon_β:
                                                                                        jmp   n471_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n471_disjunction_α:
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0
                        mov              dword ptr [rbp + 1536], 0
                                                                                        jmp   n474_lit_string_α
n471_disjunction_as:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        jne   .Lx559_0
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n472_var_α
.Lx559_0:
                        cmp              eax, 1
                                                                                        jne   .Lx559_1
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n472_var_α
.Lx559_1:
                        cmp              eax, 2
                                                                                        jne   .Lx559_2
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n472_var_α
.Lx559_2:
                        cmp              eax, 3
                                                                                        jne   .Lx559_3
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n472_var_α
.Lx559_3:
                                                                                        jmp   n472_var_α
n471_disjunction_β:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        je    n475_iterate_β
                        cmp              eax, 1
                                                                                        je    n471_disjunction_af
                        cmp              eax, 2
                                                                                        je    n471_disjunction_af
                                                                                        jmp   n471_disjunction_af
n471_disjunction_af:
                        add              dword ptr [rbp + 1536], 1
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 1
                                                                                        je    n476_lit_string_α
                        cmp              eax, 2
                                                                                        je    n477_lit_string_α
                        cmp              eax, 3
                                                                                        je    n478_lit_string_α
                                                                                        jmp   n473_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n479_var_α
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n480_var_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n475_iterate_α
n474_lit_string_β:
                                                                                        jmp   n471_disjunction_af
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "+-*/%^<=>"
#-----------------------------------------------------------------------------------------------------------------------
n475_iterate_α:
                        mov              qword ptr [rbp + 1568], 0
.Lx565_0:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1568]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              rax, 99
                                                                                        je    n471_disjunction_af
                                                                                        jmp   n471_disjunction_as
n475_iterate_β:
                        inc              qword ptr [rbp + 1568]
                                                                                        jmp   .Lx565_0
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n471_disjunction_as
n476_lit_string_β:
                                                                                        jmp   n471_disjunction_af
.Lx566_0:
                        .quad            .Lx566_0_s
.Lx566_0_s:
                        .string          "<<"
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n471_disjunction_as
n477_lit_string_β:
                                                                                        jmp   n471_disjunction_af
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n471_disjunction_as
n478_lit_string_β:
                                                                                        jmp   n471_disjunction_af
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          ">>"
#-----------------------------------------------------------------------------------------------------------------------
n479_var_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n481_var_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n482_var_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n484_var_α
#-----------------------------------------------------------------------------------------------------------------------
n482_var_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n485_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n483_disjunction_α:
                        mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              dword ptr [rbp + 1088], 0
                                                                                        jmp   n488_lit_string_α
n483_disjunction_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0
                                                                                        jne   .Lx578_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n486_lit_integer_α
.Lx578_0:
                        cmp              eax, 1
                                                                                        jne   .Lx578_1
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n486_lit_integer_α
.Lx578_1:
                        cmp              eax, 2
                                                                                        jne   .Lx578_2
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n486_lit_integer_α
.Lx578_2:
                                                                                        jmp   n486_lit_integer_α
n483_disjunction_β:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0
                                                                                        je    n483_disjunction_af
                        cmp              eax, 1
                                                                                        je    n483_disjunction_af
                                                                                        jmp   n483_disjunction_af
n483_disjunction_af:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 1
                                                                                        je    n489_lit_string_α
                        cmp              eax, 2
                                                                                        je    n490_lit_string_α
                                                                                        jmp   n487_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n484_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n491_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_charset_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              dword ptr [rbp + 1380], -1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n492_lit_string_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n493_lit_real_α
.Lx582_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn584:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn584]
                        lea              rsi, [rbp + 944]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n494_disjunction_α
                                                                                        jmp   n494_disjunction_α
n487_call_builtin_icon_β:
                                                                                        jmp   n494_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n483_disjunction_as
n488_lit_string_β:
                                                                                        jmp   n483_disjunction_af
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "++"
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n483_disjunction_as
n489_lit_string_β:
                                                                                        jmp   n483_disjunction_af
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n483_disjunction_as
n490_lit_string_β:
                                                                                        jmp   n483_disjunction_af
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "**"
#-----------------------------------------------------------------------------------------------------------------------
n491_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx589_20
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx589_21
.Lx589_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        call             rt_arg_stage@PLT
.Lx589_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx589_22
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx589_23
.Lx589_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        call             rt_arg_stage@PLT
.Lx589_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx589_24
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx589_25
.Lx589_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        call             rt_arg_stage@PLT
.Lx589_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx589_26
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx589_27
.Lx589_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        call             rt_arg_stage@PLT
.Lx589_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx589_28
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx589_29
.Lx589_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        call             rt_arg_stage@PLT
.Lx589_29:
                        mov              edi, 2
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx589_1
                        lea              rcx, [rip + .Lx589_3]
                        lea              rdx, [rip + .Lx589_4]
                                                                                        jmp   rax
.Lx589_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx589_2
.Lx589_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx589_2
.Lx589_1:
                        call             rt_faildescr@PLT
.Lx589_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n471_disjunction_β
                                                                                        jmp   n471_disjunction_β
n491_call_proc_staged_β:
                                                                                        jmp   n471_disjunction_β
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "binop"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n495_call_proc_staged_α
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          "67890"
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_real_α:
                        mov              qword ptr [rbp + 1168], 7
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n496_lit_charset_α
.Lx591_0:
                        .quad            4597454643604897137
#-----------------------------------------------------------------------------------------------------------------------
n494_disjunction_α:
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0
                                                                                        jmp   n499_lit_real_α
n494_disjunction_as:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        jne   .Lx593_0
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n497_disjunction_α
.Lx593_0:
                        cmp              eax, 1
                                                                                        jne   .Lx593_1
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n497_disjunction_α
.Lx593_1:
                        cmp              eax, 2
                                                                                        jne   .Lx593_2
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n497_disjunction_α
.Lx593_2:
                                                                                        jmp   n497_disjunction_α
n494_disjunction_β:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        je    n494_disjunction_af
                        cmp              eax, 1
                                                                                        je    n494_disjunction_af
                                                                                        jmp   n494_disjunction_af
n494_disjunction_af:
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 1
                                                                                        je    n500_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n501_lit_string_α
                                                                                        jmp   n498_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n495_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx595_20
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx595_21
.Lx595_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        call             rt_arg_stage@PLT
.Lx595_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx595_22
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx595_23
.Lx595_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        call             rt_arg_stage@PLT
.Lx595_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx595_24
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx595_25
.Lx595_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        call             rt_arg_stage@PLT
.Lx595_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx595_26
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx595_27
.Lx595_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        call             rt_arg_stage@PLT
.Lx595_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx595_28
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx595_29
.Lx595_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx595_29:
                        mov              edi, 2
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx595_1
                        lea              rcx, [rip + .Lx595_3]
                        lea              rdx, [rip + .Lx595_4]
                                                                                        jmp   rax
.Lx595_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx595_2
.Lx595_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx595_2
.Lx595_1:
                        call             rt_faildescr@PLT
.Lx595_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n483_disjunction_α
                                                                                        jmp   n483_disjunction_α
n495_call_proc_staged_β:
                                                                                        jmp   n483_disjunction_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "binop"
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_charset_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              dword ptr [rbp + 1188], -1
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n502_lit_string_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "1x"
#-----------------------------------------------------------------------------------------------------------------------
n497_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n504_lit_real_α
n497_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx598_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n503_disjunction_α
.Lx598_0:
                        cmp              eax, 1
                                                                                        jne   .Lx598_1
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n503_disjunction_α
.Lx598_1:
                        cmp              eax, 2
                                                                                        jne   .Lx598_2
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n503_disjunction_α
.Lx598_2:
                                                                                        jmp   n503_disjunction_α
n497_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n497_disjunction_af
                        cmp              eax, 1
                                                                                        je    n497_disjunction_af
                                                                                        jmp   n497_disjunction_af
n497_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n505_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n506_lit_string_α
                                                                                        jmp   n494_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n498_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn600:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn600]
                        lea              rsi, [rbp + 592]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n507_lit_string_α
                                                                                        jmp   n507_lit_string_α
n498_call_builtin_icon_β:
                                                                                        jmp   n507_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_real_α:
                        mov              qword ptr [rbp + 720], 7
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n494_disjunction_as
n499_lit_real_β:
                                                                                        jmp   n494_disjunction_af
.Lx601_0:
                        .quad            4612361558371493478
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_charset_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], -1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n494_disjunction_as
n500_lit_charset_β:
                                                                                        jmp   n494_disjunction_af
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "02"
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n494_disjunction_as
n501_lit_string_β:
                                                                                        jmp   n494_disjunction_af
.Lx603_0:
                        .quad            .Lx603_0_s
.Lx603_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n508_call_proc_staged_α
.Lx604_0:
                        .quad            .Lx604_0_s
.Lx604_0_s:
                        .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n503_disjunction_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   n510_lit_real_α
n503_disjunction_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx606_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n509_call_proc_staged_α
.Lx606_0:
                        cmp              eax, 1
                                                                                        jne   .Lx606_1
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n509_call_proc_staged_α
.Lx606_1:
                        cmp              eax, 2
                                                                                        jne   .Lx606_2
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n509_call_proc_staged_α
.Lx606_2:
                                                                                        jmp   n509_call_proc_staged_α
n503_disjunction_β:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        je    n503_disjunction_af
                        cmp              eax, 1
                                                                                        je    n503_disjunction_af
                                                                                        jmp   n503_disjunction_af
n503_disjunction_af:
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 1
                                                                                        je    n511_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n512_lit_string_α
                                                                                        jmp   n497_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_real_α:
                        mov              qword ptr [rbp + 800], 7
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n497_disjunction_as
n504_lit_real_β:
                                                                                        jmp   n497_disjunction_af
.Lx607_0:
                        .quad            4625619029774565376
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_charset_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              dword ptr [rbp + 820], -1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n497_disjunction_as
n505_lit_charset_β:
                                                                                        jmp   n497_disjunction_af
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          "17"
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n497_disjunction_as
n506_lit_string_β:
                                                                                        jmp   n497_disjunction_af
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "17"
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n513_disjunction_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n508_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx612_20
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx612_21
.Lx612_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx612_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx612_22
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx612_23
.Lx612_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx612_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx612_24
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx612_25
.Lx612_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx612_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx612_26
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx612_27
.Lx612_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_arg_stage@PLT
.Lx612_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx612_28
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx612_29
.Lx612_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        call             rt_arg_stage@PLT
.Lx612_29:
                        mov              edi, 2
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx612_1
                        lea              rcx, [rip + .Lx612_3]
                        lea              rdx, [rip + .Lx612_4]
                                                                                        jmp   rax
.Lx612_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx612_2
.Lx612_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx612_2
.Lx612_1:
                        call             rt_faildescr@PLT
.Lx612_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n483_disjunction_β
                                                                                        jmp   n483_disjunction_β
n508_call_proc_staged_β:
                                                                                        jmp   n483_disjunction_β
.Lx612_0:
                        .quad            .Lx612_0_s
.Lx612_0_s:
                        .string          "binop"
#-----------------------------------------------------------------------------------------------------------------------
n509_call_proc_staged_α:
                        lea              rsi, [rbp + 688]
                        lea              rdx, [rbp + 768]
                        lea              rcx, [rbp + 848]
                        call             proc_toby_dcα
                                                                                        jmp   .Lx614_2
.Lx614_2:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n503_disjunction_β
                                                                                        jmp   n503_disjunction_β
n509_call_proc_staged_β:
                                                                                        jmp   n503_disjunction_β
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "toby"
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_real_α:
                        mov              qword ptr [rbp + 880], 7
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n503_disjunction_as
n510_lit_real_β:
                                                                                        jmp   n503_disjunction_af
.Lx615_0:
                        .quad            4614162998222441677
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_charset_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              dword ptr [rbp + 900], -1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n503_disjunction_as
n511_lit_charset_β:
                                                                                        jmp   n503_disjunction_af
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "03"
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n503_disjunction_as
n512_lit_string_β:
                                                                                        jmp   n503_disjunction_af
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "3.2"
#-----------------------------------------------------------------------------------------------------------------------
n513_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n516_disjunction_α
n513_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx619_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n514_call_builtin_icon_α
.Lx619_0:
                        cmp              eax, 1
                                                                                        jne   .Lx619_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n514_call_builtin_icon_α
.Lx619_1:
                                                                                        jmp   n514_call_builtin_icon_α
n513_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        je    n516_disjunction_β
                                                                                        jmp   n513_disjunction_af
n513_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 1
                                                                                        je    n517_lit_string_α
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n514_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn621:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n513_disjunction_β
                                                                                        jmp   n513_disjunction_β
n514_call_builtin_icon_β:
                                                                                        jmp   n513_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n519_disjunction_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n516_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n521_lit_integer_α
n516_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx624_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n520_unop_α
.Lx624_0:
                        cmp              eax, 1
                                                                                        jne   .Lx624_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n520_unop_α
.Lx624_1:
                        cmp              eax, 2
                                                                                        jne   .Lx624_2
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n520_unop_α
.Lx624_2:
                                                                                        jmp   n520_unop_α
n516_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        je    n516_disjunction_af
                        cmp              eax, 1
                                                                                        je    n516_disjunction_af
                                                                                        jmp   n516_disjunction_af
n516_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 1
                                                                                        je    n522_lit_real_α
                        cmp              eax, 2
                                                                                        je    n523_lit_string_α
                                                                                        jmp   n513_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n513_disjunction_as
n517_lit_string_β:
                                                                                        jmp   n513_disjunction_af
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n518_unop_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n513_disjunction_as
n518_unop_β:
                                                                                        jmp   n513_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n519_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n525_disjunction_α
n519_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx628_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n524_call_builtin_icon_α
.Lx628_0:
                        cmp              eax, 1
                                                                                        jne   .Lx628_1
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n524_call_builtin_icon_α
.Lx628_1:
                                                                                        jmp   n524_call_builtin_icon_α
n519_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n525_disjunction_β
                                                                                        jmp   n519_disjunction_af
n519_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n526_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n520_unop_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n518_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n516_disjunction_as
n521_lit_integer_β:
                                                                                        jmp   n516_disjunction_af
.Lx630_0:
                        .quad            1257787
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_real_α:
                        mov              qword ptr [rbp + 528], 7
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n516_disjunction_as
n522_lit_real_β:
                                                                                        jmp   n516_disjunction_af
.Lx631_0:
                        .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n516_disjunction_as
n523_lit_string_β:
                                                                                        jmp   n516_disjunction_af
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "arizona"
#-----------------------------------------------------------------------------------------------------------------------
n524_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn634:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn634]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n519_disjunction_β
                                                                                        jmp   n519_disjunction_β
n524_call_builtin_icon_β:
                                                                                        jmp   n519_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n525_disjunction_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   n529_lit_integer_α
n525_disjunction_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx636_0
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n528_scan_enter_α
.Lx636_0:
                        cmp              eax, 1
                                                                                        jne   .Lx636_1
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n528_scan_enter_α
.Lx636_1:
                        cmp              eax, 2
                                                                                        jne   .Lx636_2
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n528_scan_enter_α
.Lx636_2:
                                                                                        jmp   n528_scan_enter_α
n525_disjunction_β:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        je    n525_disjunction_af
                        cmp              eax, 1
                                                                                        je    n525_disjunction_af
                                                                                        jmp   n525_disjunction_af
n525_disjunction_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1
                                                                                        je    n530_lit_real_α
                        cmp              eax, 2
                                                                                        je    n531_lit_charset_α
                                                                                        jmp   n519_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n519_disjunction_as
n526_lit_string_β:
                                                                                        jmp   n519_disjunction_af
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n527_scan_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 128]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 128]
                        mov              r14, qword ptr [rbp + 136]
                        mov              r15, qword ptr [rbp + 144]
                                                                                        jmp   n519_disjunction_as
n527_scan_β:
                                                                                        jmp   n519_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n528_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n532_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n525_disjunction_as
n529_lit_integer_β:
                                                                                        jmp   n525_disjunction_af
.Lx642_0:
                        .quad            123456
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_real_α:
                        mov              qword ptr [rbp + 288], 7
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n525_disjunction_as
n530_lit_real_β:
                                                                                        jmp   n525_disjunction_af
.Lx643_0:
                        .quad            4649182892167851409
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_charset_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              dword ptr [rbp + 308], -1
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n525_disjunction_as
n531_lit_charset_β:
                                                                                        jmp   n525_disjunction_af
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "cnostu"
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n533_scan_move_α
.Lx645_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n533_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 5
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx647_239
                        add              rsp, 16
                                                                                        jmp   n534_scan_α
.Lx647_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx647_240
                        add              rsp, 16
                                                                                        jmp   n534_scan_α
.Lx647_240:
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
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n527_scan_α
n533_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n534_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n534_scan_α:
                        lea              rdi, [rbp + 128]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 128]
                        mov              r14, qword ptr [rbp + 136]
                        mov              r15, qword ptr [rbp + 144]
                                                                                        jmp   n525_disjunction_β
n534_scan_β:
                                                                                        jmp   n525_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2112]
                        add              rsp, 2120
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2112]
                        add              rsp, 2120
                        ret
                        .section         .note.GNU-stack,"",@progbits
