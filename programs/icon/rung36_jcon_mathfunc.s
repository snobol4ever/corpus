                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_try_α
proc_try_α:
                        .global          proc_try_α
                        .global          proc_try_β
                        .global          proc_try_γ
                        .global          proc_try_ω
                        sub              rsp, 784
                        mov              [rsp + 760], rcx
                        mov              [rsp + 768], rdx
                        mov              [rsp + 776], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 752
                        mov              edx, 752
                        call             rt_jmp_frame_lexprep2@PLT
proc_try_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx23_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n2_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_try_γ
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn26:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n2_return_α
                                                                                        jmp   n4_lit_string_α
n3_call_builtin_icon_β:
                                                                                        jmp   n2_return_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n5_var_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n6_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        lea              rsi, [rbp + 352]
                        call             proc_r_dcα
                                                                                        jmp   .Lx31_2
.Lx31_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n2_return_α
                                                                                        jmp   n7_disjunction_α
n6_call_proc_staged_β:
                                                                                        jmp   n2_return_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n9_lit_string_α
n7_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx33_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n8_lit_string_α
.Lx33_0:
                        cmp              eax, 1
                                                                                        jne   .Lx33_1
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n8_lit_string_α
.Lx33_1:
                                                                                        jmp   n8_lit_string_α
n7_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n7_disjunction_af
                                                                                        jmp   n7_disjunction_af
n7_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n10_keyword_icon_α
                                                                                        jmp   n2_return_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n12_var_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n13_var_α
n9_lit_string_β:
                                                                                        jmp   n7_disjunction_af
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n10_keyword_icon_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                                                                                        jmp   n7_disjunction_as
n10_keyword_icon_β:
                                                                                        jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n7_disjunction_as
n11_binop_β:
                                                                                        jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n15_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_unop_test_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 99
                                                                                        je    n7_disjunction_af
                        cmp              eax, 0
                                                                                        je    n7_disjunction_af
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n17_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n18_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α:
                        lea              rsi, [rbp + 480]
                        call             proc_r_dcα
                                                                                        jmp   .Lx48_2
.Lx48_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n7_disjunction_af
                                                                                        jmp   n11_binop_α
n17_call_proc_staged_β:
                                                                                        jmp   n7_disjunction_af
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_value_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 664], rax
                        mov              qword ptr [rbp + 672], 0
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        lea              rdx, [rbp + 640]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx50_7
                        lea              rcx, [rip + .Lx50_3]
                        lea              rdx, [rip + .Lx50_4]
                                                                                        jmp   rax
.Lx50_3:
                        mov              qword ptr [rbp + 680], rsp
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx50_5
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx50_2
.Lx50_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx50_2
.Lx50_4:
                        mov              qword ptr [rbp + 680], rsp
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx50_6
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx50_2
.Lx50_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx50_2
.Lx50_7:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        lea              rdx, [rbp + 640]
                        mov              ecx, 2
                        lea              r8, [rbp + 672]
                        call             rt_call_value_gen_h@PLT
.Lx50_2:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n7_disjunction_β
                                                                                        jmp   n19_call_proc_staged_α
n18_call_value_β:
                        mov              rax, qword ptr [rbp + 672]
                        cmp              rax, 1
                                                                                        jne   .Lx50_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 680]
                                                                                        jmp   qword ptr [rsp]
.Lx50_8:
                        lea              rdi, [rbp + 672]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n7_disjunction_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n19_call_proc_staged_α
                                                                                        jmp   n7_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α:
                        lea              rsi, [rbp + 624]
                        call             proc_r_dcα
                                                                                        jmp   .Lx52_2
.Lx52_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n18_call_value_β
                                                                                        jmp   n20_call_builtin_icon_α
n19_call_proc_staged_β:
                                                                                        jmp   n18_call_value_β
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
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
.Lrkfn54:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rbp + 80]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n18_call_value_β
                                                                                        jmp   n2_return_α
n20_call_builtin_icon_β:
                                                                                        jmp   n18_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
proc_try_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_try_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_try_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 760]
                        lea              rsp, [rbp + 784]
                        mov              rbp, [rbp + 776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_try_ω:
                        mov              rax, [rbp + 768]
                        lea              rsp, [rbp + 784]
                        mov              rbp, [rbp + 776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_try_dcα:
                        pop              r11
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 752], r11
                        lea              rax, [rip + .Lx55_2]
                        mov              qword ptr [rbp + 760], rax
                        lea              rax, [rip + .Lx55_3]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 752
                        mov              edx, 752
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_try_α_body
.Lx55_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -784
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx55_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -784
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_r_α
proc_r_α:
                        .global          proc_r_α
                        .global          proc_r_β
                        .global          proc_r_γ
                        .global          proc_r_ω
                        sub              rsp, 560
                        mov              [rsp + 536], rcx
                        mov              [rsp + 544], rdx
                        mov              [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 528
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
proc_r_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n56_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n57_var_α
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
                                                                                        je    n58_var_α
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n59_lit_integer_α
n57_var_β:
                                                                                        jmp   n56_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n60_lit_integer_α
n58_var_β:
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n61_binop_test_α
.Lx90_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n62_op75_α
.Lx91_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx92_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 100
                                                                                        je    .Lx92_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx92_2
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx92_2
.Lx92_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 312]
                        cmp              rax, rcx
                                                                                        jl    n56_disjunction_af
                        mov              rcx, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n63_var_α
.Lx92_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              r8d, 8
                        lea              r9, [rbp + 272]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx92_1
                        cmp              eax, 1
                                                                                        je    n56_disjunction_af
                                                                                        jmp   n63_var_α
.Lx92_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n56_disjunction_af
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx94_1
                        cmp              eax, 6
                                                                                        jne   .Lx94_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx94_0
.Lx94_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n64_binop_α
.Lx94_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 480]
                        lea              rdx, [rbp + 448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n64_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n65_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx97_0
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, 1000
                        imul             rax, rcx
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n66_lit_real_α
.Lx97_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n66_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n67_op75_α
.Lx98_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_real_α:
                        mov              qword ptr [rbp + 496], 7
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n68_op75_α
.Lx99_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n67_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx101_1
                        cmp              eax, 6
                                                                                        jne   .Lx101_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx101_0
.Lx101_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n69_binop_α
.Lx101_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n69_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op75_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 7
                                                                                        je    .Lx103_1
                        cmp              eax, 6
                                                                                        jne   .Lx103_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx103_0
.Lx103_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n70_binop_α
.Lx103_0:
                        lea              rdi, [rbp + 432]
                        lea              rsi, [rbp + 496]
                        lea              rdx, [rbp + 416]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n70_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx104_0
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, 1000
                        imul             rax, rcx
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n71_lit_real_α
.Lx104_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n71_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n72_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_real_α:
                        mov              qword ptr [rbp + 240], 7
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n73_op75_α
.Lx106_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn108:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_r_ω
                                                                                        jmp   n74_lit_real_α
n72_call_builtin_icon_β:
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_op75_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 7
                                                                                        je    .Lx110_1
                        cmp              eax, 6
                                                                                        jne   .Lx110_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx110_0
.Lx110_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n75_binop_α
.Lx110_0:
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n75_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_real_α:
                        mov              qword ptr [rbp + 512], 7
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n76_op75_α
.Lx111_0:
                        .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n77_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op75_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx114_1
                        cmp              eax, 6
                                                                                        jne   .Lx114_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx114_0
.Lx114_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n78_binop_α
.Lx114_0:
                        lea              rdi, [rbp + 352]
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 336]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n78_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn116:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_r_ω
                                                                                        jmp   n79_lit_real_α
n77_call_builtin_icon_β:
                                                                                        jmp   proc_r_ω
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    proc_r_ω
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n80_return_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_real_α:
                        mov              qword ptr [rbp + 256], 7
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n81_op75_α
.Lx118_0:
                        .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n80_return_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_r_γ
#-----------------------------------------------------------------------------------------------------------------------
n81_op75_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx121_1
                        cmp              eax, 6
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx121_0
.Lx121_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n82_binop_α
.Lx121_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 80]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n82_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_div@PLT
                        cmp              eax, 99
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 536]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_r_ω:
                        mov              rax, [rbp + 544]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_r_dcα:
                        pop              r11
                        sub              rsp, 576
                        mov              qword ptr [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 528], r11
                        lea              rax, [rip + .Lx124_2]
                        mov              qword ptr [rbp + 536], rax
                        lea              rax, [rip + .Lx124_3]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 528
                        mov              edx, 528
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_r_α_body
.Lx124_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -560
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx124_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -560
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
                        sub              rsp, 2872
                        mov              rdi, rsp
                        mov              ecx, 2872
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2864], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n125_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n126_disjunction_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "sqrt"
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n128_lit_real_α
n126_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx252_0
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx252_0:
                        cmp              eax, 1
                                                                                        jne   .Lx252_1
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx252_1:
                        cmp              eax, 2
                                                                                        jne   .Lx252_2
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx252_2:
                        cmp              eax, 3
                                                                                        jne   .Lx252_3
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx252_3:
                        cmp              eax, 4
                                                                                        jne   .Lx252_4
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx252_4:
                        cmp              eax, 5
                                                                                        jne   .Lx252_5
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx252_5:
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
                                                                                        je    n129_lit_real_α
                        cmp              eax, 2
                                                                                        je    n130_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n131_lit_real_α
                        cmp              eax, 4
                                                                                        je    n132_lit_string_α
                        cmp              eax, 5
                                                                                        je    n133_lit_real_α
                                                                                        jmp   n134_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 2720]
                        lea              rdx, [rbp + 2736]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx254_1
                        lea              rcx, [rip + .Lx254_3]
                        lea              rdx, [rip + .Lx254_4]
                                                                                        jmp   rax
.Lx254_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx254_2
.Lx254_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx254_2
.Lx254_1:
                        call             rt_faildescr@PLT
.Lx254_2:
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n126_disjunction_β
                                                                                        jmp   n126_disjunction_β
n127_call_proc_staged_β:
                                                                                        jmp   n126_disjunction_β
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_real_α:
                        mov              qword ptr [rbp + 2768], 7
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n126_disjunction_as
n128_lit_real_β:
                                                                                        jmp   n126_disjunction_af
.Lx255_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_real_α:
                        mov              qword ptr [rbp + 2784], 7
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n126_disjunction_as
n129_lit_real_β:
                                                                                        jmp   n126_disjunction_af
.Lx256_0:
                        .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n126_disjunction_as
n130_lit_integer_β:
                                                                                        jmp   n126_disjunction_af
.Lx257_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_real_α:
                        mov              qword ptr [rbp + 2816], 7
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n126_disjunction_as
n131_lit_real_β:
                                                                                        jmp   n126_disjunction_af
.Lx258_0:
                        .quad            4612248968380809216
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n126_disjunction_as
n132_lit_string_β:
                                                                                        jmp   n126_disjunction_af
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "4"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_real_α:
                        mov              qword ptr [rbp + 2848], 7
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n126_disjunction_as
n133_lit_real_β:
                                                                                        jmp   n126_disjunction_af
.Lx260_0:
                        .quad            4643211215818981376
#-----------------------------------------------------------------------------------------------------------------------
n134_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx262_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n135_disjunction_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n135_disjunction_α:
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                        mov              dword ptr [rbp + 2512], 0
                                                                                        jmp   n138_lit_real_α
n135_disjunction_as:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 0
                                                                                        jne   .Lx264_0
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx264_0:
                        cmp              eax, 1
                                                                                        jne   .Lx264_1
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx264_1:
                        cmp              eax, 2
                                                                                        jne   .Lx264_2
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx264_2:
                        cmp              eax, 3
                                                                                        jne   .Lx264_3
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx264_3:
                        cmp              eax, 4
                                                                                        jne   .Lx264_4
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx264_4:
                        cmp              eax, 5
                                                                                        jne   .Lx264_5
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx264_5:
                        cmp              eax, 6
                                                                                        jne   .Lx264_6
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx264_6:
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
                                                                                        je    n139_lit_real_α
                        cmp              eax, 2
                                                                                        je    n140_lit_real_α
                        cmp              eax, 3
                                                                                        je    n141_keyword_icon_α
                        cmp              eax, 4
                                                                                        je    n142_lit_string_α
                        cmp              eax, 5
                                                                                        je    n143_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n144_lit_integer_α
                                                                                        jmp   n137_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 2480]
                        lea              rdx, [rbp + 2496]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx266_1
                        lea              rcx, [rip + .Lx266_3]
                        lea              rdx, [rip + .Lx266_4]
                                                                                        jmp   rax
.Lx266_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx266_2
.Lx266_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx266_2
.Lx266_1:
                        call             rt_faildescr@PLT
.Lx266_2:
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n135_disjunction_β
                                                                                        jmp   n135_disjunction_β
n136_call_proc_staged_β:
                                                                                        jmp   n135_disjunction_β
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n137_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx268_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n145_disjunction_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_real_α:
                        mov              qword ptr [rbp + 2528], 7
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n135_disjunction_as
n138_lit_real_β:
                                                                                        jmp   n135_disjunction_af
.Lx269_0:
                        .quad            4591870180066957722
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_real_α:
                        mov              qword ptr [rbp + 2544], 7
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n135_disjunction_as
n139_lit_real_β:
                                                                                        jmp   n135_disjunction_af
.Lx270_0:
                        .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_real_α:
                        mov              qword ptr [rbp + 2560], 7
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n135_disjunction_as
n140_lit_real_β:
                                                                                        jmp   n135_disjunction_af
.Lx271_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n141_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx272_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n135_disjunction_af
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n135_disjunction_as
n141_keyword_icon_β:
                                                                                        jmp   n135_disjunction_af
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n135_disjunction_as
n142_lit_string_β:
                                                                                        jmp   n135_disjunction_af
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "10"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 2624], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n135_disjunction_as
n143_lit_integer_β:
                                                                                        jmp   n135_disjunction_af
.Lx274_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 6
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n135_disjunction_as
n144_lit_integer_β:
                                                                                        jmp   n135_disjunction_af
.Lx275_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n145_disjunction_α:
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0
                                                                                        jmp   n148_lit_real_α
n145_disjunction_as:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        jne   .Lx277_0
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n146_lit_integer_α
.Lx277_0:
                        cmp              eax, 1
                                                                                        jne   .Lx277_1
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n146_lit_integer_α
.Lx277_1:
                        cmp              eax, 2
                                                                                        jne   .Lx277_2
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n146_lit_integer_α
.Lx277_2:
                        cmp              eax, 3
                                                                                        jne   .Lx277_3
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n146_lit_integer_α
.Lx277_3:
                        cmp              eax, 4
                                                                                        jne   .Lx277_4
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n146_lit_integer_α
.Lx277_4:
                        cmp              eax, 5
                                                                                        jne   .Lx277_5
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n146_lit_integer_α
.Lx277_5:
                        cmp              eax, 6
                                                                                        jne   .Lx277_6
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n146_lit_integer_α
.Lx277_6:
                                                                                        jmp   n146_lit_integer_α
n145_disjunction_β:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        je    n145_disjunction_af
                        cmp              eax, 1
                                                                                        je    n145_disjunction_af
                        cmp              eax, 2
                                                                                        je    n145_disjunction_af
                        cmp              eax, 3
                                                                                        je    n145_disjunction_af
                        cmp              eax, 4
                                                                                        je    n145_disjunction_af
                        cmp              eax, 5
                                                                                        je    n145_disjunction_af
                                                                                        jmp   n145_disjunction_af
n145_disjunction_af:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 1
                                                                                        je    n149_lit_real_α
                        cmp              eax, 2
                                                                                        je    n150_lit_real_α
                        cmp              eax, 3
                                                                                        je    n151_keyword_icon_α
                        cmp              eax, 4
                                                                                        je    n152_lit_string_α
                        cmp              eax, 5
                                                                                        je    n153_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n154_lit_integer_α
                                                                                        jmp   n147_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 2400], 6
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n155_call_proc_staged_α
.Lx278_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n147_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx280_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n156_disjunction_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_real_α:
                        mov              qword ptr [rbp + 2272], 7
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n145_disjunction_as
n148_lit_real_β:
                                                                                        jmp   n145_disjunction_af
.Lx281_0:
                        .quad            4591870180066957722
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_real_α:
                        mov              qword ptr [rbp + 2288], 7
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n145_disjunction_as
n149_lit_real_β:
                                                                                        jmp   n145_disjunction_af
.Lx282_0:
                        .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_real_α:
                        mov              qword ptr [rbp + 2304], 7
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n145_disjunction_as
n150_lit_real_β:
                                                                                        jmp   n145_disjunction_af
.Lx283_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n151_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n145_disjunction_af
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n145_disjunction_as
n151_keyword_icon_β:
                                                                                        jmp   n145_disjunction_af
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n145_disjunction_as
n152_lit_string_β:
                                                                                        jmp   n145_disjunction_af
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "10"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 2368], 6
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n145_disjunction_as
n153_lit_integer_β:
                                                                                        jmp   n145_disjunction_af
.Lx286_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n145_disjunction_as
n154_lit_integer_β:
                                                                                        jmp   n145_disjunction_af
.Lx287_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rbp + 2224]
                        lea              rdx, [rbp + 2240]
                        lea              rcx, [rbp + 2400]
                        call             proc_try_dcα
                                                                                        jmp   .Lx289_2
.Lx289_2:
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n145_disjunction_β
                                                                                        jmp   n145_disjunction_β
n155_call_proc_staged_β:
                                                                                        jmp   n145_disjunction_β
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n156_disjunction_α:
                        mov              qword ptr [rbp + 2016], 0
                        mov              qword ptr [rbp + 2024], 0
                        mov              dword ptr [rbp + 2032], 0
                                                                                        jmp   n159_lit_integer_α
n156_disjunction_as:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        jne   .Lx291_0
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n157_call_proc_staged_α
.Lx291_0:
                        cmp              eax, 1
                                                                                        jne   .Lx291_1
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n157_call_proc_staged_α
.Lx291_1:
                        cmp              eax, 2
                                                                                        jne   .Lx291_2
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n157_call_proc_staged_α
.Lx291_2:
                        cmp              eax, 3
                                                                                        jne   .Lx291_3
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n157_call_proc_staged_α
.Lx291_3:
                        cmp              eax, 4
                                                                                        jne   .Lx291_4
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n157_call_proc_staged_α
.Lx291_4:
                        cmp              eax, 5
                                                                                        jne   .Lx291_5
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n157_call_proc_staged_α
.Lx291_5:
                                                                                        jmp   n157_call_proc_staged_α
n156_disjunction_β:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        je    n156_disjunction_af
                        cmp              eax, 1
                                                                                        je    n156_disjunction_af
                        cmp              eax, 2
                                                                                        je    n156_disjunction_af
                        cmp              eax, 3
                                                                                        je    n156_disjunction_af
                        cmp              eax, 4
                                                                                        je    n156_disjunction_af
                                                                                        jmp   n156_disjunction_af
n156_disjunction_af:
                        add              dword ptr [rbp + 2032], 1
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 1
                                                                                        je    n160_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n161_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n162_lit_real_α
                        cmp              eax, 4
                                                                                        je    n163_lit_string_α
                        cmp              eax, 5
                                                                                        je    n164_lit_charset_α
                                                                                        jmp   n158_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 2000]
                        lea              rdx, [rbp + 2016]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx293_1
                        lea              rcx, [rip + .Lx293_3]
                        lea              rdx, [rip + .Lx293_4]
                                                                                        jmp   rax
.Lx293_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx293_2
.Lx293_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx293_2
.Lx293_1:
                        call             rt_faildescr@PLT
.Lx293_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n156_disjunction_β
                                                                                        jmp   n156_disjunction_β
n157_call_proc_staged_β:
                                                                                        jmp   n156_disjunction_β
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn295:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n165_proc_value_α
                                                                                        jmp   n165_proc_value_α
n158_call_builtin_icon_β:
                                                                                        jmp   n165_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n156_disjunction_as
n159_lit_integer_β:
                                                                                        jmp   n156_disjunction_af
.Lx296_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n156_disjunction_as
n160_lit_integer_β:
                                                                                        jmp   n156_disjunction_af
.Lx297_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n156_disjunction_as
n161_lit_integer_β:
                                                                                        jmp   n156_disjunction_af
.Lx298_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_real_α:
                        mov              qword ptr [rbp + 2096], 7
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n156_disjunction_as
n162_lit_real_β:
                                                                                        jmp   n156_disjunction_af
.Lx299_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n156_disjunction_as
n163_lit_string_β:
                                                                                        jmp   n156_disjunction_af
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_charset_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              dword ptr [rbp + 2132], -1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n156_disjunction_as
n164_lit_charset_β:
                                                                                        jmp   n156_disjunction_af
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n165_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx303_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n166_disjunction_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "dtor"
#-----------------------------------------------------------------------------------------------------------------------
n166_disjunction_α:
                        mov              qword ptr [rbp + 1760], 0
                        mov              qword ptr [rbp + 1768], 0
                        mov              dword ptr [rbp + 1776], 0
                                                                                        jmp   n169_lit_integer_α
n166_disjunction_as:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 0
                                                                                        jne   .Lx305_0
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx305_0:
                        cmp              eax, 1
                                                                                        jne   .Lx305_1
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx305_1:
                        cmp              eax, 2
                                                                                        jne   .Lx305_2
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx305_2:
                        cmp              eax, 3
                                                                                        jne   .Lx305_3
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx305_3:
                        cmp              eax, 4
                                                                                        jne   .Lx305_4
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx305_4:
                        cmp              eax, 5
                                                                                        jne   .Lx305_5
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx305_5:
                        cmp              eax, 6
                                                                                        jne   .Lx305_6
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx305_6:
                                                                                        jmp   n167_call_proc_staged_α
n166_disjunction_β:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 0
                                                                                        je    n166_disjunction_af
                        cmp              eax, 1
                                                                                        je    n166_disjunction_af
                        cmp              eax, 2
                                                                                        je    n166_disjunction_af
                        cmp              eax, 3
                                                                                        je    n166_disjunction_af
                        cmp              eax, 4
                                                                                        je    n166_disjunction_af
                        cmp              eax, 5
                                                                                        je    n166_disjunction_af
                                                                                        jmp   n166_disjunction_af
n166_disjunction_af:
                        add              dword ptr [rbp + 1776], 1
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 1
                                                                                        je    n170_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n171_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n172_lit_charset_α
                        cmp              eax, 4
                                                                                        je    n173_lit_string_α
                        cmp              eax, 5
                                                                                        je    n174_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n175_lit_integer_α
                                                                                        jmp   n168_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 1744]
                        lea              rdx, [rbp + 1760]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx307_1
                        lea              rcx, [rip + .Lx307_3]
                        lea              rdx, [rip + .Lx307_4]
                                                                                        jmp   rax
.Lx307_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx307_2
.Lx307_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx307_2
.Lx307_1:
                        call             rt_faildescr@PLT
.Lx307_2:
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n166_disjunction_β
                                                                                        jmp   n166_disjunction_β
n167_call_proc_staged_β:
                                                                                        jmp   n166_disjunction_β
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n168_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx309_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n176_disjunction_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "rtod"
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 6
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n166_disjunction_as
n169_lit_integer_β:
                                                                                        jmp   n166_disjunction_af
.Lx310_0:
                        .quad            18446744073709550616
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 6
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n166_disjunction_as
n170_lit_integer_β:
                                                                                        jmp   n166_disjunction_af
.Lx311_0:
                        .quad            18446744073709551256
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 6
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n166_disjunction_as
n171_lit_integer_β:
                                                                                        jmp   n166_disjunction_af
.Lx312_0:
                        .quad            18446744073709551526
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_charset_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              dword ptr [rbp + 1844], -1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n166_disjunction_as
n172_lit_charset_β:
                                                                                        jmp   n166_disjunction_af
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n166_disjunction_as
n173_lit_string_β:
                                                                                        jmp   n166_disjunction_af
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "45"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        mov              qword ptr [rbp + 1872], 6
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n166_disjunction_as
n174_lit_integer_β:
                                                                                        jmp   n166_disjunction_af
.Lx315_0:
                        .quad            360
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 6
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n166_disjunction_as
n175_lit_integer_β:
                                                                                        jmp   n166_disjunction_af
.Lx316_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n176_disjunction_α:
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              dword ptr [rbp + 1168], 0
                                                                                        jmp   n179_lit_integer_α
n176_disjunction_as:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 0
                                                                                        jne   .Lx318_0
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx318_0:
                        cmp              eax, 1
                                                                                        jne   .Lx318_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx318_1:
                        cmp              eax, 2
                                                                                        jne   .Lx318_2
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx318_2:
                        cmp              eax, 3
                                                                                        jne   .Lx318_3
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx318_3:
                        cmp              eax, 4
                                                                                        jne   .Lx318_4
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx318_4:
                        cmp              eax, 5
                                                                                        jne   .Lx318_5
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx318_5:
                        cmp              eax, 6
                                                                                        jne   .Lx318_6
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx318_6:
                        cmp              eax, 7
                                                                                        jne   .Lx318_7
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx318_7:
                                                                                        jmp   n177_call_proc_staged_α
n176_disjunction_β:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 0
                                                                                        je    n176_disjunction_af
                        cmp              eax, 1
                                                                                        je    n176_disjunction_af
                        cmp              eax, 2
                                                                                        je    n176_disjunction_af
                        cmp              eax, 3
                                                                                        je    n176_disjunction_af
                        cmp              eax, 4
                                                                                        je    n176_disjunction_af
                        cmp              eax, 5
                                                                                        je    n176_disjunction_af
                        cmp              eax, 6
                                                                                        je    n176_disjunction_af
                                                                                        jmp   n176_disjunction_af
n176_disjunction_af:
                        add              dword ptr [rbp + 1168], 1
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 1
                                                                                        je    n180_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n181_keyword_icon_α
                        cmp              eax, 3
                                                                                        je    n182_lit_charset_α
                        cmp              eax, 4
                                                                                        je    n183_keyword_icon_α
                        cmp              eax, 5
                                                                                        je    n184_keyword_icon_α
                        cmp              eax, 6
                                                                                        je    n185_lit_string_α
                        cmp              eax, 7
                                                                                        je    n186_lit_integer_α
                                                                                        jmp   n178_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 1136]
                        lea              rdx, [rbp + 1152]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx320_1
                        lea              rcx, [rip + .Lx320_3]
                        lea              rdx, [rip + .Lx320_4]
                                                                                        jmp   rax
.Lx320_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx320_2
.Lx320_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx320_2
.Lx320_1:
                        call             rt_faildescr@PLT
.Lx320_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n176_disjunction_β
                                                                                        jmp   n176_disjunction_β
n177_call_proc_staged_β:
                                                                                        jmp   n176_disjunction_β
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n178_disjunction_α:
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0
                                                                                        jmp   n195_proc_value_α
n178_disjunction_as:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        jne   .Lx322_0
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n193_disjunction_α
.Lx322_0:
                        cmp              eax, 1
                                                                                        jne   .Lx322_1
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n193_disjunction_α
.Lx322_1:
                        cmp              eax, 2
                                                                                        jne   .Lx322_2
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n193_disjunction_α
.Lx322_2:
                                                                                        jmp   n193_disjunction_α
n178_disjunction_β:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        je    n178_disjunction_af
                        cmp              eax, 1
                                                                                        je    n178_disjunction_af
                                                                                        jmp   n178_disjunction_af
n178_disjunction_af:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 1
                                                                                        je    n196_proc_value_α
                        cmp              eax, 2
                                                                                        je    n197_proc_value_α
                                                                                        jmp   n194_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n198_keyword_icon_α
n179_lit_integer_β:
                                                                                        jmp   n176_disjunction_af
.Lx323_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n199_keyword_icon_α
n180_lit_integer_β:
                                                                                        jmp   n176_disjunction_af
.Lx324_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n181_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx325_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n200_op75_α
n181_keyword_icon_β:
                                                                                        jmp   n176_disjunction_af
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_charset_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              dword ptr [rbp + 1412], -1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n176_disjunction_as
n182_lit_charset_β:
                                                                                        jmp   n176_disjunction_af
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n183_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx327_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n201_lit_integer_α
n183_keyword_icon_β:
                                                                                        jmp   n176_disjunction_af
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n184_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx328_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n202_lit_integer_α
n184_keyword_icon_β:
                                                                                        jmp   n176_disjunction_af
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n176_disjunction_as
n185_lit_string_β:
                                                                                        jmp   n176_disjunction_af
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "3.1415936535"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        mov              qword ptr [rbp + 1632], 6
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n203_keyword_icon_α
n186_lit_integer_β:
                                                                                        jmp   n176_disjunction_af
.Lx330_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n187_binop_α:
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 6
                                                                                        jne   .Lx331_0
                        mov              rax, -3
                        mov              rcx, qword ptr [rbp + 1208]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1184], 6
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n176_disjunction_as
.Lx331_0:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n176_disjunction_as
n187_binop_β:
                                                                                        jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n188_binop_α:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 6
                                                                                        jne   .Lx332_0
                        mov              rax, -2
                        mov              rcx, qword ptr [rbp + 1288]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1264], 6
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n176_disjunction_as
.Lx332_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n176_disjunction_as
n188_binop_β:
                                                                                        jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n189_unop_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n176_disjunction_as
n189_unop_β:
                                                                                        jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n176_disjunction_as
n190_binop_β:
                                                                                        jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n191_binop_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n176_disjunction_as
n191_binop_β:
                                                                                        jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n192_binop_α:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 6
                                                                                        jne   .Lx336_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 1624]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1600], 6
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n176_disjunction_as
.Lx336_0:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n176_disjunction_as
n192_binop_β:
                                                                                        jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n193_disjunction_α:
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0
                                                                                        jmp   n205_keyword_icon_α
n193_disjunction_as:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0
                                                                                        jne   .Lx338_0
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n204_call_proc_staged_α
.Lx338_0:
                        cmp              eax, 1
                                                                                        jne   .Lx338_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n204_call_proc_staged_α
.Lx338_1:
                        cmp              eax, 2
                                                                                        jne   .Lx338_2
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n204_call_proc_staged_α
.Lx338_2:
                                                                                        jmp   n204_call_proc_staged_α
n193_disjunction_β:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0
                                                                                        je    n193_disjunction_af
                        cmp              eax, 1
                                                                                        je    n193_disjunction_af
                                                                                        jmp   n193_disjunction_af
n193_disjunction_af:
                        add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1
                                                                                        je    n206_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n207_lit_string_α
                                                                                        jmp   n178_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n194_disjunction_α:
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              dword ptr [rbp + 592], 0
                                                                                        jmp   n211_proc_value_α
n194_disjunction_as:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        jne   .Lx340_0
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n209_disjunction_α
.Lx340_0:
                        cmp              eax, 1
                                                                                        jne   .Lx340_1
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n209_disjunction_α
.Lx340_1:
                                                                                        jmp   n209_disjunction_α
n194_disjunction_β:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        je    n194_disjunction_af
                                                                                        jmp   n194_disjunction_af
n194_disjunction_af:
                        add              dword ptr [rbp + 592], 1
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 1
                                                                                        je    n212_proc_value_α
                                                                                        jmp   n210_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n195_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx342_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n178_disjunction_as
n195_proc_value_β:
                                                                                        jmp   n178_disjunction_af
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "sin"
#-----------------------------------------------------------------------------------------------------------------------
n196_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx344_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n178_disjunction_as
n196_proc_value_β:
                                                                                        jmp   n178_disjunction_af
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "cos"
#-----------------------------------------------------------------------------------------------------------------------
n197_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx346_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n178_disjunction_as
n197_proc_value_β:
                                                                                        jmp   n178_disjunction_af
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "tan"
#-----------------------------------------------------------------------------------------------------------------------
n198_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx347_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n213_op75_α
n198_keyword_icon_β:
                                                                                        jmp   n176_disjunction_af
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n199_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n214_op75_α
n199_keyword_icon_β:
                                                                                        jmp   n176_disjunction_af
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n200_op75_α:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 7
                                                                                        je    .Lx350_1
                        cmp              eax, 6
                                                                                        jne   .Lx350_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx350_0
.Lx350_1:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n189_unop_α
.Lx350_0:
                        lea              rdi, [rbp + 1376]
                        lea              rsi, [rbp + 1376]
                        lea              rdx, [rbp + 1360]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n189_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n215_op75_α
.Lx351_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 6
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n216_op75_α
.Lx352_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n203_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx353_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n176_disjunction_af
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n217_op75_α
n203_keyword_icon_β:
                                                                                        jmp   n176_disjunction_af
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n204_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 816]
                        lea              rdx, [rbp + 896]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx355_1
                        lea              rcx, [rip + .Lx355_3]
                        lea              rdx, [rip + .Lx355_4]
                                                                                        jmp   rax
.Lx355_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx355_2
.Lx355_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx355_2
.Lx355_1:
                        call             rt_faildescr@PLT
.Lx355_2:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n193_disjunction_β
                                                                                        jmp   n193_disjunction_β
n204_call_proc_staged_β:
                                                                                        jmp   n193_disjunction_β
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n205_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx356_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n193_disjunction_af
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n218_op75_α
n205_keyword_icon_β:
                                                                                        jmp   n193_disjunction_af
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_charset_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              dword ptr [rbp + 1044], -1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n193_disjunction_as
n206_lit_charset_β:
                                                                                        jmp   n193_disjunction_af
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n193_disjunction_as
n207_lit_string_β:
                                                                                        jmp   n193_disjunction_af
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "3.1415926535"
#-----------------------------------------------------------------------------------------------------------------------
n208_binop_α:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n193_disjunction_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n193_disjunction_as
n208_binop_β:
                                                                                        jmp   n193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n209_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n220_lit_charset_α
n209_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx361_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n219_call_proc_staged_α
.Lx361_0:
                        cmp              eax, 1
                                                                                        jne   .Lx361_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n219_call_proc_staged_α
.Lx361_1:
                        cmp              eax, 2
                                                                                        jne   .Lx361_2
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n219_call_proc_staged_α
.Lx361_2:
                        cmp              eax, 3
                                                                                        jne   .Lx361_3
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n219_call_proc_staged_α
.Lx361_3:
                        cmp              eax, 4
                                                                                        jne   .Lx361_4
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n219_call_proc_staged_α
.Lx361_4:
                                                                                        jmp   n219_call_proc_staged_α
n209_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    n209_disjunction_af
                        cmp              eax, 1
                                                                                        je    n209_disjunction_af
                        cmp              eax, 2
                                                                                        je    n209_disjunction_af
                        cmp              eax, 3
                                                                                        je    n209_disjunction_af
                                                                                        jmp   n209_disjunction_af
n209_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    n221_lit_real_α
                        cmp              eax, 2
                                                                                        je    n222_lit_string_α
                        cmp              eax, 3
                                                                                        je    n223_lit_real_α
                        cmp              eax, 4
                                                                                        je    n224_lit_real_α
                                                                                        jmp   n194_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n210_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx363_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n225_disjunction_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "atan"
#-----------------------------------------------------------------------------------------------------------------------
n211_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx365_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n194_disjunction_as
n211_proc_value_β:
                                                                                        jmp   n194_disjunction_af
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "asin"
#-----------------------------------------------------------------------------------------------------------------------
n212_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx367_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n194_disjunction_as
n212_proc_value_β:
                                                                                        jmp   n194_disjunction_af
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "acos"
#-----------------------------------------------------------------------------------------------------------------------
n213_op75_α:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 7
                                                                                        je    .Lx369_1
                        cmp              eax, 6
                                                                                        jne   .Lx369_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 6
                                                                                        jne   .Lx369_0
.Lx369_1:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n187_binop_α
.Lx369_0:
                        lea              rdi, [rbp + 1232]
                        lea              rsi, [rbp + 1216]
                        lea              rdx, [rbp + 1200]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n187_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n214_op75_α:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 7
                                                                                        je    .Lx371_1
                        cmp              eax, 6
                                                                                        jne   .Lx371_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx371_0
.Lx371_1:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n188_binop_α
.Lx371_0:
                        lea              rdi, [rbp + 1312]
                        lea              rsi, [rbp + 1296]
                        lea              rdx, [rbp + 1280]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n188_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n215_op75_α:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 7
                                                                                        je    .Lx373_1
                        cmp              eax, 6
                                                                                        jne   .Lx373_0
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 6
                                                                                        jne   .Lx373_0
.Lx373_1:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n190_binop_α
.Lx373_0:
                        lea              rdi, [rbp + 1456]
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1440]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n190_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n216_op75_α:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 7
                                                                                        je    .Lx375_1
                        cmp              eax, 6
                                                                                        jne   .Lx375_0
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 6
                                                                                        jne   .Lx375_0
.Lx375_1:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n191_binop_α
.Lx375_0:
                        lea              rdi, [rbp + 1536]
                        lea              rsi, [rbp + 1568]
                        lea              rdx, [rbp + 1520]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n191_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n217_op75_α:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 7
                                                                                        je    .Lx377_1
                        cmp              eax, 6
                                                                                        jne   .Lx377_0
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 6
                                                                                        jne   .Lx377_0
.Lx377_1:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n192_binop_α
.Lx377_0:
                        lea              rdi, [rbp + 1648]
                        lea              rsi, [rbp + 1632]
                        lea              rdx, [rbp + 1616]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n192_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n218_op75_α:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 7
                                                                                        je    .Lx379_1
                        cmp              eax, 6
                                                                                        jne   .Lx379_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 6
                                                                                        jne   .Lx379_0
.Lx379_1:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n226_unop_α
.Lx379_0:
                        lea              rdi, [rbp + 992]
                        lea              rsi, [rbp + 992]
                        lea              rdx, [rbp + 976]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n226_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 576]
                        lea              rdx, [rbp + 640]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx381_1
                        lea              rcx, [rip + .Lx381_3]
                        lea              rdx, [rip + .Lx381_4]
                                                                                        jmp   rax
.Lx381_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx381_2
.Lx381_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx381_2
.Lx381_1:
                        call             rt_faildescr@PLT
.Lx381_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n209_disjunction_β
                                                                                        jmp   n209_disjunction_β
n219_call_proc_staged_β:
                                                                                        jmp   n209_disjunction_β
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_charset_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              dword ptr [rbp + 676], -1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n209_disjunction_as
n220_lit_charset_β:
                                                                                        jmp   n209_disjunction_af
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "-1"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_real_α:
                        mov              qword ptr [rbp + 688], 7
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n209_disjunction_as
n221_lit_real_β:
                                                                                        jmp   n209_disjunction_af
.Lx383_0:
                        .quad            13826050856027422720
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n209_disjunction_as
n222_lit_string_β:
                                                                                        jmp   n209_disjunction_af
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_real_α:
                        mov              qword ptr [rbp + 720], 7
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n209_disjunction_as
n223_lit_real_β:
                                                                                        jmp   n209_disjunction_af
.Lx385_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_real_α:
                        mov              qword ptr [rbp + 736], 7
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n209_disjunction_as
n224_lit_real_β:
                                                                                        jmp   n209_disjunction_af
.Lx386_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n225_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n229_lit_string_α
n225_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx388_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_0:
                        cmp              eax, 1
                                                                                        jne   .Lx388_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_1:
                        cmp              eax, 2
                                                                                        jne   .Lx388_2
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_2:
                        cmp              eax, 3
                                                                                        jne   .Lx388_3
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_3:
                        cmp              eax, 4
                                                                                        jne   .Lx388_4
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_4:
                        cmp              eax, 5
                                                                                        jne   .Lx388_5
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_5:
                        cmp              eax, 6
                                                                                        jne   .Lx388_6
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_6:
                        cmp              eax, 7
                                                                                        jne   .Lx388_7
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_7:
                        cmp              eax, 8
                                                                                        jne   .Lx388_8
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n227_call_proc_staged_α
.Lx388_8:
                                                                                        jmp   n227_call_proc_staged_α
n225_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n225_disjunction_af
                        cmp              eax, 1
                                                                                        je    n225_disjunction_af
                        cmp              eax, 2
                                                                                        je    n225_disjunction_af
                        cmp              eax, 3
                                                                                        je    n225_disjunction_af
                        cmp              eax, 4
                                                                                        je    n225_disjunction_af
                        cmp              eax, 5
                                                                                        je    n225_disjunction_af
                        cmp              eax, 6
                                                                                        je    n225_disjunction_af
                        cmp              eax, 7
                                                                                        je    n225_disjunction_af
                                                                                        jmp   n225_disjunction_af
n225_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n230_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n231_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n232_lit_real_α
                        cmp              eax, 4
                                                                                        je    n233_lit_charset_α
                        cmp              eax, 5
                                                                                        je    n234_lit_real_α
                        cmp              eax, 6
                                                                                        je    n235_lit_integer_α
                        cmp              eax, 7
                                                                                        je    n236_lit_integer_α
                        cmp              eax, 8
                                                                                        je    n237_lit_integer_α
                                                                                        jmp   n228_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n226_unop_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n238_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 336]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx391_1
                        lea              rcx, [rip + .Lx391_3]
                        lea              rdx, [rip + .Lx391_4]
                                                                                        jmp   rax
.Lx391_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx391_2
.Lx391_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx391_2
.Lx391_1:
                        call             rt_faildescr@PLT
.Lx391_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n225_disjunction_β
                                                                                        jmp   n225_disjunction_β
n227_call_proc_staged_β:
                                                                                        jmp   n225_disjunction_β
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n228_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx393_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n239_disjunction_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "atan"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n225_disjunction_as
n229_lit_string_β:
                                                                                        jmp   n225_disjunction_af
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "-1000"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n225_disjunction_as
n230_lit_integer_β:
                                                                                        jmp   n225_disjunction_af
.Lx395_0:
                        .quad            18446744073709551569
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n225_disjunction_as
n231_lit_integer_β:
                                                                                        jmp   n225_disjunction_af
.Lx396_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_real_α:
                        mov              qword ptr [rbp + 416], 7
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n225_disjunction_as
n232_lit_real_β:
                                                                                        jmp   n225_disjunction_af
.Lx397_0:
                        .quad            13826050856027422720
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_charset_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              dword ptr [rbp + 436], -1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n225_disjunction_as
n233_lit_charset_β:
                                                                                        jmp   n225_disjunction_af
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_real_α:
                        mov              qword ptr [rbp + 448], 7
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n225_disjunction_as
n234_lit_real_β:
                                                                                        jmp   n225_disjunction_af
.Lx399_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n225_disjunction_as
n235_lit_integer_β:
                                                                                        jmp   n225_disjunction_af
.Lx400_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n225_disjunction_as
n236_lit_integer_β:
                                                                                        jmp   n225_disjunction_af
.Lx401_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n225_disjunction_as
n237_lit_integer_β:
                                                                                        jmp   n225_disjunction_af
.Lx402_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n240_op75_α
.Lx403_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n239_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n242_lit_integer_α
n239_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx405_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n241_disjunction_α
.Lx405_0:
                        cmp              eax, 1
                                                                                        jne   .Lx405_1
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n241_disjunction_α
.Lx405_1:
                        cmp              eax, 2
                                                                                        jne   .Lx405_2
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n241_disjunction_α
.Lx405_2:
                                                                                        jmp   n241_disjunction_α
n239_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n239_disjunction_af
                        cmp              eax, 1
                                                                                        je    n239_disjunction_af
                                                                                        jmp   n239_disjunction_af
n239_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n243_lit_charset_α
                        cmp              eax, 2
                                                                                        je    n244_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n240_op75_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 7
                                                                                        je    .Lx407_1
                        cmp              eax, 6
                                                                                        jne   .Lx407_0
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx407_0
.Lx407_1:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n208_binop_α
.Lx407_0:
                        lea              rdi, [rbp + 960]
                        lea              rsi, [rbp + 1024]
                        lea              rdx, [rbp + 944]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n208_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n241_disjunction_α:
                        mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0
                                                                                        jmp   n246_lit_charset_α
n241_disjunction_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0
                                                                                        jne   .Lx409_0
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n245_call_proc_staged_α
.Lx409_0:
                        cmp              eax, 1
                                                                                        jne   .Lx409_1
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n245_call_proc_staged_α
.Lx409_1:
                        cmp              eax, 2
                                                                                        jne   .Lx409_2
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n245_call_proc_staged_α
.Lx409_2:
                                                                                        jmp   n245_call_proc_staged_α
n241_disjunction_β:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0
                                                                                        je    n241_disjunction_af
                        cmp              eax, 1
                                                                                        je    n241_disjunction_af
                                                                                        jmp   n241_disjunction_af
n241_disjunction_af:
                        add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 1
                                                                                        je    n247_lit_string_α
                        cmp              eax, 2
                                                                                        je    n248_lit_integer_α
                                                                                        jmp   n239_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n239_disjunction_as
n242_lit_integer_β:
                                                                                        jmp   n239_disjunction_af
.Lx410_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_charset_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              dword ptr [rbp + 148], -1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n239_disjunction_as
n243_lit_charset_β:
                                                                                        jmp   n239_disjunction_af
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n239_disjunction_as
n244_lit_string_β:
                                                                                        jmp   n239_disjunction_af
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n245_call_proc_staged_α:
                        lea              rsi, [rbp + 80]
                        lea              rdx, [rbp + 96]
                        lea              rcx, [rbp + 176]
                        call             proc_try_dcα
                                                                                        jmp   .Lx414_2
.Lx414_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n241_disjunction_β
                                                                                        jmp   n241_disjunction_β
n245_call_proc_staged_β:
                                                                                        jmp   n241_disjunction_β
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_charset_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              dword ptr [rbp + 212], -1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n241_disjunction_as
n246_lit_charset_β:
                                                                                        jmp   n241_disjunction_af
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "-1"
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n241_disjunction_as
n247_lit_string_β:
                                                                                        jmp   n241_disjunction_af
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n241_disjunction_as
n248_lit_integer_β:
                                                                                        jmp   n241_disjunction_af
.Lx417_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2864]
                        add              rsp, 2872
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2864]
                        add              rsp, 2872
                        ret
                        .section         .note.GNU-stack,"",@progbits
