                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ferr_α
proc_ferr_α:
                        .global          proc_ferr_α
                        .global          proc_ferr_β
                        .global          proc_ferr_γ
                        .global          proc_ferr_ω
                        sub              rsp, 1376
                        mov              [rsp + 1352], rcx
                        mov              [rsp + 1360], rdx
                        mov              [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1312
                        mov              edx, 1344
                        call             rt_jmp_frame_lexprep2@PLT
proc_ferr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n1_assign_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n5_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_iterate_α:
                        mov              qword ptr [rbp + 1248], 0
.Lx64_0:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1248]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              rax, 99
                                                                                        je    n4_var_α
                                                                                        jmp   n8_call_builtin_icon_α
n5_iterate_β:
                        inc              qword ptr [rbp + 1248]
                                                                                        jmp   .Lx64_0
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n9_lit_integer_α
.Lx65_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n10_var_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "oops -- "
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn68:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n5_iterate_β
                                                                                        jmp   n11_lit_string_α
n8_call_builtin_icon_β:
                                                                                        jmp   n5_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n12_subscript_α
.Lx69_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n15_binop_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n12_subscript_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        mov              r8, qword ptr [rbp + 1120]
                        mov              r9, qword ptr [rbp + 1128]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n7_lit_string_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn75:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n14_lit_integer_α
                                                                                        jmp   n17_binop_α
n13_call_builtin_icon_β:
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n18_keyword_assign_α
.Lx76_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 99
                                                                                        je    n21_disjunction_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n22_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n23_binop_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n25_var_α
n21_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx84_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n24_lit_integer_α
.Lx84_0:
                        cmp              eax, 1
                                                                                        jne   .Lx84_1
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n24_lit_integer_α
.Lx84_1:
                                                                                        jmp   n24_lit_integer_α
n21_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n24_lit_integer_α
                                                                                        jmp   n26_disjunction_β
n21_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n26_disjunction_α
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n5_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n29_keyword_assign_α
.Lx87_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n30_var_α
n25_var_β:
                                                                                        jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n31_keyword_icon_α
n26_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx91_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n21_disjunction_as
.Lx91_0:
                        cmp              eax, 1
                                                                                        jne   .Lx91_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n21_disjunction_as
.Lx91_1:
                                                                                        jmp   n21_disjunction_as
n26_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n24_lit_integer_α
                                                                                        jmp   n32_disjunction_β
n26_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n32_disjunction_α
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn93:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rbp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n24_lit_integer_α
                                                                                        jmp   n21_disjunction_as
n27_call_builtin_icon_β:
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n34_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 99
                                                                                        je    n35_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n35_return_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n36_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n31_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx99_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n26_disjunction_af
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n37_lit_integer_α
n31_keyword_icon_β:
                                                                                        jmp   n26_disjunction_af
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n32_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n38_keyword_icon_α
n32_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx101_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n26_disjunction_as
.Lx101_0:
                                                                                        jmp   n26_disjunction_as
n32_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                                                                                        jmp   n24_lit_integer_α
n32_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn103:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n24_lit_integer_α
                                                                                        jmp   n26_disjunction_as
n33_call_builtin_icon_β:
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_ferr_γ
#-----------------------------------------------------------------------------------------------------------------------
n36_call_value_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        mov              qword ptr [rbp + 272], 0
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx107_7
                        lea              rcx, [rip + .Lx107_3]
                        lea              rdx, [rip + .Lx107_4]
                                                                                        jmp   rax
.Lx107_3:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx107_5
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx107_2
.Lx107_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx107_2
.Lx107_4:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx107_6
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx107_2
.Lx107_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx107_2
.Lx107_7:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        lea              r8, [rbp + 272]
                        call             rt_call_apply_gen_h@PLT
.Lx107_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n21_disjunction_af
                                                                                        jmp   n41_var_α
n36_call_value_β:
                        mov              rax, qword ptr [rbp + 272]
                        cmp              rax, 1
                                                                                        jne   .Lx107_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 280]
                                                                                        jmp   qword ptr [rsp]
.Lx107_8:
                        lea              rdi, [rbp + 272]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n21_disjunction_af
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n41_var_α
                                                                                        jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n42_binop_test_α
.Lx108_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx109_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n32_disjunction_af
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n43_var_α
n38_keyword_icon_β:
                                                                                        jmp   n32_disjunction_af
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rbp + 576]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n24_lit_integer_α
                                                                                        jmp   n32_disjunction_as
n39_call_builtin_icon_β:
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n44_binop_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          ") "
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_test_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 100
                                                                                        je    .Lx115_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx115_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx115_2
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx115_2
.Lx115_1:
                        mov              rax, qword ptr [rbp + 488]
                        mov              rcx, qword ptr [rbp + 520]
                        cmp              rax, rcx
                                                                                        je    n26_disjunction_af
                        mov              rcx, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rcx
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rcx
                                                                                        jmp   n46_var_α
.Lx115_0:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              r8d, 10
                        lea              r9, [rbp + 464]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx115_1
                        cmp              eax, 1
                                                                                        je    n26_disjunction_af
                                                                                        jmp   n46_var_α
.Lx115_2:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n26_disjunction_af
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n47_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n48_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "succeeded"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_test_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 100
                                                                                        je    .Lx122_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx122_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 6
                                                                                        jne   .Lx122_2
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx122_2
.Lx122_1:
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, qword ptr [rbp + 24]
                        cmp              rax, rcx
                                                                                        je    n32_disjunction_af
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rcx
                        mov              rcx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rcx
                                                                                        jmp   n50_var_α
.Lx122_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        mov              r8d, 10
                        lea              r9, [rbp + 768]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx122_1
                        cmp              eax, 1
                                                                                        je    n32_disjunction_af
                                                                                        jmp   n50_var_α
.Lx122_2:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n32_disjunction_af
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n33_call_builtin_icon_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "failed but no error"
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n52_keyword_icon_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "got error "
#-----------------------------------------------------------------------------------------------------------------------
n52_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n24_lit_integer_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n53_lit_string_α
n52_keyword_icon_β:
                                                                                        jmp   n24_lit_integer_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n54_var_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          " instead of "
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_β:
                                                                                        jmp   proc_ferr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1352]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, [rbp + 1368]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_ω:
                        mov              rax, [rbp + 1360]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, [rbp + 1368]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ferr_dcα:
                        pop              r11
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1344], r11
                        lea              rax, [rip + .Lx132_2]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rax, [rip + .Lx132_3]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 1312
                        mov              edx, 1344
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ferr_α_body
.Lx132_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1376
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx132_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1376
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_endetab1_α
proc_endetab1_α:
                        .global          proc_endetab1_α
                        .global          proc_endetab1_β
                        .global          proc_endetab1_γ
                        .global          proc_endetab1_ω
                        sub              rsp, 2336
                        mov              [rsp + 2312], rcx
                        mov              [rsp + 2320], rdx
                        mov              [rsp + 2328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2240
                        mov              edx, 2304
                        call             rt_jmp_frame_lexprep2@PLT
proc_endetab1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        lea              rsi, [rbp + 2224]
                        call             proc_setup_dcα
                                                                                        jmp   .Lx219_2
.Lx219_2:
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n135_assign_α
n134_call_proc_staged_β:
                                                                                        jmp   n136_call_builtin_icon_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn222:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn222]
                        lea              rsi, [rbp + 80]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_endetab1_ω
                                                                                        jmp   n137_call_proc_staged_α
n136_call_builtin_icon_β:
                                                                                        jmp   proc_endetab1_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        call             proc_escape_dcα
                                                                                        jmp   .Lx224_2
.Lx224_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_endetab1_ω
                                                                                        jmp   n138_assign_α
n137_call_proc_staged_β:
                                                                                        jmp   proc_endetab1_ω
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "escape"
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n139_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n139_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n140_var_ref_α
n139_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx227_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n136_call_builtin_icon_α
.Lx227_0:
                        cmp              eax, 1
                                                                                        jne   .Lx227_1
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n136_call_builtin_icon_α
.Lx227_1:
                                                                                        jmp   n136_call_builtin_icon_α
n139_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n142_disjunction_β
n139_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n141_var_α
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n145_lit_integer_α
n140_var_ref_β:
                                                                                        jmp   n139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n146_lit_string_α
n141_var_β:
                                                                                        jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n148_var_α
n142_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx233_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n144_conjunction_α
.Lx233_0:
                        cmp              eax, 1
                                                                                        jne   .Lx233_1
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n144_conjunction_α
.Lx233_1:
                                                                                        jmp   n144_conjunction_α
n142_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n150_disjunction_β
n142_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n149_disjunction_α
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n139_disjunction_as
n143_assign_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n144_conjunction_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n139_disjunction_as
n144_conjunction_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n153_subscript_α
.Lx236_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n154_lit_string_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "!."
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n156_var_α
n148_var_β:
                                                                                        jmp   n142_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n149_disjunction_α:
                        mov              qword ptr [rbp + 1600], 0
                        mov              qword ptr [rbp + 1608], 0
                        mov              dword ptr [rbp + 1616], 0
                                                                                        jmp   n158_lit_charset_α
n149_disjunction_as:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0
                                                                                        jne   .Lx243_0
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n157_var_ref_α
.Lx243_0:
                                                                                        jmp   n157_var_ref_α
n149_disjunction_β:
                        mov              eax, dword ptr [rbp + 1616]
                                                                                        jmp   n159_call_value_β
n149_disjunction_af:
                        add              dword ptr [rbp + 1616], 1
                        mov              eax, dword ptr [rbp + 1616]
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_disjunction_α:
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0
                                                                                        jmp   n161_var_α
n150_disjunction_as:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0
                                                                                        jne   .Lx245_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n152_conjunction_α
.Lx245_0:
                                                                                        jmp   n152_conjunction_α
n150_disjunction_β:
                        mov              eax, dword ptr [rbp + 912]
                                                                                        jmp   n136_call_builtin_icon_α
n150_disjunction_af:
                        add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n151_conjunction_α:
                                                                                        jmp   n142_disjunction_as
n151_conjunction_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_conjunction_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n142_disjunction_as
n152_conjunction_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n153_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n139_disjunction_af
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n163_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n164_call_builtin_icon_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 6
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n165_subscript_α
.Lx250_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n166_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n167_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_charset_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              dword ptr [rbp + 1828], -1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n168_var_α
n158_lit_charset_β:
                                                                                        jmp   n149_disjunction_af
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n159_call_value_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1688], rax
                        mov              qword ptr [rbp + 1696], 0
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx257_7
                        lea              rcx, [rip + .Lx257_3]
                        lea              rdx, [rip + .Lx257_4]
                                                                                        jmp   rax
.Lx257_3:
                        mov              qword ptr [rbp + 1704], rsp
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx257_5
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx257_2
.Lx257_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx257_2
.Lx257_4:
                        mov              qword ptr [rbp + 1704], rsp
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx257_6
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx257_2
.Lx257_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx257_2
.Lx257_7:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        lea              r8, [rbp + 1696]
                        call             rt_call_apply_gen_h@PLT
.Lx257_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n157_var_ref_α
                                                                                        jmp   n160_assign_α
n159_call_value_β:
                        mov              rax, qword ptr [rbp + 1696]
                        cmp              rax, 1
                                                                                        jne   .Lx257_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1704]
                                                                                        jmp   qword ptr [rsp]
.Lx257_8:
                        lea              rdi, [rbp + 1696]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n157_var_ref_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n160_assign_α
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n149_disjunction_as
n160_assign_β:
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n169_var_α
n161_var_β:
                                                                                        jmp   n150_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n162_conjunction_α:
                                                                                        jmp   n150_disjunction_as
n162_conjunction_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n163_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n139_disjunction_af
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn264:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n147_var_ref_α
                                                                                        jmp   n171_assign_α
n164_call_builtin_icon_β:
                                                                                        jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_subscript_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 1984]
                        mov              rcx, qword ptr [rbp + 1992]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n173_lit_string_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n172_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_proc_staged_α:
                        lea              rsi, [rbp + 864]
                        call             proc_interp_dcα
                                                                                        jmp   .Lx267_2
.Lx267_2:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n142_disjunction_af
                                                                                        jmp   n174_binop_test_α
n166_call_proc_staged_β:
                                                                                        jmp   n142_disjunction_af
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "interp"
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n175_subscript_α
.Lx268_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n176_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n177_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n178_binop_test_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n179_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n180_var_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n142_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n175_subscript_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n183_lit_string_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n182_var_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        mov              qword ptr [rbp + 1808], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx280_60:
                        .section         .rodata
.Lbynamegenfn99:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn99]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 2
                        lea              rcx, [rbp + 1808]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n149_disjunction_af
                                                                                        jmp   n184_lit_string_α
n176_call_builtin_gen_β:
                                                                                        jmp   .Lx280_60
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n150_disjunction_af
                        mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n185_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_test_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n139_disjunction_af
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n173_lit_string_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n173_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n187_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n188_var_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "entab error: "
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n189_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n190_var_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n191_var_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n192_var_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "detab error: "
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n193_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_value_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        mov              qword ptr [rbp + 1904], 0
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx295_7
                        lea              rcx, [rip + .Lx295_3]
                        lea              rdx, [rip + .Lx295_4]
                                                                                        jmp   rax
.Lx295_3:
                        mov              qword ptr [rbp + 1912], rsp
                        mov              rax, qword ptr [rbp + 1904]
                        test             rax, rax
                                                                                        jne   .Lx295_5
                        mov              qword ptr [rbp + 1904], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_4:
                        mov              qword ptr [rbp + 1912], rsp
                        mov              rax, qword ptr [rbp + 1904]
                        test             rax, rax
                                                                                        jne   .Lx295_6
                        mov              qword ptr [rbp + 1904], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_7:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        lea              r8, [rbp + 1904]
                        call             rt_call_apply_gen_h@PLT
.Lx295_2:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n142_disjunction_α
                                                                                        jmp   n194_assign_α
n187_call_value_β:
                        mov              rax, qword ptr [rbp + 1904]
                        cmp              rax, 1
                                                                                        jne   .Lx295_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1912]
                                                                                        jmp   qword ptr [rsp]
.Lx295_8:
                        lea              rdi, [rbp + 1904]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n142_disjunction_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n194_assign_α
                                                                                        jmp   n142_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n183_lit_string_α
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n183_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n197_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n159_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        call             proc_setup_dcα
                                                                                        jmp   .Lx306_2
.Lx306_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n143_assign_α
n193_call_proc_staged_β:
                                                                                        jmp   n136_call_builtin_icon_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "setup"
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n142_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n200_lit_string_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n201_var_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "   returned: "
#-----------------------------------------------------------------------------------------------------------------------
n197_call_value_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              qword ptr [rbp + 1456], 0
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx311_7
                        lea              rcx, [rip + .Lx311_3]
                        lea              rdx, [rip + .Lx311_4]
                                                                                        jmp   rax
.Lx311_3:
                        mov              qword ptr [rbp + 1464], rsp
                        mov              rax, qword ptr [rbp + 1456]
                        test             rax, rax
                                                                                        jne   .Lx311_5
                        mov              qword ptr [rbp + 1456], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx311_2
.Lx311_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx311_2
.Lx311_4:
                        mov              qword ptr [rbp + 1464], rsp
                        mov              rax, qword ptr [rbp + 1456]
                        test             rax, rax
                                                                                        jne   .Lx311_6
                        mov              qword ptr [rbp + 1456], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx311_2
.Lx311_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx311_2
.Lx311_7:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        lea              r8, [rbp + 1456]
                        call             rt_call_apply_gen_h@PLT
.Lx311_2:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n150_disjunction_α
                                                                                        jmp   n202_assign_α
n197_call_value_β:
                        mov              rax, qword ptr [rbp + 1456]
                        cmp              rax, 1
                                                                                        jne   .Lx311_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1464]
                                                                                        jmp   qword ptr [rsp]
.Lx311_8:
                        lea              rdi, [rbp + 1456]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n150_disjunction_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n202_assign_α
                                                                                        jmp   n150_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n203_lit_string_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n204_var_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "   returned: "
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n205_call_builtin_icon_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n150_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n207_call_builtin_icon_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn322:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rbp + 672]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n196_lit_string_α
                                                                                        jmp   n209_call_builtin_icon_α
n205_call_builtin_icon_β:
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n210_lit_string_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn325:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n199_lit_string_α
                                                                                        jmp   n211_call_builtin_icon_α
n207_call_builtin_icon_β:
                                                                                        jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n212_lit_string_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "\t\n"
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn328:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rbp + 592]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n196_lit_string_α
                                                                                        jmp   n196_lit_string_α
n209_call_builtin_icon_β:
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n213_call_builtin_icon_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n211_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn331:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn331]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n199_lit_string_α
                                                                                        jmp   n199_lit_string_α
n211_call_builtin_icon_β:
                                                                                        jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n214_call_builtin_icon_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "!RNBA"
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn334:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rbp + 464]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n215_call_builtin_icon_α
n213_call_builtin_icon_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn336:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n216_call_builtin_icon_α
n214_call_builtin_icon_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn338:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n151_conjunction_α
n215_call_builtin_icon_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn340:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rbp + 960]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n136_call_builtin_icon_α
                                                                                        jmp   n162_conjunction_α
n216_call_builtin_icon_β:
                                                                                        jmp   n136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_β:
                                                                                        jmp   proc_endetab1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2312]
                        lea              rsp, [rbp + 2336]
                        mov              rbp, [rbp + 2328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_ω:
                        mov              rax, [rbp + 2320]
                        lea              rsp, [rbp + 2336]
                        mov              rbp, [rbp + 2328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_endetab1_dcα:
                        pop              r11
                        sub              rsp, 2352
                        mov              qword ptr [rsp + 2328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2304], r11
                        lea              rax, [rip + .Lx341_2]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rax, [rip + .Lx341_3]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rdi, rbp
                        mov              esi, 2240
                        mov              edx, 2304
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_endetab1_α_body
.Lx341_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx341_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_escape_α
proc_escape_α:
                        .global          proc_escape_α
                        .global          proc_escape_β
                        .global          proc_escape_γ
                        .global          proc_escape_ω
                        sub              rsp, 1424
                        mov              [rsp + 1400], rcx
                        mov              [rsp + 1408], rdx
                        mov              [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1344
                        mov              edx, 1392
                        call             rt_jmp_frame_lexprep2@PLT
proc_escape_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n342_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n344_var_ref_α
n342_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx409_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n343_lit_string_α
.Lx409_0:
                                                                                        jmp   n343_lit_string_α
n342_disjunction_β:
                        mov              eax, dword ptr [rbp + 1152]
                                                                                        jmp   n343_lit_string_α
n342_disjunction_af:
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                                                                                        jmp   n343_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n346_assign_α
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n347_lit_integer_α
n344_var_ref_β:
                                                                                        jmp   n342_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n342_disjunction_as
n345_assign_β:
                                                                                        jmp   n343_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n346_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n348_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n349_subscript_α
.Lx415_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n350_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n349_subscript_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n342_disjunction_af
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n352_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n353_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n354_return_α
#-----------------------------------------------------------------------------------------------------------------------
n352_deref_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n342_disjunction_af
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n355_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n356_scan_pos_α
.Lx424_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n354_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_escape_γ
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n357_binop_test_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "$"
#-----------------------------------------------------------------------------------------------------------------------
n356_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx428_0
                        add              rax, r15
                        add              rax, 1
.Lx428_0:
                        cmp              rax, 1
                                                                                        jl    n359_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n359_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n359_var_α
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n358_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n357_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n342_disjunction_af
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_scan_α:
                        lea              rdi, [rbp + 64]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n351_var_α
n358_scan_β:
                                                                                        jmp   n351_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                                                                                        jmp   n361_var_α
n359_var_β:
                                                                                        jmp   n358_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n362_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n363_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n365_lit_integer_α
.Lx437_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n363_disjunction_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              dword ptr [rbp + 1024], 0
                                                                                        jmp   n367_lit_charset_α
n363_disjunction_as:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        jne   .Lx439_0
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n366_scan_tab_α
.Lx439_0:
                        cmp              eax, 1
                                                                                        jne   .Lx439_1
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n366_scan_tab_α
.Lx439_1:
                                                                                        jmp   n366_scan_tab_α
n363_disjunction_β:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        je    n368_scan_upto_β
                                                                                        jmp   n363_disjunction_af
n363_disjunction_af:
                        add              dword ptr [rbp + 1024], 1
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 1
                                                                                        je    n369_lit_integer_α
                                                                                        jmp   n364_var_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n371_subscript_α
.Lx442_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n366_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1016]
                        cmp              rax, 1
                                                                                        jge   .Lx444_0
                        add              rax, r15
                        add              rax, 1
.Lx444_0:
                        cmp              rax, 1
                                                                                        jge   .Lx444_239
                        add              rsp, 16
                                                                                        jmp   n363_disjunction_β
.Lx444_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx444_240
                        add              rsp, 16
                                                                                        jmp   n363_disjunction_β
.Lx444_240:
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
                                                                                        jmp   n372_binop_α
n366_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n363_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_charset_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n368_scan_upto_α
n367_lit_charset_β:
                                                                                        jmp   n363_disjunction_af
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n368_scan_upto_α:
                        mov              qword ptr [rbp + 1056], r14
.Lx447_0:
                        mov              rax, qword ptr [rbp + 1056]
                        cmp              rax, r15
                                                                                        jge   n363_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx447_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx447_1
                        mov              qword ptr [rbp + 1040], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n363_disjunction_as
.Lx447_1:
                        inc              qword ptr [rbp + 1056]
                                                                                        jmp   .Lx447_0
n368_scan_upto_β:
                        inc              qword ptr [rbp + 1056]
                                                                                        jmp   .Lx447_0
.Lx447_2:
                        .quad            .Lx447_2_s
.Lx447_2_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n363_disjunction_as
n369_lit_integer_β:
                                                                                        jmp   n363_disjunction_af
.Lx448_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n373_scan_match_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n371_subscript_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8, qword ptr [rbp + 1232]
                        mov              r9, qword ptr [rbp + 1240]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n343_lit_string_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n345_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n372_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n374_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n373_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx453_239
                        add              rsp, 16
                                                                                        jmp   n353_lit_integer_α
.Lx453_239:
                        mov              rdi, qword ptr [rip + .Lx453_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx453_240
                        add              rsp, 16
                                                                                        jmp   n353_lit_integer_α
.Lx453_240:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n375_scan_tab_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n374_assign_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n364_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 904]
                        cmp              rax, 1
                                                                                        jge   .Lx456_0
                        add              rax, r15
                        add              rax, 1
.Lx456_0:
                        cmp              rax, 1
                                                                                        jge   .Lx456_239
                        add              rsp, 16
                                                                                        jmp   n353_lit_integer_α
.Lx456_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx456_240
                        add              rsp, 16
                                                                                        jmp   n353_lit_integer_α
.Lx456_240:
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
                                                                                        jmp   n376_lit_integer_α
n375_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n353_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n377_scan_move_α
.Lx457_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n377_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx459_239
                        add              rsp, 16
                                                                                        jmp   n375_scan_tab_β
.Lx459_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx459_240
                        add              rsp, 16
                                                                                        jmp   n375_scan_tab_β
.Lx459_240:
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
                                                                                        jmp   n378_assign_α
n377_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n375_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n379_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n380_call_builtin_α
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn463:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n382_lit_string_α
                                                                                        jmp   n381_lit_string_α
n380_call_builtin_β:
                                                                                        jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n383_assign_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n384_call_builtin_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn468:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn468]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n387_lit_string_α
                                                                                        jmp   n386_lit_string_α
n384_call_builtin_β:
                                                                                        jmp   n387_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n388_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n389_assign_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n390_call_builtin_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n388_conjunction_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n391_binop_α
n388_conjunction_β:
                                                                                        jmp   n353_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn476:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rbp + 624]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n393_lit_string_α
                                                                                        jmp   n392_lit_string_α
n390_call_builtin_β:
                                                                                        jmp   n393_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n391_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n394_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n395_assign_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n396_call_builtin_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n394_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n397_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n395_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn483:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn483]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n399_lit_string_α
                                                                                        jmp   n398_lit_string_α
n396_call_builtin_β:
                                                                                        jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n397_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n353_lit_integer_α
n397_conjunction_β:
                                                                                        jmp   n353_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n400_assign_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n401_call_builtin_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n401_call_builtin_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn489:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn489]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n403_lit_string_α
                                                                                        jmp   n402_lit_string_α
n401_call_builtin_β:
                                                                                        jmp   n403_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n404_assign_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n405_var_α
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n404_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n406_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n406_binop_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n407_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n407_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_β:
                                                                                        jmp   proc_escape_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1400]
                        lea              rsp, [rbp + 1424]
                        mov              rbp, [rbp + 1416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_ω:
                        mov              rax, [rbp + 1408]
                        lea              rsp, [rbp + 1424]
                        mov              rbp, [rbp + 1416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_escape_dcα:
                        pop              r11
                        sub              rsp, 1440
                        mov              qword ptr [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1392], r11
                        lea              rax, [rip + .Lx497_2]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rax, [rip + .Lx497_3]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1344
                        mov              edx, 1392
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_escape_α_body
.Lx497_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1424
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx497_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1424
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_interp_α
proc_interp_α:
                        .global          proc_interp_α
                        .global          proc_interp_β
                        .global          proc_interp_γ
                        .global          proc_interp_ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
proc_interp_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n499_assign_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n499_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n500_var_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n501_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n501_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n503_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n504_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n505_scan_pos_α
.Lx531_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n506_lit_string_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n505_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx534_0
                        add              rax, r15
                        add              rax, 1
.Lx534_0:
                        cmp              rax, 1
                                                                                        jl    n508_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n508_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n508_var_α
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n507_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n509_call_builtin_icon_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n507_scan_α:
                        lea              rdi, [rbp + 176]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 176]
                        mov              r14, qword ptr [rbp + 184]
                        mov              r15, qword ptr [rbp + 192]
                                                                                        jmp   n502_var_α
n507_scan_β:
                                                                                        jmp   n502_var_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                                                                                        jmp   n510_lit_charset_α
n508_var_β:
                                                                                        jmp   n507_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn540:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn540]
                        lea              rsi, [rbp + 48]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_interp_ω
                                                                                        jmp   n511_return_α
n509_call_builtin_icon_β:
                                                                                        jmp   proc_interp_ω
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_charset_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              dword ptr [rbp + 516], -1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n512_scan_many_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n511_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_interp_γ
#-----------------------------------------------------------------------------------------------------------------------
n512_scan_many_α:
                        mov              eax, r14d
.Lx544_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx544_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx544_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx544_1
                        add              eax, 1
                                                                                        jmp   .Lx544_0
.Lx544_1:
                        cmp              eax, r14d
                                                                                        je    n514_var_α
                        mov              qword ptr [rbp + 496], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 504], rcx
                                                                                        jmp   n513_scan_tab_α
n512_scan_many_β:
                                                                                        jmp   n514_var_α
.Lx544_2:
                        .quad            .Lx544_2_s
.Lx544_2_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n513_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 504]
                        cmp              rax, 1
                                                                                        jge   .Lx546_0
                        add              rax, r15
                        add              rax, 1
.Lx546_0:
                        cmp              rax, 1
                                                                                        jge   .Lx546_239
                        add              rsp, 16
                                                                                        jmp   n514_var_α
.Lx546_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx546_240
                        add              rsp, 16
                                                                                        jmp   n514_var_α
.Lx546_240:
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
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n514_var_α
n513_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n514_var_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n515_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n515_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n517_lit_charset_α
n515_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx550_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n516_scan_tab_α
.Lx550_0:
                        cmp              eax, 1
                                                                                        jne   .Lx550_1
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n516_scan_tab_α
.Lx550_1:
                                                                                        jmp   n516_scan_tab_α
n515_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n518_scan_upto_β
                                                                                        jmp   n515_disjunction_af
n515_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n519_lit_integer_α
                                                                                        jmp   n503_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n516_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 376]
                        cmp              rax, 1
                                                                                        jge   .Lx552_0
                        add              rax, r15
                        add              rax, 1
.Lx552_0:
                        cmp              rax, 1
                                                                                        jge   .Lx552_239
                        add              rsp, 16
                                                                                        jmp   n515_disjunction_β
.Lx552_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx552_240
                        add              rsp, 16
                                                                                        jmp   n515_disjunction_β
.Lx552_240:
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n520_binop_α
n516_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n515_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_charset_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              dword ptr [rbp + 436], -1
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n518_scan_upto_α
n517_lit_charset_β:
                                                                                        jmp   n515_disjunction_af
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n518_scan_upto_α:
                        mov              qword ptr [rbp + 416], r14
.Lx555_0:
                        mov              rax, qword ptr [rbp + 416]
                        cmp              rax, r15
                                                                                        jge   n515_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx555_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx555_1
                        mov              qword ptr [rbp + 400], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n515_disjunction_as
.Lx555_1:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx555_0
n518_scan_upto_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx555_0
.Lx555_2:
                        .quad            .Lx555_2_s
.Lx555_2_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n515_disjunction_as
n519_lit_integer_β:
                                                                                        jmp   n515_disjunction_af
.Lx556_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n520_binop_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n521_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n521_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n522_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n522_conjunction_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n503_lit_integer_α
n522_conjunction_β:
                                                                                        jmp   n503_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_β:
                                                                                        jmp   proc_interp_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 600]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_interp_dcα:
                        pop              r11
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 592], r11
                        lea              rax, [rip + .Lx560_2]
                        mov              qword ptr [rbp + 600], rax
                        lea              rax, [rip + .Lx560_3]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 576
                        mov              edx, 592
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_interp_α_body
.Lx560_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx560_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_setup_α
proc_setup_α:
                        .global          proc_setup_α
                        .global          proc_setup_β
                        .global          proc_setup_γ
                        .global          proc_setup_ω
                        sub              rsp, 800
                        mov              [rsp + 776], rcx
                        mov              [rsp + 784], rdx
                        mov              [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 752
                        mov              edx, 768
                        call             rt_jmp_frame_lexprep2@PLT
proc_setup_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n561_keyword_icon_α:
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                                                                                        jmp   n562_make_list_α
n561_keyword_icon_β:
                                                                                        jmp   n564_var_α
#-----------------------------------------------------------------------------------------------------------------------
n562_make_list_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n563_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n563_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n564_var_α
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n565_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n565_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n567_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n568_call_builtin_icon_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "testing entab/detab(s"
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_charset_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              dword ptr [rbp + 452], -1
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n569_scan_upto_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n568_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn598:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn598]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n570_lit_string_α
                                                                                        jmp   n570_lit_string_α
n568_call_builtin_icon_β:
                                                                                        jmp   n570_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n569_scan_upto_α:
                        mov              qword ptr [rbp + 432], r14
.Lx600_0:
                        mov              rax, qword ptr [rbp + 432]
                        cmp              rax, r15
                                                                                        jge   n586_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx600_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx600_1
                        mov              qword ptr [rbp + 416], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n571_scan_tab_α
.Lx600_1:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx600_0
n569_scan_upto_β:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx600_0
.Lx600_2:
                        .quad            .Lx600_2_s
.Lx600_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n572_var_α
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n571_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 424]
                        cmp              rax, 1
                                                                                        jge   .Lx603_0
                        add              rax, r15
                        add              rax, 1
.Lx603_0:
                        cmp              rax, 1
                                                                                        jge   .Lx603_239
                        add              rsp, 16
                                                                                        jmp   n569_scan_upto_β
.Lx603_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx603_240
                        add              rsp, 16
                                                                                        jmp   n569_scan_upto_β
.Lx603_240:
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
                                                                                        jmp   n573_var_α
n571_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n569_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n572_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n574_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n576_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n574_iterate_α:
                        mov              qword ptr [rbp + 224], 0
.Lx609_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 224]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              rax, 99
                                                                                        je    n575_lit_string_α
                                                                                        jmp   n577_unop_test_α
n574_iterate_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx609_0
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n578_call_builtin_icon_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n576_lit_charset_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              dword ptr [rbp + 644], -1
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n579_scan_many_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n577_unop_test_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 99
                                                                                        je    n574_iterate_β
                        cmp              eax, 0
                                                                                        je    n574_iterate_β
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n580_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n578_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn614:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn614]
                        lea              rsi, [rbp + 64]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n581_var_α
                                                                                        jmp   n581_var_α
n578_call_builtin_icon_β:
                                                                                        jmp   n581_var_α
#-----------------------------------------------------------------------------------------------------------------------
n579_scan_many_α:
                        mov              eax, r14d
.Lx616_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx616_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx616_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx616_1
                        add              eax, 1
                                                                                        jmp   .Lx616_0
.Lx616_1:
                        cmp              eax, r14d
                                                                                        je    n567_lit_charset_α
                        mov              qword ptr [rbp + 624], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 632], rcx
                                                                                        jmp   n582_scan_tab_α
n579_scan_many_β:
                                                                                        jmp   n567_lit_charset_α
.Lx616_2:
                        .quad            .Lx616_2_s
.Lx616_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n580_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn618:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn618]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n574_iterate_β
                                                                                        jmp   n574_iterate_β
n580_call_builtin_icon_β:
                                                                                        jmp   n574_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n581_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n583_return_α
#-----------------------------------------------------------------------------------------------------------------------
n582_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 632]
                        cmp              rax, 1
                                                                                        jge   .Lx622_0
                        add              rax, r15
                        add              rax, 1
.Lx622_0:
                        cmp              rax, 1
                                                                                        jge   .Lx622_239
                        add              rsp, 16
                                                                                        jmp   n567_lit_charset_α
.Lx622_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx622_240
                        add              rsp, 16
                                                                                        jmp   n567_lit_charset_α
.Lx622_240:
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
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n584_call_builtin_icon_α
n582_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n567_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n583_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_setup_γ
#-----------------------------------------------------------------------------------------------------------------------
n584_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn625:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn625]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n567_lit_charset_α
                                                                                        jmp   n585_call_builtin_icon_α
n584_call_builtin_icon_β:
                                                                                        jmp   n567_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n585_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn627:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn627]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n567_lit_charset_α
                                                                                        jmp   n567_lit_charset_α
n585_call_builtin_icon_β:
                                                                                        jmp   n567_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n586_scan_α:
                        lea              rdi, [rbp + 336]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n566_lit_string_α
n586_scan_β:
                                                                                        jmp   n566_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_β:
                                                                                        jmp   proc_setup_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 776]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_ω:
                        mov              rax, [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_setup_dcα:
                        pop              r11
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 768], r11
                        lea              rax, [rip + .Lx630_2]
                        mov              qword ptr [rbp + 776], rax
                        lea              rax, [rip + .Lx630_3]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 752
                        mov              edx, 768
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_setup_α_body
.Lx630_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -800
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx630_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -800
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "ferr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_ferr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1344
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_ferr_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "endetab1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_endetab1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_endetab1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "escape"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_escape_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1392
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_escape_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "interp"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_interp_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_interp_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "setup"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_setup_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_setup_dcα]
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
                        sub              rsp, 2904
                        mov              rdi, rsp
                        mov              ecx, 2904
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2896], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n632_assign_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "rutabaga"
#-----------------------------------------------------------------------------------------------------------------------
n632_assign_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n633_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n633_disjunction_α:
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0
                        mov              dword ptr [rbp + 2672], 0
                                                                                        jmp   n635_lit_charset_α
n633_disjunction_as:
                        mov              eax, dword ptr [rbp + 2672]
                        cmp              eax, 0
                                                                                        jne   .Lx729_0
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n634_disjunction_α
.Lx729_0:
                                                                                        jmp   n634_disjunction_α
n633_disjunction_β:
                        mov              eax, dword ptr [rbp + 2672]
                                                                                        jmp   n634_disjunction_α
n633_disjunction_af:
                        add              dword ptr [rbp + 2672], 1
                        mov              eax, dword ptr [rbp + 2672]
                                                                                        jmp   n634_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n634_disjunction_α:
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0
                        mov              dword ptr [rbp + 2480], 0
                                                                                        jmp   n638_lit_charset_α
n634_disjunction_as:
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 0
                                                                                        jne   .Lx731_0
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n637_disjunction_α
.Lx731_0:
                                                                                        jmp   n637_disjunction_α
n634_disjunction_β:
                        mov              eax, dword ptr [rbp + 2480]
                                                                                        jmp   n637_disjunction_α
n634_disjunction_af:
                        add              dword ptr [rbp + 2480], 1
                        mov              eax, dword ptr [rbp + 2480]
                                                                                        jmp   n637_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_charset_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              dword ptr [rbp + 2820], -1
                        mov              rax, qword ptr [rip + .Lx732_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n640_call_builtin_icon_α
n635_lit_charset_β:
                                                                                        jmp   n633_disjunction_af
.Lx732_0:
                        .quad            .Lx732_0_s
.Lx732_0_s:
                        .string          "1789"
#-----------------------------------------------------------------------------------------------------------------------
n636_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn734:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn734]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n634_disjunction_α
                                                                                        jmp   n633_disjunction_as
n636_call_builtin_icon_β:
                                                                                        jmp   n634_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n637_disjunction_α:
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0
                                                                                        jmp   n642_lit_string_α
n637_disjunction_as:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        jne   .Lx736_0
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n641_disjunction_α
.Lx736_0:
                                                                                        jmp   n641_disjunction_α
n637_disjunction_β:
                        mov              eax, dword ptr [rbp + 2256]
                                                                                        jmp   n641_disjunction_α
n637_disjunction_af:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                                                                                        jmp   n641_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_charset_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              dword ptr [rbp + 2628], -1
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n644_call_builtin_icon_α
n638_lit_charset_β:
                                                                                        jmp   n634_disjunction_af
.Lx737_0:
                        .quad            .Lx737_0_s
.Lx737_0_s:
                        .string          "1249"
#-----------------------------------------------------------------------------------------------------------------------
n639_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        .section         .rodata
.Lrkfn739:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn739]
                        lea              rsi, [rbp + 2512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n637_disjunction_α
                                                                                        jmp   n634_disjunction_as
n639_call_builtin_icon_β:
                                                                                        jmp   n637_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n640_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn741:              .string          "entab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn741]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n633_disjunction_af
                                                                                        jmp   n645_lit_string_α
n640_call_builtin_icon_β:
                                                                                        jmp   n633_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n641_disjunction_α:
                        mov              qword ptr [rbp + 2016], 0
                        mov              qword ptr [rbp + 2024], 0
                        mov              dword ptr [rbp + 2032], 0
                                                                                        jmp   n647_lit_string_α
n641_disjunction_as:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        jne   .Lx743_0
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n646_lit_integer_α
.Lx743_0:
                                                                                        jmp   n646_lit_integer_α
n641_disjunction_β:
                        mov              eax, dword ptr [rbp + 2032]
                                                                                        jmp   n646_lit_integer_α
n641_disjunction_af:
                        add              dword ptr [rbp + 2032], 1
                        mov              eax, dword ptr [rbp + 2032]
                                                                                        jmp   n646_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n642_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n649_lit_string_α
n642_lit_string_β:
                                                                                        jmp   n637_disjunction_af
.Lx744_0:
                        .quad            .Lx744_0_s
.Lx744_0_s:
                        .string          "    "
#-----------------------------------------------------------------------------------------------------------------------
n643_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn746:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn746]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n641_disjunction_α
                                                                                        jmp   n637_disjunction_as
n643_call_builtin_icon_β:
                                                                                        jmp   n641_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n644_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lrkfn748:              .string          "detab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn748]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n634_disjunction_af
                                                                                        jmp   n650_lit_string_α
n644_call_builtin_icon_β:
                                                                                        jmp   n634_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx749_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n651_binop_test_α
.Lx749_0:
                        .quad            .Lx749_0_s
.Lx749_0_s:
                        .string          "1789"
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n652_proc_value_α
.Lx750_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx751_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n653_lit_string_α
n647_lit_string_β:
                                                                                        jmp   n641_disjunction_af
.Lx751_0:
                        .quad            .Lx751_0_s
.Lx751_0_s:
                        .string          "\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n648_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn753:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn753]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n646_lit_integer_α
                                                                                        jmp   n641_disjunction_as
n648_call_builtin_icon_β:
                                                                                        jmp   n646_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n649_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n654_call_builtin_icon_α
.Lx754_0:
                        .quad            .Lx754_0_s
.Lx754_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n655_binop_test_α
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "1249"
#-----------------------------------------------------------------------------------------------------------------------
n651_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2768]
                        mov              rsi, qword ptr [rbp + 2776]
                        mov              rdx, qword ptr [rbp + 2832]
                        mov              rcx, qword ptr [rbp + 2840]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n633_disjunction_af
                        mov              rdi, qword ptr [rbp + 2832]
                        mov              rsi, qword ptr [rbp + 2840]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n656_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n652_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx758_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n657_make_list_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n658_call_builtin_icon_α
.Lx759_0:
                        .quad            .Lx759_0_s
.Lx759_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n654_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lrkfn761:              .string          "entab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn761]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n637_disjunction_af
                                                                                        jmp   n659_lit_string_α
n654_call_builtin_icon_β:
                                                                                        jmp   n637_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n655_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        mov              rdx, qword ptr [rbp + 2640]
                        mov              rcx, qword ptr [rbp + 2648]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n634_disjunction_af
                        mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n660_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n636_call_builtin_icon_α
.Lx763_0:
                        .quad            .Lx763_0_s
.Lx763_0_s:
                        .string          "oops 1"
#-----------------------------------------------------------------------------------------------------------------------
n657_make_list_α:
                        lea              rdi, [rbp + 2016]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n661_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n658_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn767:              .string          "detab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn767]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n641_disjunction_af
                                                                                        jmp   n662_lit_string_α
n658_call_builtin_icon_β:
                                                                                        jmp   n641_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n659_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n663_binop_test_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n639_call_builtin_icon_α
.Lx769_0:
                        .quad            .Lx769_0_s
.Lx769_0_s:
                        .string          "oops 2"
#-----------------------------------------------------------------------------------------------------------------------
n661_call_proc_staged_α:
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 1984]
                        lea              rcx, [rbp + 2000]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx771_2
.Lx771_2:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n664_lit_integer_α
                                                                                        jmp   n664_lit_integer_α
n661_call_proc_staged_β:
                                                                                        jmp   n664_lit_integer_α
.Lx771_0:
                        .quad            .Lx771_0_s
.Lx771_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n665_binop_test_α
.Lx772_0:
                        .quad            .Lx772_0_s
.Lx772_0_s:
                        .string          "    "
#-----------------------------------------------------------------------------------------------------------------------
n663_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2448]
                        mov              rcx, qword ptr [rbp + 2456]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n637_disjunction_af
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n666_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n667_proc_value_α
.Lx774_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n665_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2232]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n641_disjunction_af
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n668_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n643_call_builtin_icon_α
.Lx776_0:
                        .quad            .Lx776_0_s
.Lx776_0_s:
                        .string          "oops 3"
#-----------------------------------------------------------------------------------------------------------------------
n667_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx778_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n669_make_list_α
.Lx778_0:
                        .quad            .Lx778_0_s
.Lx778_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n648_call_builtin_icon_α
.Lx779_0:
                        .quad            .Lx779_0_s
.Lx779_0_s:
                        .string          "oops 4"
#-----------------------------------------------------------------------------------------------------------------------
n669_make_list_α:
                        lea              rdi, [rbp + 1888]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n670_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n670_call_proc_staged_α:
                        lea              rsi, [rbp + 1840]
                        lea              rdx, [rbp + 1856]
                        lea              rcx, [rbp + 1872]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx783_2
.Lx783_2:
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n671_lit_integer_α
                                                                                        jmp   n671_lit_integer_α
n670_call_proc_staged_β:
                                                                                        jmp   n671_lit_integer_α
.Lx783_0:
                        .quad            .Lx783_0_s
.Lx783_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n672_proc_value_α
.Lx784_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n672_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx786_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n673_make_list_α
.Lx786_0:
                        .quad            .Lx786_0_s
.Lx786_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n673_make_list_α:
                        lea              rdi, [rbp + 1760]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n674_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n674_make_list_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n675_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n675_call_proc_staged_α:
                        lea              rsi, [rbp + 1680]
                        lea              rdx, [rbp + 1696]
                        lea              rcx, [rbp + 1712]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx792_2
.Lx792_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n676_lit_integer_α
                                                                                        jmp   n676_lit_integer_α
n675_call_proc_staged_β:
                                                                                        jmp   n676_lit_integer_α
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n677_proc_value_α
.Lx793_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n677_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx795_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n678_make_list_α
.Lx795_0:
                        .quad            .Lx795_0_s
.Lx795_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n678_make_list_α:
                        lea              rdi, [rbp + 1600]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n679_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n679_make_list_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n680_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        lea              rsi, [rbp + 1520]
                        lea              rdx, [rbp + 1536]
                        lea              rcx, [rbp + 1552]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx801_2
.Lx801_2:
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n681_lit_integer_α
                                                                                        jmp   n681_lit_integer_α
n680_call_proc_staged_β:
                                                                                        jmp   n681_lit_integer_α
.Lx801_0:
                        .quad            .Lx801_0_s
.Lx801_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n682_proc_value_α
.Lx802_0:
                        .quad            101
#-----------------------------------------------------------------------------------------------------------------------
n682_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx804_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n683_var_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n683_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n684_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n684_lit_integer_α:
                        mov              qword ptr [rbp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n686_lit_integer_α
.Lx807_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n687_proc_value_α
.Lx808_0:
                        .quad            101
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n688_lit_charset_α
.Lx809_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n687_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx811_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n689_var_α
.Lx811_0:
                        .quad            .Lx811_0_s
.Lx811_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_charset_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              dword ptr [rbp + 1428], -1
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n690_make_list_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n689_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n691_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n690_make_list_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n693_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n691_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n694_lit_integer_α
.Lx817_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n695_proc_value_α
.Lx818_0:
                        .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n693_call_proc_staged_α:
                        lea              rsi, [rbp + 1264]
                        lea              rdx, [rbp + 1280]
                        lea              rcx, [rbp + 1296]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx820_2
.Lx820_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n685_lit_integer_α
                                                                                        jmp   n685_lit_integer_α
n693_call_proc_staged_β:
                                                                                        jmp   n685_lit_integer_α
.Lx820_0:
                        .quad            .Lx820_0_s
.Lx820_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n696_lit_charset_α
.Lx821_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n695_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx823_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n697_var_α
.Lx823_0:
                        .quad            .Lx823_0_s
.Lx823_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n696_lit_charset_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              dword ptr [rbp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n698_make_list_α
.Lx824_0:
                        .quad            .Lx824_0_s
.Lx824_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n697_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n699_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n698_make_list_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n701_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n702_lit_integer_α
.Lx829_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n703_proc_value_α
.Lx830_0:
                        .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n701_call_proc_staged_α:
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 1024]
                        lea              rcx, [rbp + 1040]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx832_2
.Lx832_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n692_lit_integer_α
                                                                                        jmp   n692_lit_integer_α
n701_call_proc_staged_β:
                                                                                        jmp   n692_lit_integer_α
.Lx832_0:
                        .quad            .Lx832_0_s
.Lx832_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n704_make_list_α
.Lx833_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n703_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx835_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n705_var_α
.Lx835_0:
                        .quad            .Lx835_0_s
.Lx835_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n704_make_list_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n706_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n705_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n707_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx841_2
.Lx841_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n700_lit_integer_α
                                                                                        jmp   n700_lit_integer_α
n706_call_proc_staged_β:
                                                                                        jmp   n700_lit_integer_α
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n709_lit_integer_α
.Lx842_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n710_proc_value_α
.Lx843_0:
                        .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx844_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n711_make_list_α
.Lx844_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n710_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx846_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n712_var_α
.Lx846_0:
                        .quad            .Lx846_0_s
.Lx846_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n711_make_list_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n713_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n712_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n714_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n713_call_proc_staged_α:
                        lea              rsi, [rbp + 560]
                        lea              rdx, [rbp + 576]
                        lea              rcx, [rbp + 592]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx852_2
.Lx852_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n708_lit_integer_α
                                                                                        jmp   n708_lit_integer_α
n713_call_proc_staged_β:
                                                                                        jmp   n708_lit_integer_α
.Lx852_0:
                        .quad            .Lx852_0_s
.Lx852_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n716_lit_integer_α
.Lx853_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n717_proc_value_α
.Lx854_0:
                        .quad            210
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n718_make_list_α
.Lx855_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n717_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx857_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n719_var_α
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n718_make_list_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n720_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n719_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n721_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n720_call_proc_staged_α:
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 352]
                        lea              rcx, [rbp + 368]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx863_2
.Lx863_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n715_lit_integer_α
                                                                                        jmp   n715_lit_integer_α
n720_call_proc_staged_β:
                                                                                        jmp   n715_lit_integer_α
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n723_lit_integer_α
.Lx864_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n722_call_proc_staged_α:
                        call             proc_endetab1_dcα
                                                                                        jmp   .Lx866_2
.Lx866_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n722_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx866_0:
                        .quad            .Lx866_0_s
.Lx866_0_s:
                        .string          "endetab1"
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n724_make_list_α
.Lx867_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n724_make_list_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n725_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n725_call_proc_staged_α:
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 128]
                        lea              rcx, [rbp + 144]
                        call             proc_ferr_dcα
                                                                                        jmp   .Lx871_2
.Lx871_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n722_call_proc_staged_α
                                                                                        jmp   n722_call_proc_staged_α
n725_call_proc_staged_β:
                                                                                        jmp   n722_call_proc_staged_α
.Lx871_0:
                        .quad            .Lx871_0_s
.Lx871_0_s:
                        .string          "ferr"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2896]
                        add              rsp, 2904
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2896]
                        add              rsp, 2904
                        ret
                        .section         .note.GNU-stack,"",@progbits
