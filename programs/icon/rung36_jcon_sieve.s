                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 1176
                        mov              rdi, rsp
                        mov              ecx, 1176
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1168], rbp
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
n0_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n2_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx44_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1_assign_α
.Lx44_0:
                        cmp              eax, 1
                                                                                        jne   .Lx44_1
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n1_assign_α
.Lx44_1:
                                                                                        jmp   n1_assign_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n3_lit_integer_α
                                                                                        jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n6_lit_integer_α
n2_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n0_disjunction_as
n3_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx48_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn50:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_as
n4_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn52:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]
                        lea              rsi, [rbp + 944]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n8_var_α
                                                                                        jmp   n7_assign_α
n5_call_builtin_icon_β:
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n9_subscript_α
.Lx53_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_subscript_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n12_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n13_var_α
.Lx58_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_deref_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n4_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n16_to_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n17_var_α
.Lx64_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_to_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 880], 6
                        mov              qword ptr [rbp + 888], rax
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 896], 6
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 864], rax
.Lx68_0:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 904]
                        cmp              rax, rcx
                                                                                        jg    n11_var_α
                        mov              qword ptr [rbp + 848], 6
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n20_call_builtin_icon_α
n16_to_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx68_0
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n21_to_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n22_call_builtin_icon_α
.Lx71_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n23_var_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "There are "
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn74:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rbp + 784]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n16_to_β
                                                                                        jmp   n16_to_β
n20_call_builtin_icon_β:
                                                                                        jmp   n16_to_β
#-----------------------------------------------------------------------------------------------------------------------
n21_to_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 448], rax
.Lx76_0:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 488]
                        cmp              rax, rcx
                                                                                        jg    n15_var_α
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n24_assign_α
n21_to_β:
                        inc              qword ptr [rbp + 448]
                                                                                        jmp   .Lx76_0
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn78:               .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n19_lit_string_α
                                                                                        jmp   n19_lit_string_α
n22_call_builtin_icon_β:
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n25_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n26_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_unop_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn84:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n21_to_β
                                                                                        jmp   n28_bound_α
n26_call_builtin_icon_β:
                                                                                        jmp   n21_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n29_var_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          " primes in the first "
#-----------------------------------------------------------------------------------------------------------------------
n28_bound_α:
                        mov              qword ptr [rbp + 496], rsp
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n34_call_builtin_icon_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          " integers."
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_unmark_α:
                        mov              rsp, qword ptr [rbp + 496]
                                                                                        jmp   n21_to_β
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn98:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rbp + 48]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n34_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n36_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n36_op75_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 7
                                                                                        je    .Lx102_1
                        cmp              eax, 6
                                                                                        jne   .Lx102_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 6
                                                                                        jne   .Lx102_0
.Lx102_1:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n37_op75_α
.Lx102_0:
                        lea              rdi, [rbp + 1152]
                        lea              rsi, [rbp + 1152]
                        lea              rdx, [rbp + 688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n37_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op75_α:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 7
                                                                                        je    .Lx104_1
                        cmp              eax, 6
                                                                                        jne   .Lx104_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 6
                                                                                        jne   .Lx104_0
.Lx104_1:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n38_binop_α
.Lx104_0:
                        lea              rdi, [rbp + 1152]
                        lea              rsi, [rbp + 1152]
                        lea              rdx, [rbp + 672]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n38_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 6
                                                                                        jne   .Lx105_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 6
                                                                                        jne   .Lx105_0
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, qword ptr [rbp + 680]
                        add              rax, rcx
                        mov              qword ptr [rbp + 656], 6
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n39_var_α
.Lx105_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n33_unmark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n41_to_by_α
#-----------------------------------------------------------------------------------------------------------------------
n41_to_by_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 656], 6
                        mov              qword ptr [rbp + 664], rax
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 736], 6
                        mov              qword ptr [rbp + 744], rax
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 640], rax
.Lx111_0:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 760]
                        cmp              rdx, 0
                                                                                        jl    .Lx111_1
                        cmp              rax, rcx
                                                                                        jg    n33_unmark_α
                                                                                        jmp   .Lx111_2
.Lx111_1:
                        cmp              rax, rcx
                                                                                        jl    n33_unmark_α
.Lx111_2:
                        mov              qword ptr [rbp + 624], 6
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n42_call_builtin_icon_α
n41_to_by_β:
                        mov              rdx, qword ptr [rbp + 760]
                        mov              rax, qword ptr [rbp + 640]
                        add              rax, rdx
                        mov              qword ptr [rbp + 640], rax
                                                                                        jmp   .Lx111_0
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn113:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n41_to_by_β
                                                                                        jmp   n41_to_by_β
n42_call_builtin_icon_β:
                                                                                        jmp   n41_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1168]
                        add              rsp, 1176
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1168]
                        add              rsp, 1176
                        ret
                        .section         .note.GNU-stack,"",@progbits
