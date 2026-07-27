                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_event_α
proc_event_α:
                        .global          proc_event_α
                        .global          proc_event_β
                        .global          proc_event_γ
                        .global          proc_event_ω
                        sub              rsp, 896
                        mov              [rsp + 872], rcx
                        mov              [rsp + 880], rdx
                        mov              [rsp + 888], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 832
                        mov              edx, 864
                        call             rt_jmp_frame_lexprep2@PLT
proc_event_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
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
                        cmp              eax, 99
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n4_binop_test_α
n2_call_proc_staged_β:
                                                                                        jmp   n3_lit_string_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "geddate"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n5_var_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_test_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n3_lit_string_α
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n9_proc_gen_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "PLAC"
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n11_var_α
n8_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx43_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n10_return_α
.Lx43_0:
                        cmp              eax, 1
                                                                                        jne   .Lx43_1
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n10_return_α
.Lx43_1:
                                                                                        jmp   n10_return_α
n8_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    n10_return_α
                                                                                        jmp   n13_disjunction_β
n8_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n12_lit_string_α
                                                                                        jmp   n10_return_α
#-----------------------------------------------------------------------------------------------------------------------
n9_proc_gen_α:
                        mov              qword ptr [rbp + 672], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_20
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx45_21
.Lx45_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        call             rt_arg_stage@PLT
.Lx45_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_22
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx45_23
.Lx45_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_arg_stage@PLT
.Lx45_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx45_1
                        lea              rcx, [rip + .Lx45_3]
                        lea              rdx, [rip + .Lx45_4]
                                                                                        jmp   rax
.Lx45_3:
                        mov              qword ptr [rbp + 680], rsp
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx45_5
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx45_2
.Lx45_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx45_2
.Lx45_4:
                        mov              rax, qword ptr [rbp + 672]
                        test             rax, rax
                                                                                        jne   .Lx45_6
                        mov              qword ptr [rbp + 672], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx45_2
.Lx45_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx45_2
.Lx45_1:
                        call             rt_faildescr@PLT
.Lx45_2:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n8_disjunction_α
                                                                                        jmp   n16_binop_test_α
n9_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 680]
                                                                                        jmp   qword ptr [rsp]
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n10_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_event_γ
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n17_unop_test_α
n11_var_β:
                                                                                        jmp   n8_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n18_var_α
n12_lit_string_β:
                                                                                        jmp   n10_return_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n20_var_α
n13_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx51_0
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n19_lit_string_α
.Lx51_0:
                        cmp              eax, 1
                                                                                        jne   .Lx51_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n19_lit_string_α
.Lx51_1:
                                                                                        jmp   n19_lit_string_α
n13_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n13_disjunction_af
                                                                                        jmp   n13_disjunction_af
n13_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n21_lit_string_α
                                                                                        jmp   n10_return_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn53:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]
                        lea              rsi, [rbp + 96]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n10_return_α
                                                                                        jmp   n8_disjunction_as
n14_call_builtin_icon_β:
                                                                                        jmp   n10_return_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn55:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rbp + 304]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n13_disjunction_β
                                                                                        jmp   n8_disjunction_as
n15_call_builtin_icon_β:
                                                                                        jmp   n13_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_test_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n9_proc_gen_β
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n17_unop_test_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 99
                                                                                        je    n8_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n8_disjunction_af
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n26_var_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n22_unop_test_α
n20_var_β:
                                                                                        jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n13_disjunction_as
n21_lit_string_β:
                                                                                        jmp   n13_disjunction_af
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "            "
#-----------------------------------------------------------------------------------------------------------------------
n22_unop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 99
                                                                                        je    n13_disjunction_af
                        cmp              eax, 0
                                                                                        je    n13_disjunction_af
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n13_disjunction_as
n22_unop_test_β:
                                                                                        jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n27_var_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n13_disjunction_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n29_var_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n30_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n30_unop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 99
                                                                                        je    n10_return_α
                        cmp              eax, 0
                                                                                        je    n10_return_α
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_event_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_event_β:
                                                                                        jmp   proc_event_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_event_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 872]
                        lea              rsp, [rbp + 896]
                        mov              rbp, [rbp + 888]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_event_ω:
                        mov              rax, [rbp + 880]
                        lea              rsp, [rbp + 896]
                        mov              rbp, [rbp + 888]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_event_dcα:
                        pop              r11
                        sub              rsp, 912
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 864], r11
                        lea              rax, [rip + .Lx76_2]
                        mov              qword ptr [rbp + 872], rax
                        lea              rax, [rip + .Lx76_3]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 832
                        mov              edx, 864
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_event_α_body
.Lx76_2:
                        mov              rdx, qword ptr [rsp + -912]
                        mov              rcx, rsp
                        add              rcx, -896
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx76_3:
                        mov              rdi, qword ptr [rsp + -912]
                        mov              rsi, rsp
                        add              rsi, -896
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_refto_α
proc_refto_α:
                        .global          proc_refto_α
                        .global          proc_refto_β
                        .global          proc_refto_γ
                        .global          proc_refto_ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 384
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_refto_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
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
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n81_var_ref_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          " ["
#-----------------------------------------------------------------------------------------------------------------------
n80_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_refto_γ
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n83_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n83_subscript_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n80_return_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n84_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_deref_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n80_return_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n85_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n85_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00001_0]
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n80_return_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n86_lit_string_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n87_var_α
.Lx00002_0:
                        .quad            .Lx00002_0_s
.Lx00002_0_s:
                        .string          "] "
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n88_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_proc_staged_α:
                        lea              rsi, [rbp + 368]
                        call             proc_gedfnf_dcα
                                                                                        jmp   .Lx00003_2
.Lx00003_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n80_return_α
                                                                                        jmp   n89_call_builtin_icon_α
n88_call_proc_staged_β:
                                                                                        jmp   n80_return_α
.Lx00003_0:
                        .quad            .Lx00003_0_s
.Lx00003_0_s:
                        .string          "gedfnf"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 184]
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
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn108:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rbp + 64]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n80_return_α
                                                                                        jmp   n80_return_α
n89_call_builtin_icon_β:
                                                                                        jmp   n80_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_β:
                                                                                        jmp   proc_refto_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 392]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_refto_dcα:
                        pop              r11
                        sub              rsp, 432
                        mov              qword ptr [rsp + 424], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 384], r11
                        lea              rax, [rip + .Lx00004_2]
                        mov              qword ptr [rbp + 392], rax
                        lea              rax, [rip + .Lx00004_3]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 384
                        mov              edx, 384
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_refto_α_body
.Lx00004_2:
                        mov              rdx, qword ptr [rsp + -432]
                        mov              rcx, rsp
                        add              rcx, -416
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00004_3:
                        mov              rdi, qword ptr [rsp + -432]
                        mov              rsi, rsp
                        add              rsi, -416
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sortkey_α
proc_sortkey_α:
                        .global          proc_sortkey_α
                        .global          proc_sortkey_β
                        .global          proc_sortkey_γ
                        .global          proc_sortkey_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_sortkey_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_α:
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
                        cmp              eax, 99
                                                                                        je    proc_sortkey_ω
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
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_sortkey_ω
                                                                                        jmp   n00009_return_α
n00008_call_builtin_icon_β:
                                                                                        jmp   proc_sortkey_ω
#-----------------------------------------------------------------------------------------------------------------------
n00009_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 152]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_sortkey_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_sortkey_dcα:
                        pop              r11
                        sub              rsp, 192
                        mov              qword ptr [rsp + 184], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 144], r11
                        lea              rax, [rip + .Lx00010_2]
                        mov              qword ptr [rbp + 152], rax
                        lea              rax, [rip + .Lx00010_3]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 144
                        mov              edx, 144
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_sortkey_α_body
.Lx00010_2:
                        mov              rdx, qword ptr [rsp + -192]
                        mov              rcx, rsp
                        add              rcx, -176
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00010_3:
                        mov              rdi, qword ptr [rsp + -192]
                        mov              rsi, rsp
                        add              rsi, -176
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedload_α
proc_gedload_α:
                        .global          proc_gedload_α
                        .global          proc_gedload_β
                        .global          proc_gedload_γ
                        .global          proc_gedload_ω
                        sub              rsp, 2672
                        mov              [rsp + 2648], rcx
                        mov              [rsp + 2656], rdx
                        mov              [rsp + 2664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2496
                        mov              edx, 2640
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedload_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00011_lit_integer_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00013_assign_α
.Lx00012_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00013_assign_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00014_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n00016_keyword_icon_α
.Lx00015_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00016_keyword_icon_α:
                        mov              qword ptr [rbp + 2320], 0
                        mov              qword ptr [rbp + 2328], 0
                                                                                        jmp   n00017_lit_string_α
n00016_keyword_icon_β:
                                                                                        jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00017_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n00020_lit_string_α
.Lx00019_0:
                        .quad            .Lx00019_0_s
.Lx00019_0_s:
                        .string          "ROOT"
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n00022_var_α
.Lx00021_0:
                        .quad            .Lx00021_0_s
.Lx00021_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00022_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n00023_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00023_keyword_icon_α:
                        mov              qword ptr [rbp + 2400], 0
                        mov              qword ptr [rbp + 2408], 0
                                                                                        jmp   n00024_keyword_icon_α
n00023_keyword_icon_β:
                                                                                        jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00018_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn247:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n00025_make_list_α
                                                                                        jmp   n00026_assign_α
n00018_call_builtin_icon_β:
                                                                                        jmp   n00025_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00024_keyword_icon_α:
                        mov              qword ptr [rbp + 2432], 0
                        mov              qword ptr [rbp + 2440], 0
                                                                                        jmp   n00027_make_list_α
n00024_keyword_icon_β:
                                                                                        jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00026_assign_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n00025_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_make_list_α:
                        lea              rdi, [rbp + 2096]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n00028_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_make_list_α:
                        lea              rdi, [rbp + 2480]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n00029_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00028_assign_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00030_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_call_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn256:              .string          "gednode"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n00018_call_builtin_icon_α
                                                                                        jmp   n00031_assign_α
n00029_call_β:
                                                                                        jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00030_make_list_α:
                        lea              rdi, [rbp + 2080]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n00032_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n00033_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00033_assign_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00035_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn265:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n00036_var_α
                                                                                        jmp   n00037_lit_charset_α
n00035_call_builtin_icon_β:
                                                                                        jmp   n00036_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00038_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_lit_charset_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              dword ptr [rbp + 596], -1
                        mov              rax, qword ptr [rip + .Lx00039_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00040_call_builtin_icon_α
.Lx00039_0:
                        .quad            .Lx00039_0_s
.Lx00039_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00038_proc_gen_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00041_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00041_21
.Lx00041_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx00041_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00041_1
                        lea              rcx, [rip + .Lx00041_3]
                        lea              rdx, [rip + .Lx00041_4]
                                                                                        jmp   rax
.Lx00041_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx00041_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00041_2
.Lx00041_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00041_2
.Lx00041_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx00041_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00041_2
.Lx00041_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00041_2
.Lx00041_1:
                        call             rt_faildescr@PLT
.Lx00041_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n00042_var_α
                                                                                        jmp   n00043_assign_α
n00038_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx00041_0:
                        .quad            .Lx00041_0_s
.Lx00041_0_s:
                        .string          "gedwalk"
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00044_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn274:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n00036_var_α
                                                                                        jmp   n00045_assign_α
n00040_call_builtin_icon_β:
                                                                                        jmp   n00036_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n00046_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00044_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00047_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n00048_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_bound_α:
                        mov              qword ptr [rbp + 288], rsp
                                                                                        jmp   n00049_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00050_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n00051_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00052_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00053_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx00054_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n00055_op75_α
.Lx00054_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00056_disjunction_α:
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              dword ptr [rbp + 1920], 0
                                                                                        jmp   n00057_var_α
n00056_disjunction_as:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        jne   .Lx00058_0
                                                                                        jmp   n00059_disjunction_α
.Lx00058_0:
                                                                                        jmp   n00059_disjunction_α
n00056_disjunction_β:
                        mov              eax, dword ptr [rbp + 1920]
                                                                                        jmp   n00059_disjunction_α
n00056_disjunction_af:
                        add              dword ptr [rbp + 1920], 1
                        mov              eax, dword ptr [rbp + 1920]
                                                                                        jmp   n00059_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00060_0]
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n00061_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n00062_var_ref_α
.Lx00060_0:
                        .quad            .Lx00060_0_s
.Lx00060_0_s:
                        .string          "ref"
#-----------------------------------------------------------------------------------------------------------------------
n00061_unmark_α:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   n00038_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00053_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn296:              .string          "gedcom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rbp + 48]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_gedload_ω
                                                                                        jmp   n00063_return_α
n00053_call_β:
                                                                                        jmp   proc_gedload_ω
#-----------------------------------------------------------------------------------------------------------------------
n00055_op75_α:
                        mov              eax, dword ptr [rbp + 2624]
                        cmp              eax, 7
                                                                                        je    .Lx00064_1
                        cmp              eax, 6
                                                                                        jne   .Lx00064_0
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 6
                                                                                        jne   .Lx00064_0
.Lx00064_1:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00065_binop_α
.Lx00064_0:
                        lea              rdi, [rbp + 2624]
                        lea              rsi, [rbp + 2048]
                        lea              rdx, [rbp + 2016]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00065_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_disjunction_α:
                        mov              qword ptr [rbp + 1568], 0
                        mov              qword ptr [rbp + 1576], 0
                        mov              dword ptr [rbp + 1584], 0
                                                                                        jmp   n00066_var_α
n00059_disjunction_as:
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 0
                                                                                        jne   .Lx00067_0
                                                                                        jmp   n00068_var_α
.Lx00067_0:
                                                                                        jmp   n00068_var_α
n00059_disjunction_β:
                        mov              eax, dword ptr [rbp + 1584]
                                                                                        jmp   n00068_var_α
n00059_disjunction_af:
                        add              dword ptr [rbp + 1584], 1
                        mov              eax, dword ptr [rbp + 1584]
                                                                                        jmp   n00068_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n00069_unop_α
n00057_var_β:
                                                                                        jmp   n00056_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00070_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedload_γ
#-----------------------------------------------------------------------------------------------------------------------
n00065_binop_α:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 100
                                                                                        je    .Lx00071_0
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 6
                                                                                        jne   .Lx00071_2
.Lx00071_1:
                        mov              rax, qword ptr [rbp + 2024]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2000], 6
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00072_assign_α
.Lx00071_0:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              r8d, 0
                        lea              r9, [rbp + 2000]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00072_assign_α
.Lx00071_2:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00056_disjunction_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n00072_assign_α
n00065_binop_β:
                                                                                        jmp   n00056_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n00073_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00074_call_proc_staged_α
n00066_var_β:
                                                                                        jmp   n00075_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_conjunction_α:
                                                                                        jmp   n00059_disjunction_as
n00076_conjunction_β:
                                                                                        jmp   n00068_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00069_unop_α:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n00077_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00078_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00072_assign_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00056_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00079_0]
                        mov              rsi, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n00080_var_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n00081_var_α
.Lx00079_0:
                        .quad            .Lx00079_0_s
.Lx00079_0_s:
                        .string          "lnum"
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n00082_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_call_proc_staged_α:
                        lea              rsi, [rbp + 1888]
                        call             proc_gedscan_dcα
                                                                                        jmp   .Lx00083_2
.Lx00083_2:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n00075_var_α
                                                                                        jmp   n00084_assign_α
n00074_call_proc_staged_β:
                                                                                        jmp   n00075_var_α
.Lx00083_0:
                        .quad            .Lx00083_0_s
.Lx00083_0_s:
                        .string          "gedscan"
#-----------------------------------------------------------------------------------------------------------------------
n00075_var_α:
                        mov              qword ptr [rbp + 1824], 0
                        mov              qword ptr [rbp + 1832], 0
                                                                                        jmp   n00085_keyword_icon_α
n00075_var_β:
                                                                                        jmp   n00059_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00077_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 6
                        mov              rax, qword ptr [rip + .Lx00086_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n00087_binop_test_α
.Lx00086_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00078_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00088_0]
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00061_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00089_subscript_α
.Lx00088_0:
                        .quad            .Lx00088_0_s
.Lx00088_0_s:
                        .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00090_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00091_0]
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n00092_var_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n00093_make_list_α
.Lx00091_0:
                        .quad            .Lx00091_0_s
.Lx00091_0_s:
                        .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00092_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00094_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_assign_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n00059_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00085_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00095_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00034_var_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00096_lit_string_α
n00085_keyword_icon_β:
                                                                                        jmp   n00034_var_α
.Lx00095_0:
                        .quad            .Lx00095_0_s
.Lx00095_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00087_binop_test_α:
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 100
                                                                                        je    .Lx00097_0
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 100
                                                                                        je    .Lx00097_0
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 6
                                                                                        jne   .Lx00097_2
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 6
                                                                                        jne   .Lx00097_2
.Lx00097_1:
                        mov              rax, qword ptr [rbp + 1960]
                        mov              rcx, qword ptr [rbp + 1992]
                        cmp              rax, rcx
                                                                                        jne   n00056_disjunction_af
                        mov              rcx, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rcx
                        mov              rcx, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rcx
                                                                                        jmp   n00034_var_α
.Lx00097_0:
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        mov              rdx, qword ptr [rbp + 1984]
                        mov              rcx, qword ptr [rbp + 1992]
                        mov              r8d, 9
                        lea              r9, [rbp + 1936]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00097_1
                        cmp              eax, 1
                                                                                        je    n00056_disjunction_af
                                                                                        jmp   n00034_var_α
.Lx00097_2:
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        mov              rdx, qword ptr [rbp + 1984]
                        mov              rcx, qword ptr [rbp + 1992]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00056_disjunction_af
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00061_unmark_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00098_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00080_var_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n00080_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_make_list_α:
                        lea              rdi, [rbp + 1504]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n00099_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00100_0]
                        mov              rsi, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00101_var_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n00102_var_α
.Lx00100_0:
                        .quad            .Lx00100_0_s
.Lx00100_0_s:
                        .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n00103_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx00104_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n00105_var_α
.Lx00104_0:
                        .quad            .Lx00104_0_s
.Lx00104_0_s:
                        .string          "ERR, line "
#-----------------------------------------------------------------------------------------------------------------------
n00098_deref_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00061_unmark_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00106_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00092_var_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n00092_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00107_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00108_0]
                        mov              rsi, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00109_var_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n00110_var_α
.Lx00108_0:
                        .quad            .Lx00108_0_s
.Lx00108_0_s:
                        .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00109_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00111_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00112_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_assign_var_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00061_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00061_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00107_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00113_0]
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00101_var_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00114_binop_test_α
.Lx00113_0:
                        .quad            .Lx00113_0_s
.Lx00113_0_s:
                        .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n00110_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00115_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00116_0]
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n00117_var_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00118_var_α
.Lx00116_0:
                        .quad            .Lx00116_0_s
.Lx00116_0_s:
                        .string          "parent"
#-----------------------------------------------------------------------------------------------------------------------
n00117_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00112_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx00120_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00121_var_α
.Lx00120_0:
                        .quad            .Lx00120_0_s
.Lx00120_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n00122_goto_α:
                                                                                        jmp   n00034_var_α
n00122_goto_β:
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_binop_test_α:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 100
                                                                                        je    .Lx00123_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 100
                                                                                        je    .Lx00123_0
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 6
                                                                                        jne   .Lx00123_2
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx00123_2
.Lx00123_1:
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rcx, qword ptr [rbp + 1384]
                        cmp              rax, rcx
                                                                                        jl    n00101_var_α
                        mov              rcx, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rcx
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rcx
                                                                                        jmp   n00124_var_α
.Lx00123_0:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              r8d, 8
                        lea              r9, [rbp + 1328]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00123_1
                        cmp              eax, 1
                                                                                        je    n00101_var_α
                                                                                        jmp   n00124_var_α
.Lx00123_2:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00101_var_α
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn360:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n00109_var_α
                                                                                        jmp   n00109_var_α
n00115_call_builtin_icon_β:
                                                                                        jmp   n00109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00125_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00119_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n00127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n00129_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00117_var_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00130_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lrkfn374:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n00034_var_α
                                                                                        jmp   n00034_var_α
n00128_call_builtin_icon_β:
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00131_0]
                        mov              rsi, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00092_var_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00132_assign_α
.Lx00131_0:
                        .quad            .Lx00131_0_s
.Lx00131_0_s:
                        .string          "parent"
#-----------------------------------------------------------------------------------------------------------------------
n00130_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00133_0]
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00134_var_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n00135_unop_test_α
.Lx00133_0:
                        .quad            .Lx00133_0_s
.Lx00133_0_s:
                        .string          "id"
#-----------------------------------------------------------------------------------------------------------------------
n00134_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00136_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_assign_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00092_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_unop_test_α:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 99
                                                                                        je    n00134_var_α
                        cmp              eax, 0
                                                                                        je    n00134_var_α
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00137_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00138_0]
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00034_var_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00139_lit_string_α
.Lx00138_0:
                        .quad            .Lx00138_0_s
.Lx00138_0_s:
                        .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n00137_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00134_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00140_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00139_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx00141_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00142_call_builtin_α
.Lx00141_0:
                        .quad            .Lx00141_0_s
.Lx00141_0_s:
                        .string          "FAM"
#-----------------------------------------------------------------------------------------------------------------------
n00140_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00143_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_call_builtin_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn387:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn387]
                        lea              rsi, [rbp + 976]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n00144_lit_string_α
                                                                                        jmp   n00145_var_α
n00142_call_builtin_β:
                                                                                        jmp   n00144_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00143_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00134_var_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n00146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx00147_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00148_call_builtin_α
.Lx00147_0:
                        .quad            .Lx00147_0_s
.Lx00147_0_s:
                        .string          "INDI"
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00149_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00148_call_builtin_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn395:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]
                        lea              rsi, [rbp + 800]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n00034_var_α
                                                                                        jmp   n00150_var_α
n00148_call_builtin_β:
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00149_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn397:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn397]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n00034_var_α
                                                                                        jmp   n00151_assign_α
n00149_call_builtin_icon_β:
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n00153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00154_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00153_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00155_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn406:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn406]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n00034_var_α
                                                                                        jmp   n00156_assign_α
n00154_call_builtin_icon_β:
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_conjunction_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00034_var_α
n00155_conjunction_β:
                                                                                        jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n00153_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_β:
                                                                                        jmp   proc_gedload_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2648]
                        lea              rsp, [rbp + 2672]
                        mov              rbp, [rbp + 2664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_ω:
                        mov              rax, [rbp + 2656]
                        lea              rsp, [rbp + 2672]
                        mov              rbp, [rbp + 2664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedload_dcα:
                        pop              r11
                        sub              rsp, 2688
                        mov              qword ptr [rsp + 2680], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 2640], r11
                        lea              rax, [rip + .Lx00157_2]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rax, [rip + .Lx00157_3]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 2496
                        mov              edx, 2640
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gedload_α_body
.Lx00157_2:
                        mov              rdx, qword ptr [rsp + -2688]
                        mov              rcx, rsp
                        add              rcx, -2672
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00157_3:
                        mov              rdi, qword ptr [rsp + -2688]
                        mov              rsi, rsp
                        add              rsi, -2672
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedscan_α
proc_gedscan_α:
                        .global          proc_gedscan_α
                        .global          proc_gedscan_β
                        .global          proc_gedscan_γ
                        .global          proc_gedscan_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1248
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedscan_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00158_disjunction_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0
                                                                                        jmp   n00159_var_ref_α
n00158_disjunction_as:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        jne   .Lx00160_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00161_var_α
.Lx00160_0:
                                                                                        jmp   n00161_var_α
n00158_disjunction_β:
                        mov              eax, dword ptr [rbp + 1072]
                                                                                        jmp   n00161_var_α
n00158_disjunction_af:
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                                                                                        jmp   n00161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00161_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00162_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00163_nulltest_var_α
n00159_var_ref_β:
                                                                                        jmp   n00158_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00164_assign_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00158_disjunction_as
n00164_assign_β:
                                                                                        jmp   n00161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00162_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00165_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00163_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 99
                                                                                        je    n00158_disjunction_af
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00158_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00158_disjunction_af
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_charset_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              dword ptr [rbp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx00167_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n00168_scan_many_α
.Lx00167_0:
                        .quad            .Lx00167_0_s
.Lx00167_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx00169_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00170_assign_var_α
.Lx00169_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00168_scan_many_α:
                        mov              eax, r14d
.Lx00171_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00171_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00171_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00171_1
                        add              eax, 1
                                                                                        jmp   .Lx00171_0
.Lx00171_1:
                        cmp              eax, r14d
                                                                                        je    n00172_disjunction_α
                        mov              qword ptr [rbp + 1008], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1016], rcx
                                                                                        jmp   n00173_scan_tab_α
n00168_scan_many_β:
                                                                                        jmp   n00172_disjunction_α
.Lx00171_2:
                        .quad            .Lx00171_2_s
.Lx00171_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00170_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00158_disjunction_af
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n00174_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1016]
                        cmp              rax, 1
                                                                                        jge   .Lx00175_0
                        add              rax, r15
                        add              rax, 1
.Lx00175_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00175_239
                        add              rsp, 16
                                                                                        jmp   n00172_disjunction_α
.Lx00175_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00175_240
                        add              rsp, 16
                                                                                        jmp   n00172_disjunction_α
.Lx00175_240:
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
                                                                                        jmp   n00172_disjunction_α
n00173_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00172_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_lit_charset_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              dword ptr [rbp + 1140], -1
                        mov              rax, qword ptr [rip + .Lx00176_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00177_lit_charset_α
.Lx00176_0:
                        .quad            .Lx00176_0_s
.Lx00176_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00172_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n00178_lit_charset_α
n00172_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx00179_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00180_assign_α
.Lx00179_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00179_1
                                                                                        jmp   n00180_assign_α
.Lx00179_1:
                                                                                        jmp   n00180_assign_α
n00172_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        je    n00172_disjunction_af
                                                                                        jmp   n00172_disjunction_af
n00172_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1
                                                                                        je    proc_gedscan_ω
                                                                                        jmp   n00181_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00177_lit_charset_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              dword ptr [rbp + 1156], -1
                        mov              rax, qword ptr [rip + .Lx00182_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00183_binop_α
.Lx00182_0:
                        .quad            .Lx00182_0_s
.Lx00182_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00180_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n00181_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00178_lit_charset_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], -1
                        mov              rax, qword ptr [rip + .Lx00184_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00185_scan_many_α
n00178_lit_charset_β:
                                                                                        jmp   n00172_disjunction_af
.Lx00184_0:
                        .quad            .Lx00184_0_s
.Lx00184_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00186_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 952]
                        cmp              rax, 1
                                                                                        jge   .Lx00187_0
                        add              rax, r15
                        add              rax, 1
.Lx00187_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00187_239
                        add              rsp, 16
                                                                                        jmp   n00172_disjunction_af
.Lx00187_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00187_240
                        add              rsp, 16
                                                                                        jmp   n00172_disjunction_af
.Lx00187_240:
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
                                                                                        jmp   n00172_disjunction_as
n00186_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00172_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00183_binop_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        mov              r8d, 19
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00161_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00188_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00181_lit_charset_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              dword ptr [rbp + 868], -1
                        mov              rax, qword ptr [rip + .Lx00189_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00190_scan_many_α
.Lx00189_0:
                        .quad            .Lx00189_0_s
.Lx00189_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00185_scan_many_α:
                        mov              eax, r14d
.Lx00191_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00191_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00191_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00191_1
                        add              eax, 1
                                                                                        jmp   .Lx00191_0
.Lx00191_1:
                        cmp              eax, r14d
                                                                                        je    n00172_disjunction_af
                        mov              qword ptr [rbp + 944], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 952], rcx
                                                                                        jmp   n00186_scan_tab_α
n00185_scan_many_β:
                                                                                        jmp   n00172_disjunction_af
.Lx00191_2:
                        .quad            .Lx00191_2_s
.Lx00191_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00188_lit_charset_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              dword ptr [rbp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx00192_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00193_binop_α
.Lx00192_0:
                        .quad            .Lx00192_0_s
.Lx00192_0_s:
                        .string          "_"
#-----------------------------------------------------------------------------------------------------------------------
n00190_scan_many_α:
                        mov              eax, r14d
.Lx00194_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00194_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00194_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00194_1
                        add              eax, 1
                                                                                        jmp   .Lx00194_0
.Lx00194_1:
                        cmp              eax, r14d
                                                                                        je    n00195_disjunction_α
                        mov              qword ptr [rbp + 848], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 856], rcx
                                                                                        jmp   n00196_scan_tab_α
n00190_scan_many_β:
                                                                                        jmp   n00195_disjunction_α
.Lx00194_2:
                        .quad            .Lx00194_2_s
.Lx00194_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00193_binop_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        mov              r8d, 19
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00161_var_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00164_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00196_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 856]
                        cmp              rax, 1
                                                                                        jge   .Lx00197_0
                        add              rax, r15
                        add              rax, 1
.Lx00197_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00197_239
                        add              rsp, 16
                                                                                        jmp   n00195_disjunction_α
.Lx00197_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00197_240
                        add              rsp, 16
                                                                                        jmp   n00195_disjunction_α
.Lx00197_240:
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
                                                                                        jmp   n00195_disjunction_α
n00196_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n00198_scan_sequence_α
n00195_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx00199_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00200_disjunction_α
.Lx00199_0:
                                                                                        jmp   n00200_disjunction_α
n00195_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n00200_disjunction_α
n00195_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n00200_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00200_disjunction_α:
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              dword ptr [rbp + 400], 0
                                                                                        jmp   n00201_var_α
n00200_disjunction_as:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        jne   .Lx00202_0
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00203_assign_α
.Lx00202_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00202_1
                                                                                        jmp   n00203_assign_α
.Lx00202_1:
                                                                                        jmp   n00203_assign_α
n00200_disjunction_β:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        je    n00200_disjunction_af
                                                                                        jmp   n00200_disjunction_af
n00200_disjunction_af:
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 1
                                                                                        je    proc_gedscan_ω
                                                                                        jmp   n00204_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00198_scan_sequence_α:
                        mov              dword ptr [rbp + 592], r14d
                        mov              dword ptr [rbp + 596], 0
                                                                                        jmp   n00205_lit_string_α
n00198_scan_sequence_as:
                        mov              eax, dword ptr [rbp + 596]
                        add              eax, 1
                        mov              dword ptr [rbp + 596], eax
                        cmp              eax, 1
                                                                                        je    n00206_lit_charset_α
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        push             r10
                        push             r10
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             str_concat_d@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00207_assign_α
n00198_scan_sequence_β:
                        mov              dword ptr [rbp + 596], 2
n00198_scan_sequence_af:
                        mov              eax, dword ptr [rbp + 596]
                        sub              eax, 1
                        mov              dword ptr [rbp + 596], eax
                        cmp              eax, 0
                                                                                        je    n00208_scan_tab_β
                        cmp              eax, 1
                                                                                        je    n00209_scan_tab_β
                                                                                        jmp   n00195_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00210_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 552]
                        cmp              rax, 1
                                                                                        jge   .Lx00211_0
                        add              rax, r15
                        add              rax, 1
.Lx00211_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00211_239
                        add              rsp, 16
                                                                                        jmp   n00200_disjunction_α
.Lx00211_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00211_240
                        add              rsp, 16
                                                                                        jmp   n00200_disjunction_α
.Lx00211_240:
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
                                                                                        jmp   n00195_disjunction_as
n00210_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00200_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00203_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n00204_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00212_scan_many_α
n00201_var_β:
                                                                                        jmp   n00200_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00213_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 456]
                        cmp              rax, 1
                                                                                        jge   .Lx00214_0
                        add              rax, r15
                        add              rax, 1
.Lx00214_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00214_239
                        add              rsp, 16
                                                                                        jmp   n00200_disjunction_af
.Lx00214_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00214_240
                        add              rsp, 16
                                                                                        jmp   n00200_disjunction_af
.Lx00214_240:
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
                                                                                        jmp   n00200_disjunction_as
n00213_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00200_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00207_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n00215_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00205_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx00216_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00217_scan_match_α
n00205_lit_string_β:
                                                                                        jmp   n00198_scan_sequence_af
.Lx00216_0:
                        .quad            .Lx00216_0_s
.Lx00216_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00208_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 648]
                        cmp              rax, 1
                                                                                        jge   .Lx00218_0
                        add              rax, r15
                        add              rax, 1
.Lx00218_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00218_239
                        add              rsp, 16
                                                                                        jmp   n00198_scan_sequence_af
.Lx00218_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00218_240
                        add              rsp, 16
                                                                                        jmp   n00198_scan_sequence_af
.Lx00218_240:
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
                                                                                        jmp   n00198_scan_sequence_as
n00208_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00198_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n00206_lit_charset_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              dword ptr [rbp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00219_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00220_scan_upto_α
n00206_lit_charset_β:
                                                                                        jmp   n00198_scan_sequence_af
.Lx00219_0:
                        .quad            .Lx00219_0_s
.Lx00219_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00209_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 728]
                        cmp              rax, 1
                                                                                        jge   .Lx00221_0
                        add              rax, r15
                        add              rax, 1
.Lx00221_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00221_239
                        add              rsp, 16
                                                                                        jmp   n00220_scan_upto_β
.Lx00221_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00221_240
                        add              rsp, 16
                                                                                        jmp   n00220_scan_upto_β
.Lx00221_240:
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
                                                                                        jmp   n00198_scan_sequence_as
n00209_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00220_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00204_lit_charset_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              dword ptr [rbp + 372], -1
                        mov              rax, qword ptr [rip + .Lx00222_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00223_scan_many_α
.Lx00222_0:
                        .quad            .Lx00222_0_s
.Lx00222_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00212_scan_many_α:
                        mov              eax, r14d
.Lx00224_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00224_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 472]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00224_1
                        add              eax, 1
                                                                                        jmp   .Lx00224_0
.Lx00224_1:
                        cmp              eax, r14d
                                                                                        je    n00200_disjunction_af
                        mov              qword ptr [rbp + 448], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 456], rcx
                                                                                        jmp   n00213_scan_tab_α
n00212_scan_many_β:
                                                                                        jmp   n00200_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00215_lit_charset_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              dword ptr [rbp + 564], -1
                        mov              rax, qword ptr [rip + .Lx00225_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00226_scan_many_α
.Lx00225_0:
                        .quad            .Lx00225_0_s
.Lx00225_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00217_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00227_239
                        add              rsp, 16
                                                                                        jmp   n00198_scan_sequence_af
.Lx00227_239:
                        mov              rdi, qword ptr [rip + .Lx00227_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00227_240
                        add              rsp, 16
                                                                                        jmp   n00198_scan_sequence_af
.Lx00227_240:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00208_scan_tab_α
.Lx00227_0:
                        .quad            .Lx00227_0_s
.Lx00227_0_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00220_scan_upto_α:
                        mov              qword ptr [rbp + 768], r14
.Lx00228_0:
                        mov              rax, qword ptr [rbp + 768]
                        cmp              rax, r15
                                                                                        jge   n00198_scan_sequence_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00228_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00228_1
                        mov              qword ptr [rbp + 752], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00229_lit_integer_α
.Lx00228_1:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00228_0
n00220_scan_upto_β:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00228_0
.Lx00228_2:
                        .quad            .Lx00228_2_s
.Lx00228_2_s:
                        .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00223_scan_many_α:
                        mov              eax, r14d
.Lx00230_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00230_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00230_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00230_1
                        add              eax, 1
                                                                                        jmp   .Lx00230_0
.Lx00230_1:
                        cmp              eax, r14d
                                                                                        je    n00231_lit_integer_α
                        mov              qword ptr [rbp + 352], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 360], rcx
                                                                                        jmp   n00232_scan_tab_α
n00223_scan_many_β:
                                                                                        jmp   n00231_lit_integer_α
.Lx00230_2:
                        .quad            .Lx00230_2_s
.Lx00230_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00226_scan_many_α:
                        mov              eax, r14d
.Lx00233_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00233_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00233_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00233_1
                        add              eax, 1
                                                                                        jmp   .Lx00233_0
.Lx00233_1:
                        cmp              eax, r14d
                                                                                        je    n00200_disjunction_α
                        mov              qword ptr [rbp + 544], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 552], rcx
                                                                                        jmp   n00210_scan_tab_α
n00226_scan_many_β:
                                                                                        jmp   n00200_disjunction_α
.Lx00233_2:
                        .quad            .Lx00233_2_s
.Lx00233_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00229_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx00234_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00235_op75_α
.Lx00234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00232_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 360]
                        cmp              rax, 1
                                                                                        jge   .Lx00236_0
                        add              rax, r15
                        add              rax, 1
.Lx00236_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00236_239
                        add              rsp, 16
                                                                                        jmp   n00231_lit_integer_α
.Lx00236_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00236_240
                        add              rsp, 16
                                                                                        jmp   n00231_lit_integer_α
.Lx00236_240:
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
                                                                                        jmp   n00231_lit_integer_α
n00232_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00235_op75_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 7
                                                                                        je    .Lx00237_1
                        cmp              eax, 6
                                                                                        jne   .Lx00237_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 6
                                                                                        jne   .Lx00237_0
.Lx00237_1:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00238_binop_α
.Lx00237_0:
                        lea              rdi, [rbp + 752]
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 736]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00238_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00231_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx00239_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00240_scan_tab_α
.Lx00239_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00238_binop_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 100
                                                                                        je    .Lx00241_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx00241_2
.Lx00241_1:
                        mov              rax, qword ptr [rbp + 744]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 720], 6
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00209_scan_tab_α
.Lx00241_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 0
                        lea              r9, [rbp + 720]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00209_scan_tab_α
.Lx00241_2:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00198_scan_sequence_af
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n00209_scan_tab_α
n00238_binop_β:
                                                                                        jmp   n00198_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n00240_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00242_0
                        add              rax, r15
                        add              rax, 1
.Lx00242_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00242_239
                        add              rsp, 16
                                                                                        jmp   n00243_var_α
.Lx00242_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00242_240
                        add              rsp, 16
                                                                                        jmp   n00243_var_α
.Lx00242_240:
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
                                                                                        jmp   n00244_assign_α
n00240_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00244_assign_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n00243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00243_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00245_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00246_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00246_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00247_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00247_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00248_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00248_call_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn551:              .string          "gednode"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn551]
                        lea              rsi, [rbp + 112]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_gedscan_ω
                                                                                        jmp   n00249_return_α
n00248_call_β:
                                                                                        jmp   proc_gedscan_ω
#-----------------------------------------------------------------------------------------------------------------------
n00249_return_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedscan_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_β:
                                                                                        jmp   proc_gedscan_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1320]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedscan_dcα:
                        pop              r11
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1352], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1312], r11
                        lea              rax, [rip + .Lx00250_2]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rax, [rip + .Lx00250_3]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1248
                        mov              edx, 1312
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gedscan_α_body
.Lx00250_2:
                        mov              rdx, qword ptr [rsp + -1360]
                        mov              rcx, rsp
                        add              rcx, -1344
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00250_3:
                        mov              rdi, qword ptr [rsp + -1360]
                        mov              rsi, rsp
                        add              rsi, -1344
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedwalk_α
proc_gedwalk_α:
                        .global          proc_gedwalk_α
                        .global          proc_gedwalk_β
                        .global          proc_gedwalk_γ
                        .global          proc_gedwalk_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 224
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedwalk_α_body:
                        lea              rax, [rip + n00251_suspend_β]
                        mov              qword ptr [rbp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n00252_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00253_var_α
n00252_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00254_0
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00251_suspend_α
.Lx00254_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00254_1
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00251_suspend_α
.Lx00254_1:
                                                                                        jmp   n00251_suspend_α
n00252_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n00252_disjunction_af
                                                                                        jmp   n00255_proc_gen_β
n00252_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00256_var_α
                                                                                        jmp   proc_gedwalk_ω
#-----------------------------------------------------------------------------------------------------------------------
n00251_suspend_α:
                        lea              rax, [rip + n00251_suspend_β]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedwalk_γ
n00251_suspend_β:
                                                                                        jmp   n00252_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00252_disjunction_as
n00253_var_β:
                                                                                        jmp   n00252_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00257_field_get_α
n00256_var_β:
                                                                                        jmp   n00252_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00255_proc_gen_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00258_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00258_21
.Lx00258_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx00258_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00258_1
                        lea              rcx, [rip + .Lx00258_3]
                        lea              rdx, [rip + .Lx00258_4]
                                                                                        jmp   rax
.Lx00258_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx00258_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00258_2
.Lx00258_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00258_2
.Lx00258_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx00258_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00258_2
.Lx00258_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00258_2
.Lx00258_1:
                        call             rt_faildescr@PLT
.Lx00258_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n00259_iterate_β
                                                                                        jmp   n00252_disjunction_as
n00255_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx00258_0:
                        .quad            .Lx00258_0_s
.Lx00258_0_s:
                        .string          "gedwalk"
#-----------------------------------------------------------------------------------------------------------------------
n00257_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00260_0]
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00252_disjunction_af
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n00259_iterate_α
.Lx00260_0:
                        .quad            .Lx00260_0_s
.Lx00260_0_s:
                        .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00259_iterate_α:
                        mov              qword ptr [rbp + 160], 0
.Lx00261_0:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 160]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              rax, 99
                                                                                        je    n00252_disjunction_af
                                                                                        jmp   n00255_proc_gen_α
n00259_iterate_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx00261_0
#-----------------------------------------------------------------------------------------------------------------------
proc_gedwalk_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedwalk_β:
                                                                                        jmp   qword ptr [rbp + 208]
#-----------------------------------------------------------------------------------------------------------------------
proc_gedwalk_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gedwalk_res]
                        push             rax
                        mov              rax, [rbp + 232]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedwalk_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedsub_α
proc_gedsub_α:
                        .global          proc_gedsub_α
                        .global          proc_gedsub_β
                        .global          proc_gedsub_γ
                        .global          proc_gedsub_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedsub_α_body:
                        lea              rax, [rip + n00262_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n00263_disjunction_α:
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              dword ptr [rbp + 592], 0
                                                                                        jmp   n00264_var_α
n00263_disjunction_as:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        jne   .Lx00265_0
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n00266_assign_α
.Lx00265_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00265_1
                                                                                        jmp   n00266_assign_α
.Lx00265_1:
                                                                                        jmp   n00266_assign_α
n00263_disjunction_β:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        je    n00263_disjunction_af
                                                                                        jmp   n00263_disjunction_af
n00263_disjunction_af:
                        add              dword ptr [rbp + 592], 1
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 1
                                                                                        je    proc_gedsub_ω
                                                                                        jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00268_call_builtin_icon_α
n00264_var_β:
                                                                                        jmp   n00263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00268_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn608:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn608]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n00263_disjunction_af
                                                                                        jmp   n00263_disjunction_as
n00268_call_builtin_icon_β:
                                                                                        jmp   n00263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00269_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00269_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00270_0]
                        mov              rsi, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedsub_ω
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00271_iterate_α
.Lx00270_0:
                        .quad            .Lx00270_0_s
.Lx00270_0_s:
                        .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00271_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00272_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        je    proc_gedsub_ω
                                                                                        jmp   n00273_assign_α
n00271_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx00272_0
#-----------------------------------------------------------------------------------------------------------------------
n00273_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00274_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00274_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n00275_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00275_disjunction_α:
                        mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0
                                                                                        jmp   n00276_var_α
n00275_disjunction_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0
                                                                                        jne   .Lx00277_0
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00278_unmark_α
.Lx00277_0:
                                                                                        jmp   n00278_unmark_α
n00275_disjunction_β:
                        mov              eax, dword ptr [rbp + 192]
                                                                                        jmp   n00279_disjunction_β
n00275_disjunction_af:
                        add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                                                                                        jmp   n00278_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n00271_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00276_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00280_field_get_α
n00276_var_β:
                                                                                        jmp   n00275_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00279_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n00281_var_α
n00279_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx00282_0
                                                                                        jmp   n00275_disjunction_as
.Lx00282_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00282_1
                                                                                        jmp   n00275_disjunction_as
.Lx00282_1:
                                                                                        jmp   n00275_disjunction_as
n00279_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        je    n00283_call_value_β
                                                                                        jmp   n00278_unmark_α
n00279_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 1
                                                                                        je    n00284_var_α
                                                                                        jmp   n00278_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00280_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00285_0]
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00275_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00286_var_α
.Lx00285_0:
                        .quad            .Lx00285_0_s
.Lx00285_0_s:
                        .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n00281_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00287_unop_α
n00281_var_β:
                                                                                        jmp   n00279_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00283_call_value_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                        mov              qword ptr [rbp + 288], 0
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00288_7
                        lea              rcx, [rip + .Lx00288_3]
                        lea              rdx, [rip + .Lx00288_4]
                                                                                        jmp   rax
.Lx00288_3:
                        mov              qword ptr [rbp + 296], rsp
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx00288_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00288_2
.Lx00288_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00288_2
.Lx00288_4:
                        mov              qword ptr [rbp + 296], rsp
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx00288_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00288_2
.Lx00288_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00288_2
.Lx00288_7:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        lea              r8, [rbp + 288]
                        call             rt_call_apply_gen_h@PLT
.Lx00288_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n00278_unmark_α
                                                                                        jmp   n00262_suspend_α
n00283_call_value_β:
                        mov              rax, qword ptr [rbp + 288]
                        cmp              rax, 1
                                                                                        jne   .Lx00288_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 296]
                                                                                        jmp   qword ptr [rsp]
.Lx00288_8:
                        lea              rdi, [rbp + 288]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n00278_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00262_suspend_α
                                                                                        jmp   n00278_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00284_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00289_suspend_α
n00284_var_β:
                                                                                        jmp   n00278_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00290_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00287_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00291_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00262_suspend_α:
                        lea              rax, [rip + n00262_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedsub_γ
n00262_suspend_β:
                                                                                        jmp   n00283_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n00289_suspend_α:
                        lea              rax, [rip + n00289_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedsub_γ
n00289_suspend_β:
                                                                                        jmp   n00279_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00290_binop_test_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00275_disjunction_af
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n00279_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00291_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx00292_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00293_binop_test_α
.Lx00292_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00293_binop_test_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 100
                                                                                        je    .Lx00294_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 100
                                                                                        je    .Lx00294_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx00294_2
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx00294_2
.Lx00294_1:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, qword ptr [rbp + 488]
                        cmp              rax, rcx
                                                                                        jle   n00279_disjunction_af
                        mov              rcx, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rcx
                        mov              rcx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rcx
                                                                                        jmp   n00295_lit_string_α
.Lx00294_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              r8d, 7
                        lea              r9, [rbp + 432]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00294_1
                        cmp              eax, 1
                                                                                        je    n00279_disjunction_af
                                                                                        jmp   n00295_lit_string_α
.Lx00294_2:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00279_disjunction_af
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00295_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx00296_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00297_var_α
.Lx00296_0:
                        .quad            .Lx00296_0_s
.Lx00296_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00297_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00298_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00299_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00299_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn648:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn648]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n00278_unmark_α
                                                                                        jmp   n00283_call_value_α
n00299_call_builtin_icon_β:
                                                                                        jmp   n00278_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_gedsub_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedsub_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_gedsub_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gedsub_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedsub_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedval_α
proc_gedval_α:
                        .global          proc_gedval_α
                        .global          proc_gedval_β
                        .global          proc_gedval_γ
                        .global          proc_gedval_ω
                        sub              rsp, 208
                        mov              [rsp + 184], rcx
                        mov              [rsp + 192], rdx
                        mov              [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 176
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedval_α_body:
                        lea              rax, [rip + n00300_suspend_β]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n00301_lit_string_α:
                        mov              qword ptr [rbp + 48], 1
                        mov              rax, qword ptr [rip + .Lx00302_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00303_var_α
.Lx00302_0:
                        .quad            .Lx00302_0_s
.Lx00302_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00303_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00304_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n00304_call_value_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 88]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00305_7
                        lea              rcx, [rip + .Lx00305_3]
                        lea              rdx, [rip + .Lx00305_4]
                                                                                        jmp   rax
.Lx00305_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx00305_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00305_2
.Lx00305_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00305_2
.Lx00305_4:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx00305_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00305_2
.Lx00305_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00305_2
.Lx00305_7:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 88]
                        lea              r8, [rbp + 96]
                        call             rt_call_apply_gen_h@PLT
.Lx00305_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_gedval_ω
                                                                                        jmp   n00306_field_get_α
n00304_call_value_β:
                        mov              rax, qword ptr [rbp + 96]
                        cmp              rax, 1
                                                                                        jne   .Lx00305_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx00305_8:
                        lea              rdi, [rbp + 96]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedval_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00306_field_get_α
                                                                                        jmp   proc_gedval_ω
#-----------------------------------------------------------------------------------------------------------------------
n00306_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00307_0]
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedval_ω
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00300_suspend_α
.Lx00307_0:
                        .quad            .Lx00307_0_s
.Lx00307_0_s:
                        .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n00300_suspend_α:
                        lea              rax, [rip + n00300_suspend_β]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedval_γ
n00300_suspend_β:
                                                                                        jmp   n00304_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gedval_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedval_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_gedval_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gedval_res]
                        push             rax
                        mov              rax, [rbp + 184]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedval_ω:
                        mov              rax, [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedref_α
proc_gedref_α:
                        .global          proc_gedref_α
                        .global          proc_gedref_β
                        .global          proc_gedref_γ
                        .global          proc_gedref_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedref_α_body:
                        lea              rax, [rip + n00308_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n00309_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx00310_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00311_var_α
.Lx00310_0:
                        .quad            .Lx00310_0_s
.Lx00310_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00312_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n00312_call_value_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 0
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx00313_7
                        lea              rcx, [rip + .Lx00313_3]
                        lea              rdx, [rip + .Lx00313_4]
                                                                                        jmp   rax
.Lx00313_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx00313_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00313_2
.Lx00313_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00313_2
.Lx00313_4:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx00313_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00313_2
.Lx00313_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00313_2
.Lx00313_7:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        lea              r8, [rbp + 112]
                        call             rt_call_apply_gen_h@PLT
.Lx00313_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_gedref_ω
                                                                                        jmp   n00314_field_get_α
n00312_call_value_β:
                        mov              rax, qword ptr [rbp + 112]
                        cmp              rax, 1
                                                                                        jne   .Lx00313_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx00313_8:
                        lea              rdi, [rbp + 112]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedref_ω
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00314_field_get_α
                                                                                        jmp   proc_gedref_ω
#-----------------------------------------------------------------------------------------------------------------------
n00314_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00315_0]
                        mov              rsi, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_gedref_ω
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00316_unop_test_α
.Lx00315_0:
                        .quad            .Lx00315_0_s
.Lx00315_0_s:
                        .string          "ref"
#-----------------------------------------------------------------------------------------------------------------------
n00316_unop_test_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 99
                                                                                        je    n00312_call_value_β
                        cmp              eax, 0
                                                                                        je    n00312_call_value_β
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00308_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n00308_suspend_α:
                        lea              rax, [rip + n00308_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gedref_γ
n00308_suspend_β:
                                                                                        jmp   n00312_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gedref_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedref_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_gedref_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gedref_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedref_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedfnf_α
proc_gedfnf_α:
                        .global          proc_gedfnf_α
                        .global          proc_gedfnf_β
                        .global          proc_gedfnf_γ
                        .global          proc_gedfnf_ω
                        sub              rsp, 1232
                        mov              [rsp + 1208], rcx
                        mov              [rsp + 1216], rdx
                        mov              [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedfnf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00317_disjunction_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              dword ptr [rbp + 1024], 0
                                                                                        jmp   n00318_var_α
n00317_disjunction_as:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        jne   .Lx00319_0
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n00320_assign_α
.Lx00319_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00319_1
                                                                                        jmp   n00320_assign_α
.Lx00319_1:
                                                                                        jmp   n00320_assign_α
n00317_disjunction_β:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        je    n00321_proc_gen_β
                                                                                        jmp   n00317_disjunction_af
n00317_disjunction_af:
                        add              dword ptr [rbp + 1024], 1
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 1
                                                                                        je    proc_gedfnf_ω
                                                                                        jmp   n00322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00320_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00323_lit_string_α
n00318_var_β:
                                                                                        jmp   n00317_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00321_proc_gen_α:
                        mov              qword ptr [rbp + 1088], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00324_20
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00324_21
.Lx00324_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        call             rt_arg_stage@PLT
.Lx00324_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00324_22
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00324_23
.Lx00324_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        call             rt_arg_stage@PLT
.Lx00324_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00324_1
                        lea              rcx, [rip + .Lx00324_3]
                        lea              rdx, [rip + .Lx00324_4]
                                                                                        jmp   rax
.Lx00324_3:
                        mov              qword ptr [rbp + 1096], rsp
                        mov              rax, qword ptr [rbp + 1088]
                        test             rax, rax
                                                                                        jne   .Lx00324_5
                        mov              qword ptr [rbp + 1088], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00324_2
.Lx00324_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00324_2
.Lx00324_4:
                        mov              rax, qword ptr [rbp + 1088]
                        test             rax, rax
                                                                                        jne   .Lx00324_6
                        mov              qword ptr [rbp + 1088], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00324_2
.Lx00324_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00324_2
.Lx00324_1:
                        call             rt_faildescr@PLT
.Lx00324_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n00317_disjunction_af
                                                                                        jmp   n00317_disjunction_as
n00321_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1096]
                                                                                        jmp   qword ptr [rsp]
.Lx00324_0:
                        .quad            .Lx00324_0_s
.Lx00324_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00322_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00325_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx00326_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00321_proc_gen_α
.Lx00326_0:
                        .quad            .Lx00326_0_s
.Lx00326_0_s:
                        .string          "NAME"
#-----------------------------------------------------------------------------------------------------------------------
n00325_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00327_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_disjunction_α:
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                                                                                        jmp   n00329_var_α
n00328_disjunction_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        jne   .Lx00330_0
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00331_var_α
.Lx00330_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00330_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00331_var_α
.Lx00330_1:
                                                                                        jmp   n00331_var_α
n00328_disjunction_β:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0
                                                                                        je    n00331_var_α
                                                                                        jmp   n00331_var_α
n00328_disjunction_af:
                        add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1
                                                                                        je    n00332_var_α
                                                                                        jmp   n00331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00327_disjunction_α:
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0
                                                                                        jmp   n00333_lit_charset_α
n00327_disjunction_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        jne   .Lx00334_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00335_assign_α
.Lx00334_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00334_1
                                                                                        jmp   n00335_assign_α
.Lx00334_1:
                                                                                        jmp   n00335_assign_α
n00327_disjunction_β:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        je    n00336_scan_upto_β
                                                                                        jmp   n00327_disjunction_af
n00327_disjunction_af:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 1
                                                                                        je    n00337_lit_integer_α
                                                                                        jmp   n00338_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00331_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00329_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00340_unop_α
n00329_var_β:
                                                                                        jmp   n00328_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00341_assign_α
n00332_var_β:
                                                                                        jmp   n00331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00328_disjunction_as
n00342_assign_β:
                                                                                        jmp   n00331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00328_disjunction_as
n00341_assign_β:
                                                                                        jmp   n00331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00335_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00338_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_lit_charset_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              dword ptr [rbp + 932], -1
                        mov              rax, qword ptr [rip + .Lx00343_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n00336_scan_upto_α
n00333_lit_charset_β:
                                                                                        jmp   n00327_disjunction_af
.Lx00343_0:
                        .quad            .Lx00343_0_s
.Lx00343_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00336_scan_upto_α:
                        mov              qword ptr [rbp + 912], r14
.Lx00344_0:
                        mov              rax, qword ptr [rbp + 912]
                        cmp              rax, r15
                                                                                        jge   n00327_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00344_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00344_1
                        mov              qword ptr [rbp + 896], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00345_scan_tab_α
.Lx00344_1:
                        inc              qword ptr [rbp + 912]
                                                                                        jmp   .Lx00344_0
n00336_scan_upto_β:
                        inc              qword ptr [rbp + 912]
                                                                                        jmp   .Lx00344_0
.Lx00344_2:
                        .quad            .Lx00344_2_s
.Lx00344_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx00346_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00347_scan_tab_α
n00337_lit_integer_β:
                                                                                        jmp   proc_gedfnf_ω
.Lx00346_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00348_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn758:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn758]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n00336_scan_upto_β
                                                                                        jmp   n00327_disjunction_as
n00348_call_builtin_icon_β:
                                                                                        jmp   n00336_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx00349_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00350_var_α
.Lx00349_0:
                        .quad            .Lx00349_0_s
.Lx00349_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00351_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00352_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00340_unop_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00353_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00338_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00354_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00355_scan_match_α
.Lx00354_0:
                        .quad            .Lx00354_0_s
.Lx00354_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00345_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 904]
                        cmp              rax, 1
                                                                                        jge   .Lx00356_0
                        add              rax, r15
                        add              rax, 1
.Lx00356_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00356_239
                        add              rsp, 16
                                                                                        jmp   n00336_scan_upto_β
.Lx00356_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00356_240
                        add              rsp, 16
                                                                                        jmp   n00336_scan_upto_β
.Lx00356_240:
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
                                                                                        jmp   n00348_call_builtin_icon_α
n00345_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00336_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00347_scan_tab_α:
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
n00347_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_gedfnf_ω
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00359_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00352_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedfnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00353_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00360_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00361_binop_test_α
.Lx00360_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00355_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00362_239
                        add              rsp, 16
                                                                                        jmp   n00363_disjunction_α
.Lx00362_239:
                        mov              rdi, qword ptr [rip + .Lx00362_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00362_240
                        add              rsp, 16
                                                                                        jmp   n00363_disjunction_α
.Lx00362_240:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00364_scan_tab_α
.Lx00362_0:
                        .quad            .Lx00362_0_s
.Lx00362_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00358_return_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedfnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00359_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx00365_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00366_proc_gen_α
.Lx00365_0:
                        .quad            .Lx00365_0_s
.Lx00365_0_s:
                        .string          "TITL"
#-----------------------------------------------------------------------------------------------------------------------
n00361_binop_test_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 100
                                                                                        je    .Lx00367_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 100
                                                                                        je    .Lx00367_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx00367_2
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 6
                                                                                        jne   .Lx00367_2
.Lx00367_1:
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, qword ptr [rbp + 424]
                        cmp              rax, rcx
                                                                                        jle   n00328_disjunction_af
                        mov              rcx, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rcx
                        mov              rcx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rcx
                                                                                        jmp   n00368_var_α
.Lx00367_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        mov              r8d, 7
                        lea              r9, [rbp + 368]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00367_1
                        cmp              eax, 1
                                                                                        je    n00328_disjunction_af
                                                                                        jmp   n00368_var_α
.Lx00367_2:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00328_disjunction_af
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 744]
                        cmp              rax, 1
                                                                                        jge   .Lx00369_0
                        add              rax, r15
                        add              rax, 1
.Lx00369_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00369_239
                        add              rsp, 16
                                                                                        jmp   n00363_disjunction_α
.Lx00369_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00369_240
                        add              rsp, 16
                                                                                        jmp   n00363_disjunction_α
.Lx00369_240:
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
                                                                                        jmp   n00363_disjunction_α
n00364_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00363_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_disjunction_α:
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0
                                                                                        jmp   n00370_lit_charset_α
n00363_disjunction_as:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        jne   .Lx00371_0
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00372_scan_tab_α
.Lx00371_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00371_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00372_scan_tab_α
.Lx00371_1:
                                                                                        jmp   n00372_scan_tab_α
n00363_disjunction_β:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        je    n00373_scan_upto_β
                                                                                        jmp   n00363_disjunction_af
n00363_disjunction_af:
                        add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 1
                                                                                        je    n00374_lit_integer_α
                                                                                        jmp   n00375_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_proc_gen_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00376_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00376_21
.Lx00376_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx00376_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00376_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00376_23
.Lx00376_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx00376_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00376_1
                        lea              rcx, [rip + .Lx00376_3]
                        lea              rdx, [rip + .Lx00376_4]
                                                                                        jmp   rax
.Lx00376_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx00376_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00376_2
.Lx00376_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00376_2
.Lx00376_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx00376_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00376_2
.Lx00376_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00376_2
.Lx00376_1:
                        call             rt_faildescr@PLT
.Lx00376_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n00351_var_α
                                                                                        jmp   n00377_binop_α
n00366_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx00376_0:
                        .quad            .Lx00376_0_s
.Lx00376_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00368_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00378_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00372_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 616]
                        cmp              rax, 1
                                                                                        jge   .Lx00379_0
                        add              rax, r15
                        add              rax, 1
.Lx00379_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00379_239
                        add              rsp, 16
                                                                                        jmp   n00363_disjunction_β
.Lx00379_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00379_240
                        add              rsp, 16
                                                                                        jmp   n00363_disjunction_β
.Lx00379_240:
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
                                                                                        jmp   n00380_assign_α
n00372_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00363_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00370_lit_charset_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              dword ptr [rbp + 676], -1
                        mov              rax, qword ptr [rip + .Lx00381_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00373_scan_upto_α
n00370_lit_charset_β:
                                                                                        jmp   n00363_disjunction_af
.Lx00381_0:
                        .quad            .Lx00381_0_s
.Lx00381_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00373_scan_upto_α:
                        mov              qword ptr [rbp + 656], r14
.Lx00382_0:
                        mov              rax, qword ptr [rbp + 656]
                        cmp              rax, r15
                                                                                        jge   n00363_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00382_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00382_1
                        mov              qword ptr [rbp + 640], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00363_disjunction_as
.Lx00382_1:
                        inc              qword ptr [rbp + 656]
                                                                                        jmp   .Lx00382_0
n00373_scan_upto_β:
                        inc              qword ptr [rbp + 656]
                                                                                        jmp   .Lx00382_0
.Lx00382_2:
                        .quad            .Lx00382_2_s
.Lx00382_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00374_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00363_disjunction_as
n00374_lit_integer_β:
                                                                                        jmp   n00363_disjunction_af
.Lx00383_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00377_binop_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00384_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00378_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx00385_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00386_binop_α
.Lx00385_0:
                        .quad            .Lx00385_0_s
.Lx00385_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00380_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n00387_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00388_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_binop_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_conjunction_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00390_scan_α
n00387_conjunction_β:
                                                                                        jmp   n00375_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00351_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00391_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_scan_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496]
                                                                                        jmp   n00328_disjunction_α
n00390_scan_β:
                                                                                        jmp   n00328_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_binop_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00342_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_scan_α:
                        lea              rdi, [rbp + 480]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496]
                                                                                        jmp   n00328_disjunction_α
n00375_scan_β:
                                                                                        jmp   n00328_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_β:
                                                                                        jmp   proc_gedfnf_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1208]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_ω:
                        mov              rax, [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedfnf_dcα:
                        pop              r11
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1200], r11
                        lea              rax, [rip + .Lx00392_2]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rax, [rip + .Lx00392_3]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1152
                        mov              edx, 1200
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gedfnf_α_body
.Lx00392_2:
                        mov              rdx, qword ptr [rsp + -1248]
                        mov              rcx, rsp
                        add              rcx, -1232
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00392_3:
                        mov              rdi, qword ptr [rsp + -1248]
                        mov              rsi, rsp
                        add              rsi, -1232
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gedlnf_α
proc_gedlnf_α:
                        .global          proc_gedlnf_α
                        .global          proc_gedlnf_β
                        .global          proc_gedlnf_γ
                        .global          proc_gedlnf_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1008
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_gedlnf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00393_disjunction_α:
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              dword ptr [rbp + 880], 0
                                                                                        jmp   n00394_var_α
n00393_disjunction_as:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        jne   .Lx00395_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00396_assign_α
.Lx00395_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00395_1
                                                                                        jmp   n00396_assign_α
.Lx00395_1:
                                                                                        jmp   n00396_assign_α
n00393_disjunction_β:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        je    n00397_proc_gen_β
                                                                                        jmp   n00393_disjunction_af
n00393_disjunction_af:
                        add              dword ptr [rbp + 880], 1
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 1
                                                                                        je    proc_gedlnf_ω
                                                                                        jmp   n00398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00396_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00394_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00399_lit_string_α
n00394_var_β:
                                                                                        jmp   n00393_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00397_proc_gen_α:
                        mov              qword ptr [rbp + 944], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00400_20
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00400_21
.Lx00400_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx00400_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00400_22
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00400_23
.Lx00400_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        call             rt_arg_stage@PLT
.Lx00400_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00400_1
                        lea              rcx, [rip + .Lx00400_3]
                        lea              rdx, [rip + .Lx00400_4]
                                                                                        jmp   rax
.Lx00400_3:
                        mov              qword ptr [rbp + 952], rsp
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx00400_5
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00400_2
.Lx00400_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00400_2
.Lx00400_4:
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx00400_6
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00400_2
.Lx00400_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00400_2
.Lx00400_1:
                        call             rt_faildescr@PLT
.Lx00400_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n00393_disjunction_af
                                                                                        jmp   n00393_disjunction_as
n00397_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 952]
                                                                                        jmp   qword ptr [rsp]
.Lx00400_0:
                        .quad            .Lx00400_0_s
.Lx00400_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00398_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00401_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00399_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx00402_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00397_proc_gen_α
.Lx00402_0:
                        .quad            .Lx00402_0_s
.Lx00402_0_s:
                        .string          "NAME"
#-----------------------------------------------------------------------------------------------------------------------
n00401_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00403_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_var_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00405_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n00406_lit_charset_α
n00403_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx00407_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00408_assign_α
.Lx00407_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00407_1
                                                                                        jmp   n00408_assign_α
.Lx00407_1:
                                                                                        jmp   n00408_assign_α
n00403_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    n00409_scan_upto_β
                                                                                        jmp   n00403_disjunction_af
n00403_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    n00410_lit_integer_α
                                                                                        jmp   n00411_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00405_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx00412_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00413_binop_α
.Lx00412_0:
                        .quad            .Lx00412_0_s
.Lx00412_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n00414_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00415_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00408_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n00411_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_lit_charset_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              dword ptr [rbp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00416_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00409_scan_upto_α
n00406_lit_charset_β:
                                                                                        jmp   n00403_disjunction_af
.Lx00416_0:
                        .quad            .Lx00416_0_s
.Lx00416_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00409_scan_upto_α:
                        mov              qword ptr [rbp + 768], r14
.Lx00417_0:
                        mov              rax, qword ptr [rbp + 768]
                        cmp              rax, r15
                                                                                        jge   n00403_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00417_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00417_1
                        mov              qword ptr [rbp + 752], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00418_scan_tab_α
.Lx00417_1:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00417_0
n00409_scan_upto_β:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00417_0
.Lx00417_2:
                        .quad            .Lx00417_2_s
.Lx00417_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00410_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00419_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00420_scan_tab_α
n00410_lit_integer_β:
                                                                                        jmp   proc_gedlnf_ω
.Lx00419_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00421_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn875:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn875]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n00409_scan_upto_β
                                                                                        jmp   n00403_disjunction_as
n00421_call_builtin_icon_β:
                                                                                        jmp   n00409_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00413_binop_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00415_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx00423_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00424_var_α
.Lx00423_0:
                        .quad            .Lx00423_0_s
.Lx00423_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00425_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00426_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00411_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx00427_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00428_scan_match_α
.Lx00427_0:
                        .quad            .Lx00427_0_s
.Lx00427_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00418_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 760]
                        cmp              rax, 1
                                                                                        jge   .Lx00429_0
                        add              rax, r15
                        add              rax, 1
.Lx00429_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00429_239
                        add              rsp, 16
                                                                                        jmp   n00409_scan_upto_β
.Lx00429_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00429_240
                        add              rsp, 16
                                                                                        jmp   n00409_scan_upto_β
.Lx00429_240:
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
                                                                                        jmp   n00421_call_builtin_icon_α
n00418_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00409_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00420_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00430_0
                        add              rax, r15
                        add              rax, 1
.Lx00430_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00430_239
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
.Lx00430_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00430_240
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
.Lx00430_240:
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
                                                                                        jmp   n00431_return_α
n00420_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   proc_gedlnf_ω
#-----------------------------------------------------------------------------------------------------------------------
n00422_var_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00432_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00424_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00426_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedlnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00428_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00434_239
                        add              rsp, 16
                                                                                        jmp   n00435_disjunction_α
.Lx00434_239:
                        mov              rdi, qword ptr [rip + .Lx00434_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00434_240
                        add              rsp, 16
                                                                                        jmp   n00435_disjunction_α
.Lx00434_240:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00436_scan_tab_α
.Lx00434_0:
                        .quad            .Lx00434_0_s
.Lx00434_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00431_return_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_gedlnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00432_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00437_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00433_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx00438_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00439_proc_gen_α
.Lx00438_0:
                        .quad            .Lx00438_0_s
.Lx00438_0_s:
                        .string          "TITL"
#-----------------------------------------------------------------------------------------------------------------------
n00436_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 600]
                        cmp              rax, 1
                                                                                        jge   .Lx00440_0
                        add              rax, r15
                        add              rax, 1
.Lx00440_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00440_239
                        add              rsp, 16
                                                                                        jmp   n00435_disjunction_α
.Lx00440_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00440_240
                        add              rsp, 16
                                                                                        jmp   n00435_disjunction_α
.Lx00440_240:
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
                                                                                        jmp   n00435_disjunction_α
n00436_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00435_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00435_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00441_lit_charset_α
n00435_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00442_0
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00443_scan_tab_α
.Lx00442_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00442_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00443_scan_tab_α
.Lx00442_1:
                                                                                        jmp   n00443_scan_tab_α
n00435_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00444_scan_upto_β
                                                                                        jmp   n00435_disjunction_af
n00435_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00445_lit_integer_α
                                                                                        jmp   n00446_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00437_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00414_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_proc_gen_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00447_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00447_21
.Lx00447_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx00447_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00447_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00447_23
.Lx00447_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx00447_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00447_1
                        lea              rcx, [rip + .Lx00447_3]
                        lea              rdx, [rip + .Lx00447_4]
                                                                                        jmp   rax
.Lx00447_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx00447_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00447_2
.Lx00447_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00447_2
.Lx00447_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx00447_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00447_2
.Lx00447_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00447_2
.Lx00447_1:
                        call             rt_faildescr@PLT
.Lx00447_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n00425_var_α
                                                                                        jmp   n00448_binop_α
n00439_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx00447_0:
                        .quad            .Lx00447_0_s
.Lx00447_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00443_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 472]
                        cmp              rax, 1
                                                                                        jge   .Lx00449_0
                        add              rax, r15
                        add              rax, 1
.Lx00449_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00449_239
                        add              rsp, 16
                                                                                        jmp   n00435_disjunction_β
.Lx00449_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00449_240
                        add              rsp, 16
                                                                                        jmp   n00435_disjunction_β
.Lx00449_240:
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
                                                                                        jmp   n00450_assign_α
n00443_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00435_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00441_lit_charset_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              dword ptr [rbp + 532], -1
                        mov              rax, qword ptr [rip + .Lx00451_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00444_scan_upto_α
n00441_lit_charset_β:
                                                                                        jmp   n00435_disjunction_af
.Lx00451_0:
                        .quad            .Lx00451_0_s
.Lx00451_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00444_scan_upto_α:
                        mov              qword ptr [rbp + 512], r14
.Lx00452_0:
                        mov              rax, qword ptr [rbp + 512]
                        cmp              rax, r15
                                                                                        jge   n00435_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00452_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00452_1
                        mov              qword ptr [rbp + 496], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00435_disjunction_as
.Lx00452_1:
                        inc              qword ptr [rbp + 512]
                                                                                        jmp   .Lx00452_0
n00444_scan_upto_β:
                        inc              qword ptr [rbp + 512]
                                                                                        jmp   .Lx00452_0
.Lx00452_2:
                        .quad            .Lx00452_2_s
.Lx00452_2_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00445_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx00453_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00435_disjunction_as
n00445_lit_integer_β:
                                                                                        jmp   n00435_disjunction_af
.Lx00453_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00448_binop_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00454_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00455_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00454_binop_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00456_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00455_conjunction_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00457_scan_α
n00455_conjunction_β:
                                                                                        jmp   n00446_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00456_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00457_scan_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n00404_var_α
n00457_scan_β:
                                                                                        jmp   n00404_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00446_scan_α:
                        lea              rdi, [rbp + 336]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                                                                                        jmp   n00404_var_α
n00446_scan_β:
                                                                                        jmp   n00404_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_β:
                                                                                        jmp   proc_gedlnf_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1064]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gedlnf_dcα:
                        pop              r11
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1096], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 1056], r11
                        lea              rax, [rip + .Lx00458_2]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rax, [rip + .Lx00458_3]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 1008
                        mov              edx, 1056
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_gedlnf_α_body
.Lx00458_2:
                        mov              rdx, qword ptr [rsp + -1104]
                        mov              rcx, rsp
                        add              rcx, -1088
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00458_3:
                        mov              rdi, qword ptr [rsp + -1104]
                        mov              rsi, rsp
                        add              rsi, -1088
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_geddate_α
proc_geddate_α:
                        .global          proc_geddate_α
                        .global          proc_geddate_β
                        .global          proc_geddate_γ
                        .global          proc_geddate_ω
                        sub              rsp, 2672
                        mov              [rsp + 2648], rcx
                        mov              [rsp + 2656], rdx
                        mov              [rsp + 2664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2592
                        mov              edx, 2640
                        call             rt_jmp_frame_lexprep2@PLT
proc_geddate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00459_disjunction_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0
                                                                                        jmp   n00460_var_ref_α
n00459_disjunction_as:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        jne   .Lx00461_0
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n00462_disjunction_α
.Lx00461_0:
                                                                                        jmp   n00462_disjunction_α
n00459_disjunction_β:
                        mov              eax, dword ptr [rbp + 1104]
                                                                                        jmp   n00462_disjunction_α
n00459_disjunction_af:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                                                                                        jmp   n00462_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00462_disjunction_α:
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              dword ptr [rbp + 880], 0
                                                                                        jmp   n00463_var_α
n00462_disjunction_as:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        jne   .Lx00464_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00465_assign_α
.Lx00464_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00464_1
                                                                                        jmp   n00465_assign_α
.Lx00464_1:
                                                                                        jmp   n00465_assign_α
n00462_disjunction_β:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        je    n00466_proc_gen_β
                                                                                        jmp   n00462_disjunction_af
n00462_disjunction_af:
                        add              dword ptr [rbp + 880], 1
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 1
                                                                                        je    proc_geddate_ω
                                                                                        jmp   n00467_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00460_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00468_nulltest_var_α
n00460_var_ref_β:
                                                                                        jmp   n00459_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00469_conjunction_α:
                                                                                        jmp   n00459_disjunction_as
n00469_conjunction_β:
                                                                                        jmp   n00462_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00467_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00463_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00470_lit_string_α
n00463_var_β:
                                                                                        jmp   n00462_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00466_proc_gen_α:
                        mov              qword ptr [rbp + 1008], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00471_20
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00471_21
.Lx00471_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx00471_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00471_22
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00471_23
.Lx00471_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx00471_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00471_1
                        lea              rcx, [rip + .Lx00471_3]
                        lea              rdx, [rip + .Lx00471_4]
                                                                                        jmp   rax
.Lx00471_3:
                        mov              qword ptr [rbp + 1016], rsp
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx00471_5
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00471_2
.Lx00471_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00471_2
.Lx00471_4:
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx00471_6
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00471_2
.Lx00471_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00471_2
.Lx00471_1:
                        call             rt_faildescr@PLT
.Lx00471_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n00462_disjunction_af
                                                                                        jmp   n00472_lit_charset_α
n00466_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1016]
                                                                                        jmp   qword ptr [rsp]
.Lx00471_0:
                        .quad            .Lx00471_0_s
.Lx00471_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00473_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn1075:             .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1075]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n00466_proc_gen_β
                                                                                        jmp   n00462_disjunction_as
n00473_call_builtin_icon_β:
                                                                                        jmp   n00466_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00468_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 99
                                                                                        je    n00459_disjunction_af
                        mov              rdi, qword ptr [rbp + 2528]
                        mov              rsi, qword ptr [rbp + 2536]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00459_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00459_disjunction_af
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n00474_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx00475_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00476_assign_α
.Lx00475_0:
                        .quad            .Lx00475_0_s
.Lx00475_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00470_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx00477_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00466_proc_gen_α
.Lx00477_0:
                        .quad            .Lx00477_0_s
.Lx00477_0_s:
                        .string          "DATE"
#-----------------------------------------------------------------------------------------------------------------------
n00472_lit_charset_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx00478_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00473_call_builtin_icon_α
.Lx00478_0:
                        .quad            .Lx00478_0_s
.Lx00478_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00474_lit_integer_α:
                        mov              qword ptr [rbp + 2576], 6
                        mov              rax, qword ptr [rip + .Lx00479_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n00480_assign_var_α
.Lx00479_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00476_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n00481_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00480_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2576]
                        mov              rcx, qword ptr [rbp + 2584]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00459_disjunction_af
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n00482_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00483_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00482_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1086:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1086]
                        lea              rsi, [rbp + 2512]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n00484_var_ref_α
                                                                                        jmp   n00485_assign_α
n00482_call_builtin_icon_β:
                                                                                        jmp   n00484_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00483_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00486_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00487_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00488_var_α
n00487_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00489_0
                                                                                        jmp   proc_geddate_ω
.Lx00489_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00489_1
                                                                                        jmp   proc_geddate_ω
.Lx00489_1:
                                                                                        jmp   proc_geddate_ω
n00487_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_geddate_ω
                                                                                        jmp   proc_geddate_ω
n00487_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00490_var_α
                                                                                        jmp   proc_geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00485_assign_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00484_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n00491_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00486_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx00492_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00493_scan_pos_α
.Lx00492_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00488_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00494_unop_α
n00488_var_β:
                                                                                        jmp   n00487_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00490_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00495_lit_integer_α
n00490_var_β:
                                                                                        jmp   proc_geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00491_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx00496_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00497_subscript_α
.Lx00496_0:
                        .quad            .Lx00496_0_s
.Lx00496_0_s:
                        .string          "JAN"
#-----------------------------------------------------------------------------------------------------------------------
n00493_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00498_0
                        add              rax, r15
                        add              rax, 1
.Lx00498_0:
                        cmp              rax, 1
                                                                                        jl    n00499_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00499_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00499_var_α
                        mov              qword ptr [rbp + 368], 6
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00500_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_unop_α:
                        mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00501_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx00502_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00503_call_builtin_icon_α
.Lx00502_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n00497_subscript_α:
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 2432]
                        mov              rcx, qword ptr [rbp + 2440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00504_var_ref_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00505_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00500_scan_α:
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00487_disjunction_α
n00500_scan_β:
                                                                                        jmp   n00487_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00499_var_α:
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                                                                                        jmp   n00506_lit_charset_α
n00499_var_β:
                                                                                        jmp   n00500_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00501_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx00507_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00508_binop_test_α
.Lx00507_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n00503_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn1110:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1110]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_geddate_ω
                                                                                        jmp   n00509_return_α
n00503_call_builtin_icon_β:
                                                                                        jmp   proc_geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00505_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx00510_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00511_assign_var_α
.Lx00510_0:
                        .quad            .Lx00510_0_s
.Lx00510_0_s:
                        .string          "Jan"
#-----------------------------------------------------------------------------------------------------------------------
n00504_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n00512_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00506_lit_charset_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              dword ptr [rbp + 820], -1
                        mov              rax, qword ptr [rip + .Lx00513_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00514_scan_many_α
.Lx00513_0:
                        .quad            .Lx00513_0_s
.Lx00513_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00508_binop_test_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 100
                                                                                        je    .Lx00515_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 100
                                                                                        je    .Lx00515_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx00515_2
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx00515_2
.Lx00515_1:
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, qword ptr [rbp + 184]
                        cmp              rax, rcx
                                                                                        jle   n00487_disjunction_af
                        mov              rcx, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rcx
                        mov              rcx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rcx
                                                                                        jmp   n00516_var_α
.Lx00515_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 7
                        lea              r9, [rbp + 128]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00515_1
                        cmp              eax, 1
                                                                                        je    n00487_disjunction_af
                                                                                        jmp   n00516_var_α
.Lx00515_2:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 184]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00487_disjunction_af
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00509_return_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_geddate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00511_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdx, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00504_var_ref_α
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n00504_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx00517_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n00518_subscript_α
.Lx00517_0:
                        .quad            .Lx00517_0_s
.Lx00517_0_s:
                        .string          "FEB"
#-----------------------------------------------------------------------------------------------------------------------
n00514_scan_many_α:
                        mov              eax, r14d
.Lx00519_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00519_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00519_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00519_1
                        add              eax, 1
                                                                                        jmp   .Lx00519_0
.Lx00519_1:
                        cmp              eax, r14d
                                                                                        je    n00520_disjunction_α
                        mov              qword ptr [rbp + 800], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 808], rcx
                                                                                        jmp   n00521_scan_tab_α
n00514_scan_many_β:
                                                                                        jmp   n00520_disjunction_α
.Lx00519_2:
                        .quad            .Lx00519_2_s
.Lx00519_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00516_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00522_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00518_subscript_α:
                        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00523_var_ref_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n00524_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 808]
                        cmp              rax, 1
                                                                                        jge   .Lx00525_0
                        add              rax, r15
                        add              rax, 1
.Lx00525_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00525_239
                        add              rsp, 16
                                                                                        jmp   n00520_disjunction_α
.Lx00525_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00525_240
                        add              rsp, 16
                                                                                        jmp   n00520_disjunction_α
.Lx00525_240:
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
                                                                                        jmp   n00520_disjunction_α
n00521_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00520_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx00526_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00527_lit_integer_α
.Lx00526_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00524_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx00528_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00529_assign_var_α
.Lx00528_0:
                        .quad            .Lx00528_0_s
.Lx00528_0_s:
                        .string          "Feb"
#-----------------------------------------------------------------------------------------------------------------------
n00523_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00530_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n00531_lit_charset_α
n00520_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx00532_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00533_scan_tab_α
.Lx00532_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00532_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00533_scan_tab_α
.Lx00532_1:
                                                                                        jmp   n00533_scan_tab_α
n00520_disjunction_β:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        je    n00534_scan_upto_β
                                                                                        jmp   n00520_disjunction_af
n00520_disjunction_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1
                                                                                        je    n00535_lit_integer_α
                                                                                        jmp   n00536_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00527_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx00537_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00538_subscript_α
.Lx00537_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00529_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2400]
                        mov              rcx, qword ptr [rbp + 2408]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00523_var_ref_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n00523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00530_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx00539_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n00540_subscript_α
.Lx00539_0:
                        .quad            .Lx00539_0_s
.Lx00539_0_s:
                        .string          "MAR"
#-----------------------------------------------------------------------------------------------------------------------
n00533_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 680]
                        cmp              rax, 1
                                                                                        jge   .Lx00541_0
                        add              rax, r15
                        add              rax, 1
.Lx00541_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00541_239
                        add              rsp, 16
                                                                                        jmp   n00520_disjunction_β
.Lx00541_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00541_240
                        add              rsp, 16
                                                                                        jmp   n00520_disjunction_β
.Lx00541_240:
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
                                                                                        jmp   n00542_assign_α
n00533_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00520_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00531_lit_charset_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], -1
                        mov              rax, qword ptr [rip + .Lx00543_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00534_scan_upto_α
n00531_lit_charset_β:
                                                                                        jmp   n00520_disjunction_af
.Lx00543_0:
                        .quad            .Lx00543_0_s
.Lx00543_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00534_scan_upto_α:
                        mov              qword ptr [rbp + 720], r14
.Lx00544_0:
                        mov              rax, qword ptr [rbp + 720]
                        cmp              rax, r15
                                                                                        jge   n00520_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00544_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00544_1
                        mov              qword ptr [rbp + 704], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00520_disjunction_as
.Lx00544_1:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00544_0
n00534_scan_upto_β:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00544_0
.Lx00544_2:
                        .quad            .Lx00544_2_s
.Lx00544_2_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00535_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx00545_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00520_disjunction_as
n00535_lit_integer_β:
                                                                                        jmp   n00520_disjunction_af
.Lx00545_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00538_subscript_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              r8, qword ptr [rbp + 112]
                        mov              r9, qword ptr [rbp + 120]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    proc_geddate_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00546_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00540_subscript_α:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00547_var_ref_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n00548_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00542_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00536_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00546_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_geddate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00548_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx00549_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00550_assign_var_α
.Lx00549_0:
                        .quad            .Lx00549_0_s
.Lx00549_0_s:
                        .string          "Mar"
#-----------------------------------------------------------------------------------------------------------------------
n00547_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n00551_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00536_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00552_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2288]
                        mov              rsi, qword ptr [rbp + 2296]
                        mov              rdx, qword ptr [rbp + 2320]
                        mov              rcx, qword ptr [rbp + 2328]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00547_var_ref_α
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n00547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx00553_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00554_subscript_α
.Lx00553_0:
                        .quad            .Lx00553_0_s
.Lx00553_0_s:
                        .string          "APR"
#-----------------------------------------------------------------------------------------------------------------------
n00552_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00555_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00556_disjunction_α
.Lx00555_0:
                        .quad            .Lx00555_0_s
.Lx00555_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00554_subscript_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00557_var_ref_α
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n00558_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00556_disjunction_α:
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                        mov              dword ptr [rbp + 512], 0
                                                                                        jmp   n00559_var_ref_α
n00556_disjunction_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0
                                                                                        jne   .Lx00560_0
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00561_binop_α
.Lx00560_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00560_1
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00561_binop_α
.Lx00560_1:
                                                                                        jmp   n00561_binop_α
n00556_disjunction_β:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0
                                                                                        je    n00556_disjunction_af
                                                                                        jmp   n00556_disjunction_af
n00556_disjunction_af:
                        add              dword ptr [rbp + 512], 1
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 1
                                                                                        je    n00562_var_α
                                                                                        jmp   n00486_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00558_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx00563_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00564_assign_var_α
.Lx00563_0:
                        .quad            .Lx00563_0_s
.Lx00563_0_s:
                        .string          "Apr"
#-----------------------------------------------------------------------------------------------------------------------
n00557_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n00565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00561_binop_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00566_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00559_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00567_var_α
n00559_var_ref_β:
                                                                                        jmp   n00556_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00562_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00556_disjunction_as
n00562_var_β:
                                                                                        jmp   n00556_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00568_unop_test_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 99
                                                                                        je    n00556_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00556_disjunction_af
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00556_disjunction_as
n00568_unop_test_β:
                                                                                        jmp   n00556_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00564_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2240]
                        mov              rcx, qword ptr [rbp + 2248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00557_var_ref_α
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n00557_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00565_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx00569_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n00570_subscript_α
.Lx00569_0:
                        .quad            .Lx00569_0_s
.Lx00569_0_s:
                        .string          "MAY"
#-----------------------------------------------------------------------------------------------------------------------
n00566_binop_α:
                        mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00571_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00572_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00570_subscript_α:
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00573_var_ref_α
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n00574_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00571_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00575_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00572_subscript_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00556_disjunction_af
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00576_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00574_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx00577_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n00578_assign_var_α
.Lx00577_0:
                        .quad            .Lx00577_0_s
.Lx00577_0_s:
                        .string          "May"
#-----------------------------------------------------------------------------------------------------------------------
n00573_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n00579_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00575_conjunction_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00486_lit_integer_α
n00575_conjunction_β:
                                                                                        jmp   n00486_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00576_deref_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00556_disjunction_af
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00568_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00578_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00573_var_ref_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n00573_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00579_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx00580_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n00581_subscript_α
.Lx00580_0:
                        .quad            .Lx00580_0_s
.Lx00580_0_s:
                        .string          "JUN"
#-----------------------------------------------------------------------------------------------------------------------
n00581_subscript_α:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00582_var_ref_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n00583_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00583_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx00584_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00585_assign_var_α
.Lx00584_0:
                        .quad            .Lx00584_0_s
.Lx00584_0_s:
                        .string          "Jun"
#-----------------------------------------------------------------------------------------------------------------------
n00582_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n00586_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00585_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00582_var_ref_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n00582_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00586_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx00587_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n00588_subscript_α
.Lx00587_0:
                        .quad            .Lx00587_0_s
.Lx00587_0_s:
                        .string          "JUL"
#-----------------------------------------------------------------------------------------------------------------------
n00588_subscript_α:
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00589_var_ref_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n00590_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00590_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx00591_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00592_assign_var_α
.Lx00591_0:
                        .quad            .Lx00591_0_s
.Lx00591_0_s:
                        .string          "Jul"
#-----------------------------------------------------------------------------------------------------------------------
n00589_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n00593_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00592_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00589_var_ref_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n00589_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00593_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx00594_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n00595_subscript_α
.Lx00594_0:
                        .quad            .Lx00594_0_s
.Lx00594_0_s:
                        .string          "AUG"
#-----------------------------------------------------------------------------------------------------------------------
n00595_subscript_α:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00596_var_ref_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n00597_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00597_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx00598_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00599_assign_var_α
.Lx00598_0:
                        .quad            .Lx00598_0_s
.Lx00598_0_s:
                        .string          "Aug"
#-----------------------------------------------------------------------------------------------------------------------
n00596_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n00600_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00599_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00596_var_ref_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n00596_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00600_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx00601_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00602_subscript_α
.Lx00601_0:
                        .quad            .Lx00601_0_s
.Lx00601_0_s:
                        .string          "SEP"
#-----------------------------------------------------------------------------------------------------------------------
n00602_subscript_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00603_var_ref_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n00604_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00604_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx00605_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n00606_assign_var_α
.Lx00605_0:
                        .quad            .Lx00605_0_s
.Lx00605_0_s:
                        .string          "Sep"
#-----------------------------------------------------------------------------------------------------------------------
n00603_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00607_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00606_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00603_var_ref_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n00603_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00607_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx00608_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n00609_subscript_α
.Lx00608_0:
                        .quad            .Lx00608_0_s
.Lx00608_0_s:
                        .string          "OCT"
#-----------------------------------------------------------------------------------------------------------------------
n00609_subscript_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00610_var_ref_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00611_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00611_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx00612_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n00613_assign_var_α
.Lx00612_0:
                        .quad            .Lx00612_0_s
.Lx00612_0_s:
                        .string          "Oct"
#-----------------------------------------------------------------------------------------------------------------------
n00610_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n00614_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00613_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00610_var_ref_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00610_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00614_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx00615_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n00616_subscript_α
.Lx00615_0:
                        .quad            .Lx00615_0_s
.Lx00615_0_s:
                        .string          "NOV"
#-----------------------------------------------------------------------------------------------------------------------
n00616_subscript_α:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00617_var_ref_α
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n00618_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00618_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx00619_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00620_assign_var_α
.Lx00619_0:
                        .quad            .Lx00619_0_s
.Lx00619_0_s:
                        .string          "Nov"
#-----------------------------------------------------------------------------------------------------------------------
n00617_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n00621_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00620_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00617_var_ref_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n00617_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00621_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx00622_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00623_subscript_α
.Lx00622_0:
                        .quad            .Lx00622_0_s
.Lx00622_0_s:
                        .string          "DEC"
#-----------------------------------------------------------------------------------------------------------------------
n00623_subscript_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00624_var_ref_α
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n00625_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00625_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx00626_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00627_assign_var_α
.Lx00626_0:
                        .quad            .Lx00626_0_s
.Lx00626_0_s:
                        .string          "Dec"
#-----------------------------------------------------------------------------------------------------------------------
n00624_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n00628_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00627_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00624_var_ref_α
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n00624_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00628_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx00629_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n00630_subscript_α
.Lx00629_0:
                        .quad            .Lx00629_0_s
.Lx00629_0_s:
                        .string          "ABT"
#-----------------------------------------------------------------------------------------------------------------------
n00630_subscript_α:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1480]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00631_var_ref_α
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n00632_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00632_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx00633_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n00634_assign_var_α
.Lx00633_0:
                        .quad            .Lx00633_0_s
.Lx00633_0_s:
                        .string          "abt"
#-----------------------------------------------------------------------------------------------------------------------
n00631_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00635_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00634_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00631_var_ref_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n00631_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00635_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx00636_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00637_subscript_α
.Lx00636_0:
                        .quad            .Lx00636_0_s
.Lx00636_0_s:
                        .string          "BEF"
#-----------------------------------------------------------------------------------------------------------------------
n00637_subscript_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00638_var_ref_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00639_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00639_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx00640_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00641_assign_var_α
.Lx00640_0:
                        .quad            .Lx00640_0_s
.Lx00640_0_s:
                        .string          "bef"
#-----------------------------------------------------------------------------------------------------------------------
n00638_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n00642_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00641_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00638_var_ref_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n00638_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00642_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx00643_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00644_subscript_α
.Lx00643_0:
                        .quad            .Lx00643_0_s
.Lx00643_0_s:
                        .string          "AFT"
#-----------------------------------------------------------------------------------------------------------------------
n00644_subscript_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00645_var_ref_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n00646_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00646_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx00647_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00648_assign_var_α
.Lx00647_0:
                        .quad            .Lx00647_0_s
.Lx00647_0_s:
                        .string          "aft"
#-----------------------------------------------------------------------------------------------------------------------
n00645_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n00649_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00648_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00645_var_ref_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n00645_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00649_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx00650_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00651_subscript_α
.Lx00650_0:
                        .quad            .Lx00650_0_s
.Lx00650_0_s:
                        .string          "CAL"
#-----------------------------------------------------------------------------------------------------------------------
n00651_subscript_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00652_var_ref_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n00653_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00653_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx00654_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n00655_assign_var_α
.Lx00654_0:
                        .quad            .Lx00654_0_s
.Lx00654_0_s:
                        .string          "cal"
#-----------------------------------------------------------------------------------------------------------------------
n00652_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n00656_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00655_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00652_var_ref_α
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n00652_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00656_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx00657_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00658_subscript_α
.Lx00657_0:
                        .quad            .Lx00657_0_s
.Lx00657_0_s:
                        .string          "EST"
#-----------------------------------------------------------------------------------------------------------------------
n00658_subscript_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00462_disjunction_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00659_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00659_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx00660_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00661_assign_var_α
.Lx00660_0:
                        .quad            .Lx00660_0_s
.Lx00660_0_s:
                        .string          "est"
#-----------------------------------------------------------------------------------------------------------------------
n00661_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00462_disjunction_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00469_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_β:
                                                                                        jmp   proc_geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2648]
                        lea              rsp, [rbp + 2672]
                        mov              rbp, [rbp + 2664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_ω:
                        mov              rax, [rbp + 2656]
                        lea              rsp, [rbp + 2672]
                        mov              rbp, [rbp + 2664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_geddate_dcα:
                        pop              r11
                        sub              rsp, 2688
                        mov              qword ptr [rsp + 2680], rbp
                        mov              rbp, rsp
                        add              rbp, 16
                        mov              qword ptr [rbp + 2640], r11
                        lea              rax, [rip + .Lx00662_2]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rax, [rip + .Lx00662_3]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 2592
                        mov              edx, 2640
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_geddate_α_body
.Lx00662_2:
                        mov              rdx, qword ptr [rsp + -2688]
                        mov              rcx, rsp
                        add              rcx, -2672
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00662_3:
                        mov              rdi, qword ptr [rsp + -2688]
                        mov              rsi, rsp
                        add              rsi, -2672
                        mov              r11, qword ptr [rsp + -32]
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        mov              r12, qword ptr [1879048192]
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
                        sub              rsp, 5032
                        mov              rdi, rsp
                        mov              ecx, 5032
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 5024], rbp
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
n00663_disjunction_α:
                        mov              qword ptr [rbp + 4448], 0
                        mov              qword ptr [rbp + 4456], 0
                        mov              dword ptr [rbp + 4464], 0
                                                                                        jmp   n00664_var_α
n00663_disjunction_as:
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, 0
                                                                                        jne   .Lx00665_0
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n00666_var_α
.Lx00665_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00665_1
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n00666_var_α
.Lx00665_1:
                                                                                        jmp   n00666_var_α
n00663_disjunction_β:
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, 0
                                                                                        je    n00667_disjunction_β
                                                                                        jmp   n00666_var_α
n00663_disjunction_af:
                        add              dword ptr [rbp + 4464], 1
                        mov              eax, dword ptr [rbp + 4464]
                        cmp              eax, 1
                                                                                        je    n00668_keyword_icon_α
                                                                                        jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00666_var_α:
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n00669_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00664_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n00670_unop_α
n00664_var_β:
                                                                                        jmp   n00663_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00667_disjunction_α:
                        mov              qword ptr [rbp + 4496], 0
                        mov              qword ptr [rbp + 4504], 0
                        mov              dword ptr [rbp + 4512], 0
                                                                                        jmp   n00671_var_ref_α
n00667_disjunction_as:
                        mov              eax, dword ptr [rbp + 4512]
                        cmp              eax, 0
                                                                                        jne   .Lx00672_0
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n00673_assign_α
.Lx00672_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00672_1
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n00673_assign_α
.Lx00672_1:
                                                                                        jmp   n00673_assign_α
n00667_disjunction_β:
                        mov              eax, dword ptr [rbp + 4512]
                        cmp              eax, 0
                                                                                        je    n00667_disjunction_af
                                                                                        jmp   n00667_disjunction_af
n00667_disjunction_af:
                        add              dword ptr [rbp + 4512], 1
                        mov              eax, dword ptr [rbp + 4512]
                        cmp              eax, 1
                                                                                        je    n00674_lit_string_α
                                                                                        jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00668_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00675_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00666_var_α
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                                                                                        jmp   n00676_assign_α
n00668_keyword_icon_β:
                                                                                        jmp   n00666_var_α
.Lx00675_0:
                        .quad            .Lx00675_0_s
.Lx00675_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n00673_assign_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              rdx, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                                                                                        jmp   n00663_disjunction_as
n00673_assign_β:
                                                                                        jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00676_assign_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              rdx, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n00663_disjunction_as
n00676_assign_β:
                                                                                        jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00669_call_proc_staged_α:
                        lea              rsi, [rbp + 4432]
                        call             proc_gedload_dcα
                                                                                        jmp   .Lx00677_2
.Lx00677_2:
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              eax, 99
                                                                                        je    n00678_var_α
                                                                                        jmp   n00679_assign_α
n00669_call_proc_staged_β:
                                                                                        jmp   n00678_var_α
.Lx00677_0:
                        .quad            .Lx00677_0_s
.Lx00677_0_s:
                        .string          "gedload"
#-----------------------------------------------------------------------------------------------------------------------
n00678_var_α:
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n00680_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00670_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n00681_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00671_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n00682_lit_integer_α
n00671_var_ref_β:
                                                                                        jmp   n00667_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00674_lit_string_α:
                        mov              qword ptr [rbp + 4704], 1
                        mov              rax, qword ptr [rip + .Lx00683_0]
                        mov              qword ptr [rbp + 4712], rax
                                                                                        jmp   n00684_var_ref_α
n00674_lit_string_β:
                                                                                        jmp   n00667_disjunction_af
.Lx00683_0:
                        .quad            .Lx00683_0_s
.Lx00683_0_s:
                        .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n00685_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 4552], rax
                        .section         .rodata
.Lrkfn1454:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1454]
                        lea              rsi, [rbp + 4544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              eax, 99
                                                                                        je    n00667_disjunction_af
                                                                                        jmp   n00667_disjunction_as
n00685_call_builtin_icon_β:
                                                                                        jmp   n00667_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00686_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4664], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4680], rax
                        .section         .rodata
.Lrkfn1456:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1456]
                        lea              rsi, [rbp + 4656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        cmp              eax, 99
                                                                                        je    n00667_disjunction_af
                                                                                        jmp   n00667_disjunction_as
n00686_call_builtin_icon_β:
                                                                                        jmp   n00667_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00679_assign_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              rdx, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n00678_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00680_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4344], rax
                        .section         .rodata
.Lrkfn1459:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1459]
                        lea              rsi, [rbp + 4336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 99
                                                                                        je    n00687_make_list_α
                                                                                        jmp   n00687_make_list_α
n00680_call_builtin_icon_β:
                                                                                        jmp   n00687_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00687_make_list_α:
                        lea              rdi, [rbp + 4320]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                                                                                        jmp   n00688_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00681_lit_integer_α:
                        mov              qword ptr [rbp + 4832], 6
                        mov              rax, qword ptr [rip + .Lx00689_0]
                        mov              qword ptr [rbp + 4840], rax
                                                                                        jmp   n00690_binop_test_α
.Lx00689_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00682_lit_integer_α:
                        mov              qword ptr [rbp + 4592], 6
                        mov              rax, qword ptr [rip + .Lx00691_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n00692_subscript_α
.Lx00691_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00684_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                                                                                        jmp   n00693_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00688_assign_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              rdx, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   n00694_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00690_binop_test_α:
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 100
                                                                                        je    .Lx00695_0
                        mov              eax, dword ptr [rbp + 4832]
                        cmp              eax, 100
                                                                                        je    .Lx00695_0
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 6
                                                                                        jne   .Lx00695_2
                        mov              eax, dword ptr [rbp + 4832]
                        cmp              eax, 6
                                                                                        jne   .Lx00695_2
.Lx00695_1:
                        mov              rax, qword ptr [rbp + 4808]
                        mov              rcx, qword ptr [rbp + 4840]
                        cmp              rax, rcx
                                                                                        jle   n00663_disjunction_af
                        mov              rcx, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4784], rcx
                        mov              rcx, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4792], rcx
                                                                                        jmp   n00667_disjunction_α
.Lx00695_0:
                        mov              rdi, qword ptr [rbp + 4800]
                        mov              rsi, qword ptr [rbp + 4808]
                        mov              rdx, qword ptr [rbp + 4832]
                        mov              rcx, qword ptr [rbp + 4840]
                        mov              r8d, 7
                        lea              r9, [rbp + 4784]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00695_1
                        cmp              eax, 1
                                                                                        je    n00663_disjunction_af
                                                                                        jmp   n00667_disjunction_α
.Lx00695_2:
                        mov              rdi, qword ptr [rbp + 4800]
                        mov              rsi, qword ptr [rbp + 4808]
                        mov              rdx, qword ptr [rbp + 4832]
                        mov              rcx, qword ptr [rbp + 4840]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00663_disjunction_af
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n00667_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00692_subscript_α:
                        mov              rdi, qword ptr [rbp + 4576]
                        mov              rsi, qword ptr [rbp + 4584]
                        mov              rdx, qword ptr [rbp + 4592]
                        mov              rcx, qword ptr [rbp + 4600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00667_disjunction_af
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                                                                                        jmp   n00696_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00693_lit_integer_α:
                        mov              qword ptr [rbp + 4736], 6
                        mov              rax, qword ptr [rip + .Lx00697_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n00698_subscript_α
.Lx00697_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00694_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1471:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1471]
                        lea              rsi, [rbp + 4288]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 99
                                                                                        je    n00699_var_α
                                                                                        jmp   n00700_assign_α
n00694_call_builtin_icon_β:
                                                                                        jmp   n00699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00696_deref_α:
                        mov              rdi, qword ptr [rbp + 4608]
                        mov              rsi, qword ptr [rbp + 4616]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00667_disjunction_af
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                                                                                        jmp   n00685_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00698_subscript_α:
                        mov              rdi, qword ptr [rbp + 4720]
                        mov              rsi, qword ptr [rbp + 4728]
                        mov              rdx, qword ptr [rbp + 4736]
                        mov              rcx, qword ptr [rbp + 4744]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00667_disjunction_af
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n00701_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00700_assign_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              rdx, qword ptr [rbp + 4280]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00699_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00699_var_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n00702_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00701_deref_α:
                        mov              rdi, qword ptr [rbp + 4752]
                        mov              rsi, qword ptr [rbp + 4760]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00667_disjunction_af
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                                                                                        jmp   n00686_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00702_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00703_0]
                        mov              rsi, qword ptr [rbp + 3888]
                        mov              rdx, qword ptr [rbp + 3896]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00704_var_α
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                                                                                        jmp   n00705_iterate_α
.Lx00703_0:
                        .quad            .Lx00703_0_s
.Lx00703_0_s:
                        .string          "ind"
#-----------------------------------------------------------------------------------------------------------------------
n00704_var_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 3816], rax
                                                                                        jmp   n00706_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00705_iterate_α:
                        mov              qword ptr [rbp + 3856], 0
.Lx00707_0:
                        mov              rdi, qword ptr [rbp + 3872]
                        mov              rsi, qword ptr [rbp + 3880]
                        mov              rdx, qword ptr [rbp + 3856]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              rax, 99
                                                                                        je    n00704_var_α
                                                                                        jmp   n00708_assign_α
n00705_iterate_β:
                        inc              qword ptr [rbp + 3856]
                                                                                        jmp   .Lx00707_0
#-----------------------------------------------------------------------------------------------------------------------
n00706_lit_integer_α:
                        mov              qword ptr [rbp + 3824], 6
                        mov              rax, qword ptr [rip + .Lx00709_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n00710_call_builtin_icon_α
.Lx00709_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00711_lit_integer_α:
                        mov              qword ptr [rbp + 3728], 6
                        mov              rax, qword ptr [rip + .Lx00712_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n00713_assign_α
.Lx00712_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00708_assign_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              rdx, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00714_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00710_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3768], rax
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3784], rax
                        .section         .rodata
.Lrkfn1487:             .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1487]
                        lea              rsi, [rbp + 3760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n00711_lit_integer_α
                                                                                        jmp   n00715_assign_α
n00710_call_builtin_icon_β:
                                                                                        jmp   n00711_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00713_assign_α:
                        mov              rax, qword ptr [rbp + 3728]
                        mov              rdx, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                                                                                        jmp   n00716_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00714_bound_α:
                        mov              qword ptr [rbp + 3904], rsp
                                                                                        jmp   n00717_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00715_assign_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                                                                                        jmp   n00711_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00716_var_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n00718_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00717_var_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n00719_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00718_iterate_α:
                        mov              qword ptr [rbp + 3600], 0
.Lx00720_0:
                        mov              rdi, qword ptr [rbp + 3616]
                        mov              rsi, qword ptr [rbp + 3624]
                        mov              rdx, qword ptr [rbp + 3600]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              rax, 99
                                                                                        je    n00721_var_α
                                                                                        jmp   n00722_field_var_α
n00718_iterate_β:
                        inc              qword ptr [rbp + 3600]
                                                                                        jmp   .Lx00720_0
#-----------------------------------------------------------------------------------------------------------------------
n00721_var_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00723_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00719_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                                                                                        jmp   n00724_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00725_unmark_α:
                        mov              rsp, qword ptr [rbp + 3904]
                                                                                        jmp   n00705_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00722_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00726_0]
                        mov              rsi, qword ptr [rbp + 3584]
                        mov              rdx, qword ptr [rbp + 3592]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n00721_var_α
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n00727_var_α
.Lx00726_0:
                        .quad            .Lx00726_0_s
.Lx00726_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00723_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx00728_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   n00729_assign_α
n00723_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx00728_0
#-----------------------------------------------------------------------------------------------------------------------
n00724_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n00730_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00727_var_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n00731_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00729_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                                                                                        jmp   n00732_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00730_subscript_α:
                        mov              rdi, qword ptr [rbp + 4032]
                        mov              rsi, qword ptr [rbp + 4040]
                        mov              rdx, qword ptr [rbp + 4048]
                        mov              rcx, qword ptr [rbp + 4056]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00725_unmark_α
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n00733_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00731_lit_integer_α:
                        mov              qword ptr [rbp + 3712], 6
                        mov              rax, qword ptr [rip + .Lx00734_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n00735_op75_α
.Lx00734_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00732_bound_α:
                        mov              qword ptr [rbp + 96], rsp
                                                                                        jmp   n00736_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00733_lit_integer_α:
                        mov              qword ptr [rbp + 4176], 6
                        mov              rax, qword ptr [rip + .Lx00737_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n00738_var_α
.Lx00737_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00735_op75_α:
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 7
                                                                                        je    .Lx00739_1
                        cmp              eax, 6
                                                                                        jne   .Lx00739_0
                        mov              eax, dword ptr [rbp + 3712]
                        cmp              eax, 6
                                                                                        jne   .Lx00739_0
.Lx00739_1:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n00740_binop_α
.Lx00739_0:
                        lea              rdi, [rbp + 4976]
                        lea              rsi, [rbp + 3712]
                        lea              rdx, [rbp + 3680]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00740_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00736_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1520:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1520]
                        lea              rsi, [rbp + 3552]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n00741_lit_string_α
                                                                                        jmp   n00741_lit_string_α
n00736_call_builtin_icon_β:
                                                                                        jmp   n00741_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00738_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n00742_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00740_binop_α:
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 100
                                                                                        je    .Lx00743_0
                        mov              eax, dword ptr [rbp + 3680]
                        cmp              eax, 6
                                                                                        jne   .Lx00743_2
.Lx00743_1:
                        mov              rax, qword ptr [rbp + 3688]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 3664], 6
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n00744_assign_α
.Lx00743_0:
                        mov              rdi, qword ptr [rbp + 3680]
                        mov              rsi, qword ptr [rbp + 3688]
                        mov              rdx, qword ptr [rbp + 3712]
                        mov              rcx, qword ptr [rbp + 3720]
                        mov              r8d, 0
                        lea              r9, [rbp + 3664]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00744_assign_α
.Lx00743_2:
                        mov              rdi, qword ptr [rbp + 3680]
                        mov              rsi, qword ptr [rbp + 3688]
                        mov              rdx, qword ptr [rbp + 3712]
                        mov              rcx, qword ptr [rbp + 3720]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00718_iterate_β
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                                                                                        jmp   n00744_assign_α
n00740_binop_β:
                                                                                        jmp   n00718_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00741_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx00745_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n00746_var_α
.Lx00745_0:
                        .quad            .Lx00745_0_s
.Lx00745_0_s:
                        .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n00742_call_proc_staged_α:
                        lea              rsi, [rbp + 4240]
                        call             proc_sortkey_dcα
                                                                                        jmp   .Lx00747_2
.Lx00747_2:
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                        cmp              eax, 99
                                                                                        je    n00725_unmark_α
                                                                                        jmp   n00748_var_α
n00742_call_proc_staged_β:
                                                                                        jmp   n00725_unmark_α
.Lx00747_0:
                        .quad            .Lx00747_0_s
.Lx00747_0_s:
                        .string          "sortkey"
#-----------------------------------------------------------------------------------------------------------------------
n00744_assign_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              rdx, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n00749_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00746_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n00750_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00748_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n00751_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00749_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3568]
                        mov              rsi, qword ptr [rbp + 3576]
                        mov              rdx, qword ptr [rbp + 3648]
                        mov              rcx, qword ptr [rbp + 3656]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00721_var_α
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n00718_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00750_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00752_0]
                        mov              rsi, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00753_disjunction_α
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n00754_lit_string_α
.Lx00752_0:
                        .quad            .Lx00752_0_s
.Lx00752_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00753_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n00755_var_α
n00753_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx00756_0
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n00757_lit_string_α
.Lx00756_0:
                                                                                        jmp   n00757_lit_string_α
n00753_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n00758_proc_gen_β
n00753_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n00757_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00751_call_α:
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4136], rax
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4152], rax
                        .section         .rodata
.Lrkfn1537:             .string          "person"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1537]
                        lea              rsi, [rbp + 4112]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 99
                                                                                        je    n00725_unmark_α
                                                                                        jmp   n00759_assign_var_α
n00751_call_β:
                                                                                        jmp   n00725_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00754_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx00760_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n00761_var_α
.Lx00760_0:
                        .quad            .Lx00760_0_s
.Lx00760_0_s:
                        .string          "] "
#-----------------------------------------------------------------------------------------------------------------------
n00757_lit_string_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx00762_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00763_var_α
.Lx00762_0:
                        .quad            .Lx00762_0_s
.Lx00762_0_s:
                        .string          "b."
#-----------------------------------------------------------------------------------------------------------------------
n00755_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n00764_field_get_α
n00755_var_β:
                                                                                        jmp   n00753_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00758_proc_gen_α:
                        mov              qword ptr [rbp + 2912], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00765_20
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00765_21
.Lx00765_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        call             rt_arg_stage@PLT
.Lx00765_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00765_22
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00765_23
.Lx00765_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        call             rt_arg_stage@PLT
.Lx00765_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00765_1
                        lea              rcx, [rip + .Lx00765_3]
                        lea              rdx, [rip + .Lx00765_4]
                                                                                        jmp   rax
.Lx00765_3:
                        mov              qword ptr [rbp + 2920], rsp
                        mov              rax, qword ptr [rbp + 2912]
                        test             rax, rax
                                                                                        jne   .Lx00765_5
                        mov              qword ptr [rbp + 2912], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00765_2
.Lx00765_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00765_2
.Lx00765_4:
                        mov              rax, qword ptr [rbp + 2912]
                        test             rax, rax
                                                                                        jne   .Lx00765_6
                        mov              qword ptr [rbp + 2912], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00765_2
.Lx00765_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00765_2
.Lx00765_1:
                        call             rt_faildescr@PLT
.Lx00765_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n00757_lit_string_α
                                                                                        jmp   n00766_call_proc_staged_α
n00758_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2920]
                                                                                        jmp   qword ptr [rsp]
.Lx00765_0:
                        .quad            .Lx00765_0_s
.Lx00765_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00767_conjunction_α:
                                                                                        jmp   n00753_disjunction_as
n00767_conjunction_β:
                                                                                        jmp   n00757_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00759_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4064]
                        mov              rsi, qword ptr [rbp + 4072]
                        mov              rdx, qword ptr [rbp + 4096]
                        mov              rcx, qword ptr [rbp + 4104]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00725_unmark_α
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n00768_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00761_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n00769_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00763_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n00770_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00764_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00771_0]
                        mov              rsi, qword ptr [rbp + 3264]
                        mov              rdx, qword ptr [rbp + 3272]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00753_disjunction_af
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n00772_lit_string_α
.Lx00771_0:
                        .quad            .Lx00771_0_s
.Lx00771_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00766_call_proc_staged_α:
                        lea              rsi, [rbp + 2848]
                        lea              rdx, [rbp + 2864]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00773_2
.Lx00773_2:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n00758_proc_gen_β
                                                                                        jmp   n00767_conjunction_α
n00766_call_proc_staged_β:
                                                                                        jmp   n00758_proc_gen_β
.Lx00773_0:
                        .quad            .Lx00773_0_s
.Lx00773_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00768_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3976], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 3992], rax
                        .section         .rodata
.Lrkfn1554:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1554]
                        lea              rsi, [rbp + 3968]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    n00725_unmark_α
                                                                                        jmp   n00725_unmark_α
n00768_call_builtin_icon_β:
                                                                                        jmp   n00725_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00769_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00774_0]
                        mov              rsi, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00753_disjunction_α
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n00775_call_proc_staged_α
.Lx00774_0:
                        .quad            .Lx00774_0_s
.Lx00774_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00770_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00776_0]
                        mov              rsi, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00777_keyword_icon_α
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n00778_lit_string_α
.Lx00776_0:
                        .quad            .Lx00776_0_s
.Lx00776_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00777_keyword_icon_α:
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                                                                                        jmp   n00779_assign_α
n00777_keyword_icon_β:
                                                                                        jmp   n00780_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00772_lit_string_α:
                        mov              qword ptr [rbp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx00781_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n00782_proc_gen_α
.Lx00781_0:
                        .quad            .Lx00781_0_s
.Lx00781_0_s:
                        .string          "FAMC"
#-----------------------------------------------------------------------------------------------------------------------
n00775_call_proc_staged_α:
                        lea              rsi, [rbp + 3504]
                        call             proc_gedlnf_dcα
                                                                                        jmp   .Lx00783_2
.Lx00783_2:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n00753_disjunction_α
                                                                                        jmp   n00784_call_builtin_icon_α
n00775_call_proc_staged_β:
                                                                                        jmp   n00753_disjunction_α
.Lx00783_0:
                        .quad            .Lx00783_0_s
.Lx00783_0_s:
                        .string          "gedlnf"
#-----------------------------------------------------------------------------------------------------------------------
n00778_lit_string_α:
                        mov              qword ptr [rbp + 2720], 1
                        mov              rax, qword ptr [rip + .Lx00785_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n00786_proc_gen_α
.Lx00785_0:
                        .quad            .Lx00785_0_s
.Lx00785_0_s:
                        .string          "BIRT"
#-----------------------------------------------------------------------------------------------------------------------
n00779_assign_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              rdx, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00780_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00782_proc_gen_α:
                        mov              qword ptr [rbp + 3216], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00787_20
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00787_21
.Lx00787_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        call             rt_arg_stage@PLT
.Lx00787_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00787_22
                        mov              rax, qword ptr [rbp + 3280]
                        mov              rdx, qword ptr [rbp + 3288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00787_23
.Lx00787_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3280]
                        mov              rdx, qword ptr [rbp + 3288]
                        call             rt_arg_stage@PLT
.Lx00787_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00787_1
                        lea              rcx, [rip + .Lx00787_3]
                        lea              rdx, [rip + .Lx00787_4]
                                                                                        jmp   rax
.Lx00787_3:
                        mov              qword ptr [rbp + 3224], rsp
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax
                                                                                        jne   .Lx00787_5
                        mov              qword ptr [rbp + 3216], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00787_2
.Lx00787_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00787_2
.Lx00787_4:
                        mov              rax, qword ptr [rbp + 3216]
                        test             rax, rax
                                                                                        jne   .Lx00787_6
                        mov              qword ptr [rbp + 3216], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00787_2
.Lx00787_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00787_2
.Lx00787_1:
                        call             rt_faildescr@PLT
.Lx00787_2:
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n00753_disjunction_af
                                                                                        jmp   n00788_assign_α
n00782_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3224]
                                                                                        jmp   qword ptr [rsp]
.Lx00787_0:
                        .quad            .Lx00787_0_s
.Lx00787_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00784_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3368], rax
                        .section         .rodata
.Lrkfn1566:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1566]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n00753_disjunction_α
                                                                                        jmp   n00753_disjunction_α
n00784_call_builtin_icon_β:
                                                                                        jmp   n00753_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00786_proc_gen_α:
                        mov              qword ptr [rbp + 2656], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00789_20
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00789_21
.Lx00789_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        call             rt_arg_stage@PLT
.Lx00789_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00789_22
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00789_23
.Lx00789_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        call             rt_arg_stage@PLT
.Lx00789_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00789_1
                        lea              rcx, [rip + .Lx00789_3]
                        lea              rdx, [rip + .Lx00789_4]
                                                                                        jmp   rax
.Lx00789_3:
                        mov              qword ptr [rbp + 2664], rsp
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx00789_5
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00789_2
.Lx00789_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00789_2
.Lx00789_4:
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx00789_6
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00789_2
.Lx00789_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00789_2
.Lx00789_1:
                        call             rt_faildescr@PLT
.Lx00789_2:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n00777_keyword_icon_α
                                                                                        jmp   n00790_call_proc_staged_α
n00786_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2664]
                                                                                        jmp   qword ptr [rsp]
.Lx00789_0:
                        .quad            .Lx00789_0_s
.Lx00789_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00780_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00791_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00788_assign_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n00792_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00790_call_proc_staged_α:
                        lea              rsi, [rbp + 2592]
                        lea              rdx, [rbp + 2608]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00793_2
.Lx00793_2:
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n00786_proc_gen_β
                                                                                        jmp   n00777_keyword_icon_α
n00790_call_proc_staged_β:
                                                                                        jmp   n00786_proc_gen_β
.Lx00793_0:
                        .quad            .Lx00793_0_s
.Lx00793_0_s:
                        .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00791_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00794_0]
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00795_lit_string_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00796_lit_string_α
.Lx00794_0:
                        .quad            .Lx00794_0_s
.Lx00794_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00795_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx00797_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00798_var_α
.Lx00797_0:
                        .quad            .Lx00797_0_s
.Lx00797_0_s:
                        .string          "d."
#-----------------------------------------------------------------------------------------------------------------------
n00792_lit_string_α:
                        mov              qword ptr [rbp + 3040], 1
                        mov              rax, qword ptr [rip + .Lx00799_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n00800_var_α
.Lx00799_0:
                        .quad            .Lx00799_0_s
.Lx00799_0_s:
                        .string          "father"
#-----------------------------------------------------------------------------------------------------------------------
n00796_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00801_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00802_proc_gen_α
.Lx00801_0:
                        .quad            .Lx00801_0_s
.Lx00801_0_s:
                        .string          "FAMS"
#-----------------------------------------------------------------------------------------------------------------------
n00798_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n00803_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00800_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n00804_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00802_proc_gen_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00805_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00805_21
.Lx00805_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx00805_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00805_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00805_23
.Lx00805_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx00805_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00805_1
                        lea              rcx, [rip + .Lx00805_3]
                        lea              rdx, [rip + .Lx00805_4]
                                                                                        jmp   rax
.Lx00805_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx00805_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00805_2
.Lx00805_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00805_2
.Lx00805_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx00805_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00805_2
.Lx00805_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00805_2
.Lx00805_1:
                        call             rt_faildescr@PLT
.Lx00805_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n00795_lit_string_α
                                                                                        jmp   n00806_assign_α
n00802_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx00805_0:
                        .quad            .Lx00805_0_s
.Lx00805_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00803_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00807_0]
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00808_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00809_lit_string_α
.Lx00807_0:
                        .quad            .Lx00807_0_s
.Lx00807_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00808_unmark_α:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n00723_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00804_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx00810_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n00811_proc_gen_α
.Lx00810_0:
                        .quad            .Lx00810_0_s
.Lx00810_0_s:
                        .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00812_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx00813_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n00814_var_α
.Lx00813_0:
                        .quad            .Lx00813_0_s
.Lx00813_0_s:
                        .string          "mother"
#-----------------------------------------------------------------------------------------------------------------------
n00806_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n00815_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00809_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx00816_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00817_proc_gen_α
.Lx00816_0:
                        .quad            .Lx00816_0_s
.Lx00816_0_s:
                        .string          "DEAT"
#-----------------------------------------------------------------------------------------------------------------------
n00811_proc_gen_α:
                        mov              qword ptr [rbp + 3104], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00818_20
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00818_21
.Lx00818_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        call             rt_arg_stage@PLT
.Lx00818_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00818_22
                        mov              rax, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00818_23
.Lx00818_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        call             rt_arg_stage@PLT
.Lx00818_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00818_1
                        lea              rcx, [rip + .Lx00818_3]
                        lea              rdx, [rip + .Lx00818_4]
                                                                                        jmp   rax
.Lx00818_3:
                        mov              qword ptr [rbp + 3112], rsp
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx00818_5
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00818_2
.Lx00818_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00818_2
.Lx00818_4:
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax
                                                                                        jne   .Lx00818_6
                        mov              qword ptr [rbp + 3104], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00818_2
.Lx00818_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00818_2
.Lx00818_1:
                        call             rt_faildescr@PLT
.Lx00818_2:
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    n00812_lit_string_α
                                                                                        jmp   n00819_call_proc_staged_α
n00811_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3112]
                                                                                        jmp   qword ptr [rsp]
.Lx00818_0:
                        .quad            .Lx00818_0_s
.Lx00818_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00814_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n00820_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00815_bound_α:
                        mov              qword ptr [rbp + 496], rsp
                                                                                        jmp   n00821_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00817_proc_gen_α:
                        mov              qword ptr [rbp + 288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00822_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00822_21
.Lx00822_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx00822_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00822_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00822_23
.Lx00822_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx00822_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00822_1
                        lea              rcx, [rip + .Lx00822_3]
                        lea              rdx, [rip + .Lx00822_4]
                                                                                        jmp   rax
.Lx00822_3:
                        mov              qword ptr [rbp + 296], rsp
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx00822_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00822_2
.Lx00822_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00822_2
.Lx00822_4:
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx00822_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00822_2
.Lx00822_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00822_2
.Lx00822_1:
                        call             rt_faildescr@PLT
.Lx00822_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n00808_unmark_α
                                                                                        jmp   n00823_call_proc_staged_α
n00817_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 296]
                                                                                        jmp   qword ptr [rsp]
.Lx00822_0:
                        .quad            .Lx00822_0_s
.Lx00822_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00819_call_proc_staged_α:
                        lea              rsi, [rbp + 3040]
                        lea              rdx, [rbp + 3056]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00824_2
.Lx00824_2:
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n00811_proc_gen_β
                                                                                        jmp   n00812_lit_string_α
n00819_call_proc_staged_β:
                                                                                        jmp   n00811_proc_gen_β
.Lx00824_0:
                        .quad            .Lx00824_0_s
.Lx00824_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00820_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx00825_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n00758_proc_gen_α
.Lx00825_0:
                        .quad            .Lx00825_0_s
.Lx00825_0_s:
                        .string          "WIFE"
#-----------------------------------------------------------------------------------------------------------------------
n00821_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx00826_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n00827_var_α
.Lx00826_0:
                        .quad            .Lx00826_0_s
.Lx00826_0_s:
                        .string          "m."
#-----------------------------------------------------------------------------------------------------------------------
n00823_call_proc_staged_α:
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 240]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00828_2
.Lx00828_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00817_proc_gen_β
                                                                                        jmp   n00829_conjunction_α
n00823_call_proc_staged_β:
                                                                                        jmp   n00817_proc_gen_β
.Lx00828_0:
                        .quad            .Lx00828_0_s
.Lx00828_0_s:
                        .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00827_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n00830_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00829_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00808_unmark_α
n00829_conjunction_β:
                                                                                        jmp   n00808_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00830_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx00831_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00832_proc_gen_α
.Lx00831_0:
                        .quad            .Lx00831_0_s
.Lx00831_0_s:
                        .string          "MARR"
#-----------------------------------------------------------------------------------------------------------------------
n00833_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx00834_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n00835_var_α
.Lx00834_0:
                        .quad            .Lx00834_0_s
.Lx00834_0_s:
                        .string          "  husb"
#-----------------------------------------------------------------------------------------------------------------------
n00832_proc_gen_α:
                        mov              qword ptr [rbp + 2432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00836_20
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00836_21
.Lx00836_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        call             rt_arg_stage@PLT
.Lx00836_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00836_22
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00836_23
.Lx00836_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        call             rt_arg_stage@PLT
.Lx00836_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00836_1
                        lea              rcx, [rip + .Lx00836_3]
                        lea              rdx, [rip + .Lx00836_4]
                                                                                        jmp   rax
.Lx00836_3:
                        mov              qword ptr [rbp + 2440], rsp
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax
                                                                                        jne   .Lx00836_5
                        mov              qword ptr [rbp + 2432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00836_2
.Lx00836_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00836_2
.Lx00836_4:
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax
                                                                                        jne   .Lx00836_6
                        mov              qword ptr [rbp + 2432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00836_2
.Lx00836_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00836_2
.Lx00836_1:
                        call             rt_faildescr@PLT
.Lx00836_2:
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n00833_lit_string_α
                                                                                        jmp   n00837_call_proc_staged_α
n00832_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2440]
                                                                                        jmp   qword ptr [rsp]
.Lx00836_0:
                        .quad            .Lx00836_0_s
.Lx00836_0_s:
                        .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00835_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00838_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00837_call_proc_staged_α:
                        lea              rsi, [rbp + 2368]
                        lea              rdx, [rbp + 2384]
                        call             proc_event_dcα
                                                                                        jmp   .Lx00839_2
.Lx00839_2:
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n00832_proc_gen_β
                                                                                        jmp   n00840_assign_α
n00837_call_proc_staged_β:
                                                                                        jmp   n00832_proc_gen_β
.Lx00839_0:
                        .quad            .Lx00839_0_s
.Lx00839_0_s:
                        .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00838_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00841_0]
                        mov              rsi, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00842_lit_string_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n00843_var_α
.Lx00841_0:
                        .quad            .Lx00841_0_s
.Lx00841_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00842_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx00844_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00845_var_α
.Lx00844_0:
                        .quad            .Lx00844_0_s
.Lx00844_0_s:
                        .string          "  wife"
#-----------------------------------------------------------------------------------------------------------------------
n00840_assign_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00833_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00843_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n00846_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00845_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n00847_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00846_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx00848_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00849_proc_gen_α
.Lx00848_0:
                        .quad            .Lx00848_0_s
.Lx00848_0_s:
                        .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00847_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00850_0]
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00851_disjunction_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n00852_var_α
.Lx00850_0:
                        .quad            .Lx00850_0_s
.Lx00850_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00851_disjunction_α:
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              dword ptr [rbp + 1712], 0
                                                                                        jmp   n00853_var_α
n00851_disjunction_as:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 0
                                                                                        jne   .Lx00854_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n00855_disjunction_α
.Lx00854_0:
                                                                                        jmp   n00855_disjunction_α
n00851_disjunction_β:
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n00855_disjunction_α
n00851_disjunction_af:
                        add              dword ptr [rbp + 1712], 1
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n00855_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00849_proc_gen_α:
                        mov              qword ptr [rbp + 2240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00856_20
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00856_21
.Lx00856_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        call             rt_arg_stage@PLT
.Lx00856_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00856_22
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00856_23
.Lx00856_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        call             rt_arg_stage@PLT
.Lx00856_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00856_1
                        lea              rcx, [rip + .Lx00856_3]
                        lea              rdx, [rip + .Lx00856_4]
                                                                                        jmp   rax
.Lx00856_3:
                        mov              qword ptr [rbp + 2248], rsp
                        mov              rax, qword ptr [rbp + 2240]
                        test             rax, rax
                                                                                        jne   .Lx00856_5
                        mov              qword ptr [rbp + 2240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00856_2
.Lx00856_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00856_2
.Lx00856_4:
                        mov              rax, qword ptr [rbp + 2240]
                        test             rax, rax
                                                                                        jne   .Lx00856_6
                        mov              qword ptr [rbp + 2240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00856_2
.Lx00856_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00856_2
.Lx00856_1:
                        call             rt_faildescr@PLT
.Lx00856_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n00842_lit_string_α
                                                                                        jmp   n00857_binop_test_α
n00849_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2248]
                                                                                        jmp   qword ptr [rsp]
.Lx00856_0:
                        .quad            .Lx00856_0_s
.Lx00856_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00852_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n00858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00855_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00859_disjunction_α
n00855_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00860_0
                                                                                        jmp   n00861_conjunction_α
.Lx00860_0:
                                                                                        jmp   n00861_conjunction_α
n00855_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                                                                                        jmp   n00862_unmark_α
n00855_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                                                                                        jmp   n00862_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00853_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00863_unop_test_α
n00853_var_β:
                                                                                        jmp   n00851_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00864_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn1636:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1636]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n00855_disjunction_α
                                                                                        jmp   n00851_disjunction_as
n00864_call_builtin_icon_β:
                                                                                        jmp   n00855_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00857_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00849_proc_gen_β
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00865_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00858_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx00866_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n00867_proc_gen_α
.Lx00866_0:
                        .quad            .Lx00866_0_s
.Lx00866_0_s:
                        .string          "WIFE"
#-----------------------------------------------------------------------------------------------------------------------
n00861_conjunction_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00862_unmark_α
n00861_conjunction_β:
                                                                                        jmp   n00862_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00859_disjunction_α:
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                        mov              dword ptr [rbp + 1392], 0
                                                                                        jmp   n00868_var_α
n00859_disjunction_as:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        jne   .Lx00869_0
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n00870_var_α
.Lx00869_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00869_1
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n00870_var_α
.Lx00869_1:
                                                                                        jmp   n00870_var_α
n00859_disjunction_β:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        je    n00871_proc_gen_β
                                                                                        jmp   n00859_disjunction_af
n00859_disjunction_af:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 1
                                                                                        je    n00872_var_α
                                                                                        jmp   n00855_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00863_unop_test_α:
                        mov              eax, dword ptr [rbp + 4944]
                        cmp              eax, 99
                                                                                        je    n00851_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00851_disjunction_af
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00873_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00865_call_proc_staged_α:
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 2144]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00874_2
.Lx00874_2:
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n00849_proc_gen_β
                                                                                        jmp   n00875_assign_α
n00865_call_proc_staged_β:
                                                                                        jmp   n00849_proc_gen_β
.Lx00874_0:
                        .quad            .Lx00874_0_s
.Lx00874_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00867_proc_gen_α:
                        mov              qword ptr [rbp + 2000], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00876_20
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00876_21
.Lx00876_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        call             rt_arg_stage@PLT
.Lx00876_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00876_22
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00876_23
.Lx00876_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        call             rt_arg_stage@PLT
.Lx00876_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00876_1
                        lea              rcx, [rip + .Lx00876_3]
                        lea              rdx, [rip + .Lx00876_4]
                                                                                        jmp   rax
.Lx00876_3:
                        mov              qword ptr [rbp + 2008], rsp
                        mov              rax, qword ptr [rbp + 2000]
                        test             rax, rax
                                                                                        jne   .Lx00876_5
                        mov              qword ptr [rbp + 2000], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00876_2
.Lx00876_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00876_2
.Lx00876_4:
                        mov              rax, qword ptr [rbp + 2000]
                        test             rax, rax
                                                                                        jne   .Lx00876_6
                        mov              qword ptr [rbp + 2000], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00876_2
.Lx00876_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00876_2
.Lx00876_1:
                        call             rt_faildescr@PLT
.Lx00876_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n00851_disjunction_α
                                                                                        jmp   n00877_binop_test_α
n00867_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2008]
                                                                                        jmp   qword ptr [rsp]
.Lx00876_0:
                        .quad            .Lx00876_0_s
.Lx00876_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00862_unmark_α:
                        mov              rsp, qword ptr [rbp + 496]
                                                                                        jmp   n00802_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00870_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00878_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00868_var_α:
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00879_field_get_α
n00868_var_β:
                                                                                        jmp   n00859_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00871_proc_gen_α:
                        mov              qword ptr [rbp + 1504], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00880_20
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00880_21
.Lx00880_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        call             rt_arg_stage@PLT
.Lx00880_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00880_22
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00880_23
.Lx00880_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        call             rt_arg_stage@PLT
.Lx00880_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00880_1
                        lea              rcx, [rip + .Lx00880_3]
                        lea              rdx, [rip + .Lx00880_4]
                                                                                        jmp   rax
.Lx00880_3:
                        mov              qword ptr [rbp + 1512], rsp
                        mov              rax, qword ptr [rbp + 1504]
                        test             rax, rax
                                                                                        jne   .Lx00880_5
                        mov              qword ptr [rbp + 1504], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00880_2
.Lx00880_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00880_2
.Lx00880_4:
                        mov              rax, qword ptr [rbp + 1504]
                        test             rax, rax
                                                                                        jne   .Lx00880_6
                        mov              qword ptr [rbp + 1504], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00880_2
.Lx00880_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00880_2
.Lx00880_1:
                        call             rt_faildescr@PLT
.Lx00880_2:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n00859_disjunction_af
                                                                                        jmp   n00881_binop_test_α
n00871_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1512]
                                                                                        jmp   qword ptr [rsp]
.Lx00880_0:
                        .quad            .Lx00880_0_s
.Lx00880_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00872_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n00882_lit_string_α
n00872_var_β:
                                                                                        jmp   n00883_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00881_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        mov              r8d, 22
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00871_proc_gen_β
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n00859_disjunction_as
n00881_binop_test_β:
                                                                                        jmp   n00871_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00883_var_α:
                        mov              qword ptr [rbp + 1568], 0
                        mov              qword ptr [rbp + 1576], 0
                                                                                        jmp   n00859_disjunction_as
n00883_var_β:
                                                                                        jmp   n00859_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00873_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx00884_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00864_call_builtin_icon_α
.Lx00884_0:
                        .quad            .Lx00884_0_s
.Lx00884_0_s:
                        .string          "   m."
#-----------------------------------------------------------------------------------------------------------------------
n00875_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00877_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00867_proc_gen_β
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00885_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00878_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx00886_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00887_proc_gen_α
.Lx00886_0:
                        .quad            .Lx00886_0_s
.Lx00886_0_s:
                        .string          "CHIL"
#-----------------------------------------------------------------------------------------------------------------------
n00879_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx00888_0]
                        mov              rsi, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n00859_disjunction_af
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n00889_var_α
.Lx00888_0:
                        .quad            .Lx00888_0_s
.Lx00888_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00882_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx00890_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00891_proc_gen_α
.Lx00890_0:
                        .quad            .Lx00890_0_s
.Lx00890_0_s:
                        .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00885_call_proc_staged_α:
                        lea              rsi, [rbp + 1888]
                        lea              rdx, [rbp + 1904]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00892_2
.Lx00892_2:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n00867_proc_gen_β
                                                                                        jmp   n00893_assign_α
n00885_call_proc_staged_β:
                                                                                        jmp   n00867_proc_gen_β
.Lx00892_0:
                        .quad            .Lx00892_0_s
.Lx00892_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00887_proc_gen_α:
                        mov              qword ptr [rbp + 640], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00894_20
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00894_21
.Lx00894_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx00894_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00894_22
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00894_23
.Lx00894_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx00894_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00894_1
                        lea              rcx, [rip + .Lx00894_3]
                        lea              rdx, [rip + .Lx00894_4]
                                                                                        jmp   rax
.Lx00894_3:
                        mov              qword ptr [rbp + 648], rsp
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx00894_5
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00894_2
.Lx00894_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00894_2
.Lx00894_4:
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax
                                                                                        jne   .Lx00894_6
                        mov              qword ptr [rbp + 640], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00894_2
.Lx00894_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00894_2
.Lx00894_1:
                        call             rt_faildescr@PLT
.Lx00894_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n00862_unmark_α
                                                                                        jmp   n00895_assign_α
n00887_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 648]
                                                                                        jmp   qword ptr [rsp]
.Lx00894_0:
                        .quad            .Lx00894_0_s
.Lx00894_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00889_var_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n00896_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00891_proc_gen_α:
                        mov              qword ptr [rbp + 1632], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00897_20
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00897_21
.Lx00897_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        call             rt_arg_stage@PLT
.Lx00897_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00897_22
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00897_23
.Lx00897_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        call             rt_arg_stage@PLT
.Lx00897_23:
                        mov              edi, 8
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00897_1
                        lea              rcx, [rip + .Lx00897_3]
                        lea              rdx, [rip + .Lx00897_4]
                                                                                        jmp   rax
.Lx00897_3:
                        mov              qword ptr [rbp + 1640], rsp
                        mov              rax, qword ptr [rbp + 1632]
                        test             rax, rax
                                                                                        jne   .Lx00897_5
                        mov              qword ptr [rbp + 1632], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00897_2
.Lx00897_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00897_2
.Lx00897_4:
                        mov              rax, qword ptr [rbp + 1632]
                        test             rax, rax
                                                                                        jne   .Lx00897_6
                        mov              qword ptr [rbp + 1632], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00897_2
.Lx00897_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00897_2
.Lx00897_1:
                        call             rt_faildescr@PLT
.Lx00897_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n00883_var_α
                                                                                        jmp   n00859_disjunction_af
n00891_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1640]
                                                                                        jmp   qword ptr [rsp]
.Lx00897_0:
                        .quad            .Lx00897_0_s
.Lx00897_0_s:
                        .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00893_assign_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00851_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00895_assign_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00898_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00896_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx00899_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00871_proc_gen_α
.Lx00899_0:
                        .quad            .Lx00899_0_s
.Lx00899_0_s:
                        .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00898_bound_α:
                        mov              qword ptr [rbp + 704], rsp
                                                                                        jmp   n00900_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00900_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n00901_var_α
n00900_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx00902_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00903_lit_string_α
.Lx00902_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00902_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00903_lit_string_α
.Lx00902_1:
                                                                                        jmp   n00903_lit_string_α
n00900_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n00904_proc_gen_β
                                                                                        jmp   n00900_disjunction_af
n00900_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n00905_lit_string_α
                                                                                        jmp   n00906_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00903_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx00907_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00908_call_builtin_α
.Lx00907_0:
                        .quad            .Lx00907_0_s
.Lx00907_0_s:
                        .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n00901_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00909_lit_string_α
n00901_var_β:
                                                                                        jmp   n00900_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00904_proc_gen_α:
                        mov              qword ptr [rbp + 848], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00910_20
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx00910_21
.Lx00910_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        call             rt_arg_stage@PLT
.Lx00910_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx00910_22
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx00910_23
.Lx00910_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        call             rt_arg_stage@PLT
.Lx00910_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00910_1
                        lea              rcx, [rip + .Lx00910_3]
                        lea              rdx, [rip + .Lx00910_4]
                                                                                        jmp   rax
.Lx00910_3:
                        mov              qword ptr [rbp + 856], rsp
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx00910_5
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00910_2
.Lx00910_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00910_2
.Lx00910_4:
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx00910_6
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00910_2
.Lx00910_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00910_2
.Lx00910_1:
                        call             rt_faildescr@PLT
.Lx00910_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n00900_disjunction_af
                                                                                        jmp   n00900_disjunction_as
n00904_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 856]
                                                                                        jmp   qword ptr [rsp]
.Lx00910_0:
                        .quad            .Lx00910_0_s
.Lx00910_0_s:
                        .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00905_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx00911_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n00900_disjunction_as
n00905_lit_string_β:
                                                                                        jmp   n00900_disjunction_af
.Lx00911_0:
                        .quad            .Lx00911_0_s
.Lx00911_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00908_call_builtin_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn1687:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1687]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n00912_lit_string_α
                                                                                        jmp   n00913_lit_string_α
n00908_call_builtin_β:
                                                                                        jmp   n00912_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00909_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx00914_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00904_proc_gen_α
.Lx00914_0:
                        .quad            .Lx00914_0_s
.Lx00914_0_s:
                        .string          "SEX"
#-----------------------------------------------------------------------------------------------------------------------
n00913_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx00915_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n00916_var_α
.Lx00915_0:
                        .quad            .Lx00915_0_s
.Lx00915_0_s:
                        .string          "   son"
#-----------------------------------------------------------------------------------------------------------------------
n00912_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx00917_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n00918_call_builtin_α
.Lx00917_0:
                        .quad            .Lx00917_0_s
.Lx00917_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n00916_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n00919_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00918_call_builtin_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn1694:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1694]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n00920_lit_string_α
                                                                                        jmp   n00921_lit_string_α
n00918_call_builtin_β:
                                                                                        jmp   n00920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00919_call_proc_staged_α:
                        lea              rsi, [rbp + 1280]
                        lea              rdx, [rbp + 1296]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00922_2
.Lx00922_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                                                                                        jmp   n00923_assign_α
n00919_call_proc_staged_β:
                                                                                        jmp   n00906_unmark_α
.Lx00922_0:
                        .quad            .Lx00922_0_s
.Lx00922_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00906_unmark_α:
                        mov              rsp, qword ptr [rbp + 704]
                                                                                        jmp   n00887_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00921_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx00924_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n00925_var_α
.Lx00924_0:
                        .quad            .Lx00924_0_s
.Lx00924_0_s:
                        .string          "   dau"
#-----------------------------------------------------------------------------------------------------------------------
n00920_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx00926_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00927_var_α
.Lx00926_0:
                        .quad            .Lx00926_0_s
.Lx00926_0_s:
                        .string          " child"
#-----------------------------------------------------------------------------------------------------------------------
n00923_assign_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                                                                                        jmp   n00928_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00925_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00929_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00927_var_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n00930_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00928_var_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00906_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00929_call_proc_staged_α:
                        lea              rsi, [rbp + 1104]
                        lea              rdx, [rbp + 1120]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00931_2
.Lx00931_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                                                                                        jmp   n00932_assign_α
n00929_call_proc_staged_β:
                                                                                        jmp   n00906_unmark_α
.Lx00931_0:
                        .quad            .Lx00931_0_s
.Lx00931_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00930_call_proc_staged_α:
                        lea              rsi, [rbp + 992]
                        lea              rdx, [rbp + 1008]
                        call             proc_refto_dcα
                                                                                        jmp   .Lx00933_2
.Lx00933_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n00906_unmark_α
                                                                                        jmp   n00934_assign_α
n00930_call_proc_staged_β:
                                                                                        jmp   n00906_unmark_α
.Lx00933_0:
                        .quad            .Lx00933_0_s
.Lx00933_0_s:
                        .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00932_assign_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                                                                                        jmp   n00928_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00934_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                                                                                        jmp   n00928_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 5024]
                        add              rsp, 5032
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 5024]
                        add              rsp, 5032
                        ret
                        .section         .note.GNU-stack,"",@progbits
