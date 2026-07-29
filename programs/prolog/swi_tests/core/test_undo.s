                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
                        .global          proc_test$2F1_α
                        .global          proc_test$2F1_β
                        .global          proc_test$2F1_γ
                        .global          proc_test$2F1_ω
                        sub              rsp, 1024
                        mov              [rsp + 1000], rcx
                        mov              [rsp + 1008], rdx
                        mov              [rsp + 1016], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 960
                        mov              edx, 992
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F1_α_body:
                        lea              rax, [rip + n8_suspend_β]
                        mov              qword ptr [rbp + 960], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx32_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx32_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx32_101
.Lx32_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx32_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n3_op11_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "undo_or"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              rsi, qword ptr [rip + .Lx36_2]
                                                                                        jmp   .Lx36_3
.Lx36_2:
                        .quad            .Lx36_2_s
.Lx36_2_s:
                        .string          "undo_or"
.Lx36_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n6_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        mov              qword ptr [rbp + 832], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx41_20
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx41_21
.Lx41_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        call             rt_arg_stage@PLT
.Lx41_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx41_1
                        lea              rcx, [rip + .Lx41_3]
                        lea              rdx, [rip + .Lx41_4]
                                                                                        jmp   rax
.Lx41_3:
                        mov              qword ptr [rbp + 840], rsp
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax
                                                                                        jne   .Lx41_5
                        mov              qword ptr [rbp + 832], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx41_2
.Lx41_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx41_2
.Lx41_4:
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax
                                                                                        jne   .Lx41_6
                        mov              qword ptr [rbp + 832], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx41_2
.Lx41_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx41_2
.Lx41_1:
                        call             rt_faildescr@PLT
.Lx41_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_suspend_α
n6_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 840]
                                                                                        jmp   qword ptr [rsp]
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_suspend_α:
                        lea              rax, [rip + n8_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n8_suspend_β:
                                                                                        jmp   n6_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n10_op11_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "clauses"
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx47_2]
                                                                                        jmp   .Lx47_3
.Lx47_2:
                        .quad            .Lx47_2_s
.Lx47_2_s:
                        .string          "clauses"
.Lx47_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_call_proc_staged_α
n10_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              edi, 12
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx49_1
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4]
                                                                                        jmp   rax
.Lx49_3:
                        mov              qword ptr [rbp + 664], rsp
                        mov              rax, qword ptr [rbp + 656]
                        test             rax, rax
                                                                                        jne   .Lx49_5
                        mov              qword ptr [rbp + 656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx49_2
.Lx49_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx49_2
.Lx49_4:
                        mov              rax, qword ptr [rbp + 656]
                        test             rax, rax
                                                                                        jne   .Lx49_6
                        mov              qword ptr [rbp + 656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx49_2
.Lx49_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx49_2
.Lx49_1:
                        call             rt_faildescr@PLT
.Lx49_2:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n13_suspend_α
n11_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 664]
                                                                                        jmp   qword ptr [rsp]
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "t1/0"
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n14_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_suspend_α:
                        lea              rax, [rip + n13_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n13_suspend_β:
                                                                                        jmp   n11_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n16_op11_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "error2"
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lx56_2]
                                                                                        jmp   .Lx56_3
.Lx56_2:
                        .quad            .Lx56_2_s
.Lx56_2_s:
                        .string          "error2"
.Lx56_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n17_lit_string_α
n16_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n19_op11_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   proc_test$2F1_ω
n18_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx59_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx59_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx59_101
.Lx59_100:
                        lea              rdi, [rbp + 224]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx59_101:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n20_lit_string_α
n19_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n21_op11_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn62:               .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n23_op11_α
                                                                                        jmp   n22_lit_string_α
n21_op11_β:
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n24_var_ref_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn65:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n25_lit_integer_α
n23_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n27_call_proc_staged_α
.Lx68_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n23_op11_α
                                                                                        jmp   n28_call_proc_staged_α
n26_op11_β:
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx71_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx71_21
.Lx71_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx71_21:
                        mov              edi, 13
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx71_1
                        lea              rcx, [rip + .Lx71_3]
                        lea              rdx, [rip + .Lx71_4]
                                                                                        jmp   rax
.Lx71_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx71_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx71_2
.Lx71_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx71_2
.Lx71_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx71_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx71_2
.Lx71_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx71_2
.Lx71_1:
                        call             rt_faildescr@PLT
.Lx71_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n29_suspend_α
                                                                                        jmp   n18_op11_α
n27_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "a/1"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx73_21
.Lx73_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx73_21:
                        mov              rdi, qword ptr [rip + .Lx73_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx73_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx73_3]
                        lea              rdx, [rip + .Lx73_4]
                                                                                        jmp   rax
.Lx73_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx73_2
.Lx73_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx73_2
.Lx73_1:
                        call             rt_faildescr@PLT
.Lx73_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n23_op11_α
                                                                                        jmp   n30_lit_string_α
n28_call_proc_staged_β:
                                                                                        jmp   n23_op11_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n29_suspend_α:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n29_suspend_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n31_op11_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn78:               .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n28_call_proc_staged_β
                                                                                        jmp   n25_lit_integer_α
n31_op11_β:
                                                                                        jmp   n28_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 960]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1000]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rax, [rbp + 1008]
                        lea              rsp, [rbp + 1024]
                        mov              rbp, [rbp + 1016]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 720
                        mov              [rsp + 696], rcx
                        mov              [rsp + 704], rdx
                        mov              [rsp + 712], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 688
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n96_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx100_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx100_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx100_101
.Lx100_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx100_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n80_var_ref_α
n79_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n82_op11_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              rsi, qword ptr [rip + .Lx104_2]
                                                                                        jmp   .Lx104_3
.Lx104_2:
                        .quad            .Lx104_2_s
.Lx104_2_s:
                        .string          "error"
.Lx104_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n83_var_ref_α
n82_op11_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n86_var_ref_α
n84_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n87_lit_string_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n88_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n89_op11_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n90_op11_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n91_op11_α
n89_op11_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              rsi, qword ptr [rip + .Lx114_2]
                                                                                        jmp   .Lx114_3
.Lx114_2:
                        .quad            .Lx114_2_s
.Lx114_2_s:
                        .string          "cleanup"
.Lx114_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n92_var_ref_α
n90_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx115_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx115_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx115_41
                        cmp              esi, 1
                                                                                        jne   .Lx115_55
                        mov              r8, rax
                                                                                        jmp   .Lx115_40
.Lx115_55:
                        cmp              esi, 2
                                                                                        jne   .Lx115_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx115_41
                        mov              r8, rax
                                                                                        jmp   .Lx115_40
.Lx115_56:
                        cmp              eax, 13
                                                                                        jne   .Lx115_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx115_41
                        cmp              rax, r8
                                                                                        je    .Lx115_41
                        mov              r8, rax
                                                                                        jmp   .Lx115_40
.Lx115_41:
                        lea              r9, [rbp + 464]
.Lx115_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx115_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx115_43
                        cmp              esi, 1
                                                                                        jne   .Lx115_57
                        mov              r9, rax
                                                                                        jmp   .Lx115_42
.Lx115_57:
                        cmp              esi, 2
                                                                                        jne   .Lx115_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx115_43
                        mov              r9, rax
                                                                                        jmp   .Lx115_42
.Lx115_58:
                        cmp              eax, 13
                                                                                        jne   .Lx115_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx115_43
                        cmp              rax, r9
                                                                                        je    .Lx115_43
                        mov              r9, rax
                                                                                        jmp   .Lx115_42
.Lx115_43:
                        cmp              r8, r9
                                                                                        je    .Lx115_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx115_44
                        cmp              eax, 99
                                                                                        je    .Lx115_44
                        cmp              eax, 13
                                                                                        jne   .Lx115_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx115_44
                                                                                        jmp   .Lx115_45
.Lx115_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx115_53
                        cmp              eax, 99
                                                                                        je    .Lx115_53
                        cmp              eax, 13
                                                                                        jne   .Lx115_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx115_53
                                                                                        jmp   .Lx115_46
.Lx115_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx115_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx115_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx115_51
.Lx115_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx115_47
                        cmp              eax, 99
                                                                                        je    .Lx115_47
                        cmp              eax, 13
                                                                                        jne   .Lx115_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx115_47
                                                                                        jmp   .Lx115_48
.Lx115_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx115_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx115_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx115_51
.Lx115_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx115_49
                        cmp              edx, 14
                                                                                        je    .Lx115_53
                                                                                        jmp   .Lx115_52
.Lx115_49:
                        cmp              edx, 14
                                                                                        je    .Lx115_52
                        cmp              ecx, 7
                                                                                        je    .Lx115_53
                        cmp              edx, 7
                                                                                        je    .Lx115_53
                        cmp              ecx, 6
                                                                                        jne   .Lx115_50
                        cmp              edx, 6
                                                                                        jne   .Lx115_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx115_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx115_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx115_51
                                                                                        jmp   .Lx115_52
.Lx115_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx115_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx115_53
.Lx115_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx115_54
.Lx115_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx115_54
.Lx115_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx115_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n94_call_proc_staged_α
n91_op11_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n93_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α:
                        mov              qword ptr [rbp + 400], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx120_1
                        lea              rcx, [rip + .Lx120_3]
                        lea              rdx, [rip + .Lx120_4]
                                                                                        jmp   rax
.Lx120_3:
                        mov              qword ptr [rbp + 408], rsp
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx120_5
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx120_2
.Lx120_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx120_2
.Lx120_4:
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx120_6
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx120_2
.Lx120_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx120_2
.Lx120_1:
                        call             rt_faildescr@PLT
.Lx120_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n96_suspend_α
n94_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 408]
                                                                                        jmp   qword ptr [rsp]
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "$disj1/0"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n97_op11_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n96_suspend_α:
                        lea              rax, [rip + n96_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n96_suspend_β:
                                                                                        jmp   n94_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              rsi, qword ptr [rip + .Lx124_2]
                                                                                        jmp   .Lx124_3
.Lx124_2:
                        .quad            .Lx124_2_s
.Lx124_2_s:
                        .string          "fail"
.Lx124_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n98_lit_string_α
n97_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n99_call_proc_staged_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx127_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx127_21
.Lx127_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx127_21:
                        mov              rdi, qword ptr [rip + .Lx127_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx127_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx127_3]
                        lea              rdx, [rip + .Lx127_4]
                                                                                        jmp   rax
.Lx127_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx127_2
.Lx127_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx127_2
.Lx127_1:
                        call             rt_faildescr@PLT
.Lx127_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n99_call_proc_staged_β
n99_call_proc_staged_β:
                                                                                        jmp   n93_op11_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 696]
                        mov              rbp, [rbp + 712]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 704]
                        lea              rsp, [rbp + 720]
                        mov              rbp, [rbp + 712]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F0_α
proc_$disj1$2F0_α:
                        .global          proc_$disj1$2F0_α
                        .global          proc_$disj1$2F0_β
                        .global          proc_$disj1$2F0_γ
                        .global          proc_$disj1$2F0_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj1$2F0_α_body:
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx137_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx137_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx137_101
.Lx137_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx137_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n129_lit_string_α
n128_op11_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n130_lit_string_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n131_op11_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n132_call_proc_staged_α
n131_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx142_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx142_21
.Lx142_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx142_21:
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx142_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx142_3]
                        lea              rdx, [rip + .Lx142_4]
                                                                                        jmp   rax
.Lx142_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx142_2
.Lx142_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx142_2
.Lx142_1:
                        call             rt_faildescr@PLT
.Lx142_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n132_call_proc_staged_β
n132_call_proc_staged_β:
                                                                                        jmp   n133_op11_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n134_call_proc_staged_α
n133_op11_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        call             proc_ok$2F0_dcα
                                                                                        jmp   .Lx145_2
.Lx145_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n136_op11_α
                                                                                        jmp   n135_suspend_α
n134_call_proc_staged_β:
                                                                                        jmp   n136_op11_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "ok/0"
#-----------------------------------------------------------------------------------------------------------------------
n135_suspend_α:
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F0_γ
n135_suspend_β:
                                                                                        jmp   n134_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   proc_$disj1$2F0_ω
n136_op11_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 4832
                        mov              [rsp + 4808], rcx
                        mov              [rsp + 4816], rdx
                        mov              [rsp + 4824], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4768
                        mov              edx, 4800
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n195_suspend_β]
                        mov              qword ptr [rbp + 4768], rax
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx293_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx293_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx293_101
.Lx293_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx293_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n150_var_ref_α
n149_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                                                                                        jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 4752], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 4760], rax
                                                                                        jmp   n152_op11_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4712], rax
                        lea              rdi, [rbp + 4704]
                        mov              rsi, qword ptr [rip + .Lx297_2]
                                                                                        jmp   .Lx297_3
.Lx297_2:
                        .quad            .Lx297_2_s
.Lx297_2_s:
                        .string          "undo"
.Lx297_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    n154_op11_α
                                                                                        jmp   n153_var_ref_α
n152_op11_β:
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n154_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3568]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n156_var_ref_α
n154_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 4672], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n157_op11_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "undo_or"
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_op11_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4624]
                        mov              rsi, qword ptr [rip + .Lx304_2]
                                                                                        jmp   .Lx304_3
.Lx304_2:
                        .quad            .Lx304_2_s
.Lx304_2_s:
                        .string          "undo_or"
.Lx304_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 99
                                                                                        je    n154_op11_α
                                                                                        jmp   n159_var_ref_α
n157_op11_β:
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:
                        mov              qword ptr [rbp + 3536], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n160_op11_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_op11_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3496], rax
                        lea              rdi, [rbp + 3488]
                        mov              rsi, qword ptr [rip + .Lx308_2]
                                                                                        jmp   .Lx308_3
.Lx308_2:
                        .quad            .Lx308_2_s
.Lx308_2_s:
                        .string          "undo"
.Lx308_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              eax, 99
                                                                                        je    n163_op11_α
                                                                                        jmp   n162_var_ref_α
n160_op11_β:
                                                                                        jmp   n163_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n164_op11_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rdi, [rbp + 3200]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n166_var_ref_α
n163_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n164_op11_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4552], rax
                        lea              rdi, [rbp + 4544]
                        mov              rsi, qword ptr [rip + .Lx313_2]
                                                                                        jmp   .Lx313_3
.Lx313_2:
                        .quad            .Lx313_2_s
.Lx313_2_s:
                        .string          "[]"
.Lx313_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              eax, 99
                                                                                        je    n154_op11_α
                                                                                        jmp   n167_var_ref_α
n164_op11_β:
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 3456], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n168_op11_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "clauses"
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3416], rax
                        lea              rdi, [rbp + 3408]
                        mov              rsi, qword ptr [rip + .Lx319_2]
                                                                                        jmp   .Lx319_3
.Lx319_2:
                        .quad            .Lx319_2_s
.Lx319_2_s:
                        .string          "clauses"
.Lx319_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n163_op11_α
                                                                                        jmp   n171_var_ref_α
n168_op11_β:
                                                                                        jmp   n163_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n172_op11_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 4512], 1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n173_lit_string_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          ";"
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n172_op11_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                        lea              rdi, [rbp + 3120]
                        mov              rsi, qword ptr [rip + .Lx324_2]
                                                                                        jmp   .Lx324_3
.Lx324_2:
                        .quad            .Lx324_2_s
.Lx324_2_s:
                        .string          "undo"
.Lx324_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n176_op11_α
                                                                                        jmp   n175_var_ref_α
n172_op11_β:
                                                                                        jmp   n176_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 4240], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n177_lit_string_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n178_op11_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n180_var_ref_α
n176_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 3856], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n181_lit_string_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3328]
                        mov              rsi, qword ptr [rip + .Lx331_2]
                                                                                        jmp   .Lx331_3
.Lx331_2:
                        .quad            .Lx331_2_s
.Lx331_2_s:
                        .string          "[]"
.Lx331_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 99
                                                                                        je    n163_op11_α
                                                                                        jmp   n182_var_ref_α
n178_op11_β:
                                                                                        jmp   n163_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n183_op11_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n185_lit_integer_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_op11_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3040]
                        mov              rsi, qword ptr [rip + .Lx338_2]
                                                                                        jmp   .Lx338_3
.Lx338_2:
                        .quad            .Lx338_2_s
.Lx338_2_s:
                        .string          "error"
.Lx338_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n176_op11_α
                                                                                        jmp   n187_var_ref_α
n183_op11_β:
                                                                                        jmp   n176_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n188_op11_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 6
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n189_op11_α
.Lx340_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n190_op11_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "t1"
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n188_op11_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              rsi, qword ptr [rip + .Lx344_2]
                                                                                        jmp   .Lx344_3
.Lx344_2:
                        .quad            .Lx344_2_s
.Lx344_2_s:
                        .string          "undo"
.Lx344_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n192_var_ref_α
n188_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3696]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n194_var_ref_α
n189_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n190_op11_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3248]
                        mov              rsi, qword ptr [rip + .Lx346_2]
                                                                                        jmp   .Lx346_3
.Lx346_2:
                        .quad            .Lx346_2_s
.Lx346_2_s:
                        .string          "t1"
.Lx346_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n163_op11_α
                                                                                        jmp   n195_suspend_α
n190_op11_β:
                                                                                        jmp   n163_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n196_lit_string_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "throws"
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n197_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n198_var_ref_α
n193_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_suspend_α:
                        lea              rax, [rip + n195_suspend_β]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n195_suspend_β:
                                                                                        jmp   n163_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n200_op11_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n201_op11_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "error2"
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3832], rax
                        lea              rdi, [rbp + 3792]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n203_lit_string_α
n199_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_op11_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2960]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n176_op11_α
                                                                                        jmp   n204_op11_α
n200_op11_β:
                                                                                        jmp   n176_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2208]
                        mov              rsi, qword ptr [rip + .Lx361_2]
                                                                                        jmp   .Lx361_3
.Lx361_2:
                        .quad            .Lx361_2_s
.Lx361_2_s:
                        .string          "error2"
.Lx361_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n205_var_ref_α
n201_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n206_op11_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 4144], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n207_lit_string_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n204_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2880]
                        lea              r8, [rbp + 2880]
.Lx364_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx364_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx364_41
                        cmp              esi, 1
                                                                                        jne   .Lx364_55
                        mov              r8, rax
                                                                                        jmp   .Lx364_40
.Lx364_55:
                        cmp              esi, 2
                                                                                        jne   .Lx364_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx364_41
                        mov              r8, rax
                                                                                        jmp   .Lx364_40
.Lx364_56:
                        cmp              eax, 13
                                                                                        jne   .Lx364_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx364_41
                        cmp              rax, r8
                                                                                        je    .Lx364_41
                        mov              r8, rax
                                                                                        jmp   .Lx364_40
.Lx364_41:
                        lea              r9, [rbp + 2896]
.Lx364_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx364_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx364_43
                        cmp              esi, 1
                                                                                        jne   .Lx364_57
                        mov              r9, rax
                                                                                        jmp   .Lx364_42
.Lx364_57:
                        cmp              esi, 2
                                                                                        jne   .Lx364_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx364_43
                        mov              r9, rax
                                                                                        jmp   .Lx364_42
.Lx364_58:
                        cmp              eax, 13
                                                                                        jne   .Lx364_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx364_43
                        cmp              rax, r9
                                                                                        je    .Lx364_43
                        mov              r9, rax
                                                                                        jmp   .Lx364_42
.Lx364_43:
                        cmp              r8, r9
                                                                                        je    .Lx364_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx364_44
                        cmp              eax, 99
                                                                                        je    .Lx364_44
                        cmp              eax, 13
                                                                                        jne   .Lx364_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx364_44
                                                                                        jmp   .Lx364_45
.Lx364_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx364_53
                        cmp              eax, 99
                                                                                        je    .Lx364_53
                        cmp              eax, 13
                                                                                        jne   .Lx364_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx364_53
                                                                                        jmp   .Lx364_46
.Lx364_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx364_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx364_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx364_51
.Lx364_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx364_47
                        cmp              eax, 99
                                                                                        je    .Lx364_47
                        cmp              eax, 13
                                                                                        jne   .Lx364_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx364_47
                                                                                        jmp   .Lx364_48
.Lx364_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx364_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx364_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx364_51
.Lx364_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx364_49
                        cmp              edx, 14
                                                                                        je    .Lx364_53
                                                                                        jmp   .Lx364_52
.Lx364_49:
                        cmp              edx, 14
                                                                                        je    .Lx364_52
                        cmp              ecx, 7
                                                                                        je    .Lx364_53
                        cmp              edx, 7
                                                                                        je    .Lx364_53
                        cmp              ecx, 6
                                                                                        jne   .Lx364_50
                        cmp              edx, 6
                                                                                        jne   .Lx364_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx364_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx364_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx364_51
                                                                                        jmp   .Lx364_52
.Lx364_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx364_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx364_53
.Lx364_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx364_54
.Lx364_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx364_54
.Lx364_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx364_54:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n176_op11_α
                                                                                        jmp   n208_var_ref_α
n204_op11_β:
                                                                                        jmp   n176_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx367_2]
                                                                                        jmp   .Lx367_3
.Lx367_2:
                        .quad            .Lx367_2_s
.Lx367_2_s:
                        .string          "undo"
.Lx367_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n211_op11_α
                                                                                        jmp   n210_var_ref_α
n206_op11_β:
                                                                                        jmp   n211_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n212_lit_string_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n214_op11_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n211_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 3952], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n216_var_ref_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n217_lit_string_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          ";"
#-----------------------------------------------------------------------------------------------------------------------
n214_op11_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2128]
                        mov              rsi, qword ptr [rip + .Lx377_2]
                                                                                        jmp   .Lx377_3
.Lx377_2:
                        .quad            .Lx377_2_s
.Lx377_2_s:
                        .string          "[]"
.Lx377_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n218_var_ref_α
n214_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n219_op11_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                                                                                        jmp   n220_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n221_lit_string_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx384_2]
                                                                                        jmp   .Lx384_3
.Lx384_2:
                        .quad            .Lx384_2_s
.Lx384_2_s:
                        .string          "cleanup"
.Lx384_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n211_op11_α
                                                                                        jmp   n223_var_ref_α
n219_op11_β:
                                                                                        jmp   n211_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n220_op11_α:
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3928], rax
                        lea              rdi, [rbp + 3904]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n224_op11_α
n220_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n225_lit_string_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n226_lit_string_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n224_op11_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 3984]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n228_lit_string_α
n224_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n229_lit_string_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n230_lit_string_α
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "catch"
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n231_op11_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rbp + 4048], 1
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n232_op11_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n233_op11_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n234_lit_string_α
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n231_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              rsi, qword ptr [rip + .Lx397_2]
                                                                                        jmp   .Lx397_3
.Lx397_2:
                        .quad            .Lx397_2_s
.Lx397_2_s:
                        .string          "fail"
.Lx397_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n211_op11_α
                                                                                        jmp   n235_var_ref_α
n231_op11_β:
                                                                                        jmp   n211_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n232_op11_α:
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4120], rax
                        lea              rdi, [rbp + 4080]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n236_op11_α
n232_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n233_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n237_op11_α
n233_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n238_lit_string_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n239_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n236_op11_α:
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 4200], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4216], rax
                        lea              rdi, [rbp + 4176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n240_lit_string_α
n236_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n237_op11_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n241_lit_string_α
n237_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n242_lit_integer_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n243_lit_string_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 4416], 1
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rbp + 4424], rax
                                                                                        jmp   n244_lit_string_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n245_op11_α
.Lx408_0:
                        .quad            .Lx408_0_s
.Lx408_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n246_op11_α
.Lx409_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n247_lit_string_α
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 4336], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n248_lit_integer_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n245_op11_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2712], rax
                        lea              rdi, [rbp + 2672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n249_lit_string_α
n245_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n250_var_ref_α
n246_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n251_lit_string_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "once"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:
                        mov              qword ptr [rbp + 4256], 6
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 4264], rax
                                                                                        jmp   n252_op11_α
.Lx415_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n253_op11_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n254_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n255_lit_string_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4296], rax
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4288]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n256_op11_α
n252_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_op11_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n176_op11_α
                                                                                        jmp   n257_op11_α
n253_op11_β:
                                                                                        jmp   n176_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n254_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n258_lit_string_α
n254_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n259_lit_string_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n256_op11_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4368]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n260_op11_α
n256_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n257_op11_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2416]
                        lea              r8, [rbp + 2416]
.Lx425_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx425_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx425_41
                        cmp              esi, 1
                                                                                        jne   .Lx425_55
                        mov              r8, rax
                                                                                        jmp   .Lx425_40
.Lx425_55:
                        cmp              esi, 2
                                                                                        jne   .Lx425_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx425_41
                        mov              r8, rax
                                                                                        jmp   .Lx425_40
.Lx425_56:
                        cmp              eax, 13
                                                                                        jne   .Lx425_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx425_41
                        cmp              rax, r8
                                                                                        je    .Lx425_41
                        mov              r8, rax
                                                                                        jmp   .Lx425_40
.Lx425_41:
                        lea              r9, [rbp + 2432]
.Lx425_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx425_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx425_43
                        cmp              esi, 1
                                                                                        jne   .Lx425_57
                        mov              r9, rax
                                                                                        jmp   .Lx425_42
.Lx425_57:
                        cmp              esi, 2
                                                                                        jne   .Lx425_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx425_43
                        mov              r9, rax
                                                                                        jmp   .Lx425_42
.Lx425_58:
                        cmp              eax, 13
                                                                                        jne   .Lx425_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx425_43
                        cmp              rax, r9
                                                                                        je    .Lx425_43
                        mov              r9, rax
                                                                                        jmp   .Lx425_42
.Lx425_43:
                        cmp              r8, r9
                                                                                        je    .Lx425_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx425_44
                        cmp              eax, 99
                                                                                        je    .Lx425_44
                        cmp              eax, 13
                                                                                        jne   .Lx425_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx425_44
                                                                                        jmp   .Lx425_45
.Lx425_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx425_53
                        cmp              eax, 99
                                                                                        je    .Lx425_53
                        cmp              eax, 13
                                                                                        jne   .Lx425_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx425_53
                                                                                        jmp   .Lx425_46
.Lx425_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx425_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx425_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx425_51
.Lx425_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx425_47
                        cmp              eax, 99
                                                                                        je    .Lx425_47
                        cmp              eax, 13
                                                                                        jne   .Lx425_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx425_47
                                                                                        jmp   .Lx425_48
.Lx425_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx425_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx425_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx425_51
.Lx425_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx425_49
                        cmp              edx, 14
                                                                                        je    .Lx425_53
                                                                                        jmp   .Lx425_52
.Lx425_49:
                        cmp              edx, 14
                                                                                        je    .Lx425_52
                        cmp              ecx, 7
                                                                                        je    .Lx425_53
                        cmp              edx, 7
                                                                                        je    .Lx425_53
                        cmp              ecx, 6
                                                                                        jne   .Lx425_50
                        cmp              edx, 6
                                                                                        jne   .Lx425_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx425_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx425_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx425_51
                                                                                        jmp   .Lx425_52
.Lx425_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx425_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx425_53
.Lx425_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx425_54
.Lx425_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx425_54
.Lx425_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx425_54:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n176_op11_α
                                                                                        jmp   n261_suspend_α
n257_op11_β:
                                                                                        jmp   n176_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n262_lit_string_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n263_op11_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n260_op11_α:
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4456], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4472], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4488], rax
                        lea              rdi, [rbp + 4448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              eax, 99
                                                                                        je    n154_op11_α
                                                                                        jmp   n264_op11_α
n260_op11_β:
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n261_suspend_α:
                        lea              rax, [rip + n261_suspend_β]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n261_suspend_β:
                                                                                        jmp   n176_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n265_lit_string_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n263_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n266_lit_string_α
n263_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n264_op11_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3616]
                        lea              r8, [rbp + 3616]
.Lx433_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx433_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx433_41
                        cmp              esi, 1
                                                                                        jne   .Lx433_55
                        mov              r8, rax
                                                                                        jmp   .Lx433_40
.Lx433_55:
                        cmp              esi, 2
                                                                                        jne   .Lx433_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx433_41
                        mov              r8, rax
                                                                                        jmp   .Lx433_40
.Lx433_56:
                        cmp              eax, 13
                                                                                        jne   .Lx433_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx433_41
                        cmp              rax, r8
                                                                                        je    .Lx433_41
                        mov              r8, rax
                                                                                        jmp   .Lx433_40
.Lx433_41:
                        lea              r9, [rbp + 3632]
.Lx433_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx433_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx433_43
                        cmp              esi, 1
                                                                                        jne   .Lx433_57
                        mov              r9, rax
                                                                                        jmp   .Lx433_42
.Lx433_57:
                        cmp              esi, 2
                                                                                        jne   .Lx433_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx433_43
                        mov              r9, rax
                                                                                        jmp   .Lx433_42
.Lx433_58:
                        cmp              eax, 13
                                                                                        jne   .Lx433_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx433_43
                        cmp              rax, r9
                                                                                        je    .Lx433_43
                        mov              r9, rax
                                                                                        jmp   .Lx433_42
.Lx433_43:
                        cmp              r8, r9
                                                                                        je    .Lx433_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx433_44
                        cmp              eax, 99
                                                                                        je    .Lx433_44
                        cmp              eax, 13
                                                                                        jne   .Lx433_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx433_44
                                                                                        jmp   .Lx433_45
.Lx433_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx433_53
                        cmp              eax, 99
                                                                                        je    .Lx433_53
                        cmp              eax, 13
                                                                                        jne   .Lx433_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx433_53
                                                                                        jmp   .Lx433_46
.Lx433_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx433_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx433_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx433_51
.Lx433_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx433_47
                        cmp              eax, 99
                                                                                        je    .Lx433_47
                        cmp              eax, 13
                                                                                        jne   .Lx433_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx433_47
                                                                                        jmp   .Lx433_48
.Lx433_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx433_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx433_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx433_51
.Lx433_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx433_49
                        cmp              edx, 14
                                                                                        je    .Lx433_53
                                                                                        jmp   .Lx433_52
.Lx433_49:
                        cmp              edx, 14
                                                                                        je    .Lx433_52
                        cmp              ecx, 7
                                                                                        je    .Lx433_53
                        cmp              edx, 7
                                                                                        je    .Lx433_53
                        cmp              ecx, 6
                                                                                        jne   .Lx433_50
                        cmp              edx, 6
                                                                                        jne   .Lx433_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx433_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx433_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx433_51
                                                                                        jmp   .Lx433_52
.Lx433_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx433_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx433_53
.Lx433_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx433_54
.Lx433_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx433_54
.Lx433_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx433_54:
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              eax, 99
                                                                                        je    n154_op11_α
                                                                                        jmp   n267_suspend_α
n264_op11_β:
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n268_var_ref_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n269_op11_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n267_suspend_α:
                        lea              rax, [rip + n267_suspend_β]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n267_suspend_β:
                                                                                        jmp   n154_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4784]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n270_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n269_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n271_op11_α
n269_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n270_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n272_op11_α
n270_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n271_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n273_op11_α
n271_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n274_lit_string_α
n272_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n273_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n275_op11_α
n273_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n276_lit_string_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n275_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n211_op11_α
                                                                                        jmp   n277_op11_α
n275_op11_β:
                                                                                        jmp   n211_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n278_op11_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n277_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx448_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx448_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx448_41
                        cmp              esi, 1
                                                                                        jne   .Lx448_55
                        mov              r8, rax
                                                                                        jmp   .Lx448_40
.Lx448_55:
                        cmp              esi, 2
                                                                                        jne   .Lx448_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx448_41
                        mov              r8, rax
                                                                                        jmp   .Lx448_40
.Lx448_56:
                        cmp              eax, 13
                                                                                        jne   .Lx448_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx448_41
                        cmp              rax, r8
                                                                                        je    .Lx448_41
                        mov              r8, rax
                                                                                        jmp   .Lx448_40
.Lx448_41:
                        lea              r9, [rbp + 192]
.Lx448_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx448_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx448_43
                        cmp              esi, 1
                                                                                        jne   .Lx448_57
                        mov              r9, rax
                                                                                        jmp   .Lx448_42
.Lx448_57:
                        cmp              esi, 2
                                                                                        jne   .Lx448_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx448_43
                        mov              r9, rax
                                                                                        jmp   .Lx448_42
.Lx448_58:
                        cmp              eax, 13
                                                                                        jne   .Lx448_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx448_43
                        cmp              rax, r9
                                                                                        je    .Lx448_43
                        mov              r9, rax
                                                                                        jmp   .Lx448_42
.Lx448_43:
                        cmp              r8, r9
                                                                                        je    .Lx448_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx448_44
                        cmp              eax, 99
                                                                                        je    .Lx448_44
                        cmp              eax, 13
                                                                                        jne   .Lx448_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx448_44
                                                                                        jmp   .Lx448_45
.Lx448_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx448_53
                        cmp              eax, 99
                                                                                        je    .Lx448_53
                        cmp              eax, 13
                                                                                        jne   .Lx448_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx448_53
                                                                                        jmp   .Lx448_46
.Lx448_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx448_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx448_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx448_51
.Lx448_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx448_47
                        cmp              eax, 99
                                                                                        je    .Lx448_47
                        cmp              eax, 13
                                                                                        jne   .Lx448_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx448_47
                                                                                        jmp   .Lx448_48
.Lx448_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx448_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx448_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx448_51
.Lx448_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx448_49
                        cmp              edx, 14
                                                                                        je    .Lx448_53
                                                                                        jmp   .Lx448_52
.Lx448_49:
                        cmp              edx, 14
                                                                                        je    .Lx448_52
                        cmp              ecx, 7
                                                                                        je    .Lx448_53
                        cmp              edx, 7
                                                                                        je    .Lx448_53
                        cmp              ecx, 6
                                                                                        jne   .Lx448_50
                        cmp              edx, 6
                                                                                        jne   .Lx448_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx448_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx448_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx448_51
                                                                                        jmp   .Lx448_52
.Lx448_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx448_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx448_53
.Lx448_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx448_54
.Lx448_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx448_54
.Lx448_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx448_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n211_op11_α
                                                                                        jmp   n279_suspend_α
n277_op11_β:
                                                                                        jmp   n211_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n278_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n280_op11_α
n278_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n279_suspend_α:
                        lea              rax, [rip + n279_suspend_β]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n279_suspend_β:
                                                                                        jmp   n211_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n280_op11_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n281_op11_α
n280_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n281_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1616]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n282_lit_string_α
n281_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n283_lit_string_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n284_op11_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1744]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n285_lit_string_α
n284_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n286_lit_string_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n287_lit_integer_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n288_op11_α
.Lx459_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n289_op11_α
n288_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_op11_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1952]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n290_op11_α
n289_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2032]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n291_op11_α
n290_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n291_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 976]
                        lea              r8, [rbp + 976]
.Lx463_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              esi, 1
                                                                                        jne   .Lx463_55
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_55:
                        cmp              esi, 2
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_56:
                        cmp              eax, 13
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              rax, r8
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_41:
                        lea              r9, [rbp + 992]
.Lx463_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        cmp              esi, 1
                                                                                        jne   .Lx463_57
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_57:
                        cmp              esi, 2
                                                                                        jne   .Lx463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_58:
                        cmp              eax, 13
                                                                                        jne   .Lx463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        cmp              rax, r9
                                                                                        je    .Lx463_43
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_43:
                        cmp              r8, r9
                                                                                        je    .Lx463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_44
                        cmp              eax, 99
                                                                                        je    .Lx463_44
                        cmp              eax, 13
                                                                                        jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx463_44
                                                                                        jmp   .Lx463_45
.Lx463_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_53
                        cmp              eax, 99
                                                                                        je    .Lx463_53
                        cmp              eax, 13
                                                                                        jne   .Lx463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_46
.Lx463_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx463_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx463_51
.Lx463_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_47
                        cmp              eax, 99
                                                                                        je    .Lx463_47
                        cmp              eax, 13
                                                                                        jne   .Lx463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_47
                                                                                        jmp   .Lx463_48
.Lx463_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx463_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx463_51
.Lx463_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx463_49
                        cmp              edx, 14
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_52
.Lx463_49:
                        cmp              edx, 14
                                                                                        je    .Lx463_52
                        cmp              ecx, 7
                                                                                        je    .Lx463_53
                        cmp              edx, 7
                                                                                        je    .Lx463_53
                        cmp              ecx, 6
                                                                                        jne   .Lx463_50
                        cmp              edx, 6
                                                                                        jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx463_51
                                                                                        jmp   .Lx463_52
.Lx463_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx463_53
.Lx463_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx463_54
.Lx463_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx463_54
.Lx463_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx463_54:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n193_op11_α
                                                                                        jmp   n292_suspend_α
n291_op11_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n292_suspend_α:
                        lea              rax, [rip + n292_suspend_β]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n292_suspend_β:
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 4768]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_test$2F4_res]
                        push             rax
                        mov              rax, [rbp + 4808]
                        mov              rbp, [rbp + 4824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 4816]
                        lea              rsp, [rbp + 4832]
                        mov              rbp, [rbp + 4824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_undo$2F0_α
proc_test_undo$2F0_α:
                        .global          proc_test_undo$2F0_α
                        .global          proc_test_undo$2F0_β
                        .global          proc_test_undo$2F0_γ
                        .global          proc_test_undo$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_undo$2F0_α_body:
                        lea              rax, [rip + n473_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n466_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx474_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx474_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx474_101
.Lx474_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx474_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_undo$2F0_ω
                                                                                        jmp   n467_lit_string_α
n466_op11_β:
                                                                                        jmp   proc_test_undo$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n468_lit_string_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n469_lit_string_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n470_op11_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n472_op11_α
                                                                                        jmp   n471_call_proc_staged_α
n470_op11_β:
                                                                                        jmp   n472_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n471_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx480_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx480_21
.Lx480_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx480_21:
                        mov              rdi, qword ptr [rip + .Lx480_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx480_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx480_3]
                        lea              rdx, [rip + .Lx480_4]
                                                                                        jmp   rax
.Lx480_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx480_2
.Lx480_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx480_2
.Lx480_1:
                        call             rt_faildescr@PLT
.Lx480_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n472_op11_α
                                                                                        jmp   n473_suspend_α
n471_call_proc_staged_β:
                                                                                        jmp   n472_op11_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n472_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_undo$2F0_ω
                                                                                        jmp   proc_test_undo$2F0_ω
n472_op11_β:
                                                                                        jmp   proc_test_undo$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n473_suspend_α:
                        lea              rax, [rip + n473_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_undo$2F0_γ
n473_suspend_β:
                                                                                        jmp   n471_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_undo$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_undo$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_undo$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_undo$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_undo$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
                        .global          proc_$disj0$2F1_α
                        .global          proc_$disj0$2F1_β
                        .global          proc_$disj0$2F1_γ
                        .global          proc_$disj0$2F1_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n501_suspend_β]
                        mov              qword ptr [rbp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n484_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx502_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx502_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx502_101
.Lx502_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx502_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n485_var_ref_α
n484_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n486_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n487_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n487_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lx507_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              esi, 1
                                                                                        jne   .Lx507_55
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_55:
                        cmp              esi, 2
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_56:
                        cmp              eax, 13
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              rax, r8
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_41:
                        lea              r9, [rbp + 528]
.Lx507_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        cmp              esi, 1
                                                                                        jne   .Lx507_57
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_57:
                        cmp              esi, 2
                                                                                        jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_58:
                        cmp              eax, 13
                                                                                        jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        cmp              rax, r9
                                                                                        je    .Lx507_43
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_43:
                        cmp              r8, r9
                                                                                        je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_44
                        cmp              eax, 99
                                                                                        je    .Lx507_44
                        cmp              eax, 13
                                                                                        jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx507_44
                                                                                        jmp   .Lx507_45
.Lx507_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_53
                        cmp              eax, 99
                                                                                        je    .Lx507_53
                        cmp              eax, 13
                                                                                        jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_46
.Lx507_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx507_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx507_51
.Lx507_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_47
                        cmp              eax, 99
                                                                                        je    .Lx507_47
                        cmp              eax, 13
                                                                                        jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx507_47
                                                                                        jmp   .Lx507_48
.Lx507_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx507_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx507_51
.Lx507_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx507_49
                        cmp              edx, 14
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_52
.Lx507_49:
                        cmp              edx, 14
                                                                                        je    .Lx507_52
                        cmp              ecx, 7
                                                                                        je    .Lx507_53
                        cmp              edx, 7
                                                                                        je    .Lx507_53
                        cmp              ecx, 6
                                                                                        jne   .Lx507_50
                        cmp              edx, 6
                                                                                        jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx507_51
                                                                                        jmp   .Lx507_52
.Lx507_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx507_53
.Lx507_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx507_54
.Lx507_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx507_54
.Lx507_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx507_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n488_lit_string_α
n487_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n490_op11_α
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n489_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n491_var_ref_α
n489_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn511:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n492_lit_string_α
n490_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n493_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n494_var_ref_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n495_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n496_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n495_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx519_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx519_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx519_41
                        cmp              esi, 1
                                                                                        jne   .Lx519_55
                        mov              r8, rax
                                                                                        jmp   .Lx519_40
.Lx519_55:
                        cmp              esi, 2
                                                                                        jne   .Lx519_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx519_41
                        mov              r8, rax
                                                                                        jmp   .Lx519_40
.Lx519_56:
                        cmp              eax, 13
                                                                                        jne   .Lx519_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx519_41
                        cmp              rax, r8
                                                                                        je    .Lx519_41
                        mov              r8, rax
                                                                                        jmp   .Lx519_40
.Lx519_41:
                        lea              r9, [rbp + 224]
.Lx519_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx519_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx519_43
                        cmp              esi, 1
                                                                                        jne   .Lx519_57
                        mov              r9, rax
                                                                                        jmp   .Lx519_42
.Lx519_57:
                        cmp              esi, 2
                                                                                        jne   .Lx519_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx519_43
                        mov              r9, rax
                                                                                        jmp   .Lx519_42
.Lx519_58:
                        cmp              eax, 13
                                                                                        jne   .Lx519_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx519_43
                        cmp              rax, r9
                                                                                        je    .Lx519_43
                        mov              r9, rax
                                                                                        jmp   .Lx519_42
.Lx519_43:
                        cmp              r8, r9
                                                                                        je    .Lx519_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx519_44
                        cmp              eax, 99
                                                                                        je    .Lx519_44
                        cmp              eax, 13
                                                                                        jne   .Lx519_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx519_44
                                                                                        jmp   .Lx519_45
.Lx519_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx519_53
                        cmp              eax, 99
                                                                                        je    .Lx519_53
                        cmp              eax, 13
                                                                                        jne   .Lx519_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx519_53
                                                                                        jmp   .Lx519_46
.Lx519_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx519_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx519_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx519_51
.Lx519_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx519_47
                        cmp              eax, 99
                                                                                        je    .Lx519_47
                        cmp              eax, 13
                                                                                        jne   .Lx519_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx519_47
                                                                                        jmp   .Lx519_48
.Lx519_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx519_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx519_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx519_51
.Lx519_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx519_49
                        cmp              edx, 14
                                                                                        je    .Lx519_53
                                                                                        jmp   .Lx519_52
.Lx519_49:
                        cmp              edx, 14
                                                                                        je    .Lx519_52
                        cmp              ecx, 7
                                                                                        je    .Lx519_53
                        cmp              edx, 7
                                                                                        je    .Lx519_53
                        cmp              ecx, 6
                                                                                        jne   .Lx519_50
                        cmp              edx, 6
                                                                                        jne   .Lx519_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx519_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx519_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx519_51
                                                                                        jmp   .Lx519_52
.Lx519_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx519_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx519_53
.Lx519_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx519_54
.Lx519_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx519_54
.Lx519_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx519_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n498_op11_α
                                                                                        jmp   n497_lit_integer_α
n495_op11_β:
                                                                                        jmp   n498_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n496_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n499_call_proc_staged_α
n496_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n500_call_proc_staged_α
.Lx521_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   proc_$disj0$2F1_ω
n498_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n499_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx524_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx524_21
.Lx524_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx524_21:
                        mov              rdi, qword ptr [rip + .Lx524_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx524_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx524_3]
                        lea              rdx, [rip + .Lx524_4]
                                                                                        jmp   rax
.Lx524_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx524_2
.Lx524_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx524_2
.Lx524_1:
                        call             rt_faildescr@PLT
.Lx524_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n499_call_proc_staged_β
n499_call_proc_staged_β:
                                                                                        jmp   n489_op11_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n500_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx526_21
.Lx526_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx526_21:
                        mov              edi, 13
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx526_1
                        lea              rcx, [rip + .Lx526_3]
                        lea              rdx, [rip + .Lx526_4]
                                                                                        jmp   rax
.Lx526_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx526_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx526_2
.Lx526_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx526_2
.Lx526_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx526_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx526_2
.Lx526_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx526_2
.Lx526_1:
                        call             rt_faildescr@PLT
.Lx526_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n501_suspend_α
                                                                                        jmp   n498_op11_α
n500_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "a/1"
#-----------------------------------------------------------------------------------------------------------------------
n501_suspend_α:
                        lea              rax, [rip + n501_suspend_β]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n501_suspend_β:
                                                                                        jmp   n498_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 576]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 616]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ok$2F0_α
proc_ok$2F0_α:
                        .global          proc_ok$2F0_α
                        .global          proc_ok$2F0_β
                        .global          proc_ok$2F0_γ
                        .global          proc_ok$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_ok$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n529_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx533_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx533_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx533_101
.Lx533_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx533_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_ok$2F0_ω
                                                                                        jmp   n530_move_label_α
n529_op11_β:
                                                                                        jmp   proc_ok$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_move_label_α:
                        lea              rax, [rip + n531_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_ok$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n531_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_ok$2F0_ω
                                                                                        jmp   proc_ok$2F0_ω
n531_op11_β:
                                                                                        jmp   proc_ok$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n532_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n532_disjunction_β:
                                                                                        jmp   proc_ok$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ok$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ok$2F0_β:
                                                                                        jmp   n532_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_ok$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ok$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ok$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx539_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx539_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ok$2F0_α_body
.Lx539_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx539_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n543_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n540_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx545_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx545_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx545_101
.Lx545_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx545_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n541_lit_string_α
n540_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n542_call_proc_staged_α
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n542_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx548_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx548_21
.Lx548_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx548_21:
                        mov              rdi, qword ptr [rip + .Lx548_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx548_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx548_3]
                        lea              rdx, [rip + .Lx548_4]
                                                                                        jmp   rax
.Lx548_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx548_2
.Lx548_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx548_2
.Lx548_1:
                        call             rt_faildescr@PLT
.Lx548_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n544_op11_α
                                                                                        jmp   n543_suspend_α
n542_call_proc_staged_β:
                                                                                        jmp   n544_op11_α
.Lx548_0:
                        .quad            .Lx548_0_s
.Lx548_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n543_suspend_α:
                        lea              rax, [rip + n543_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n543_suspend_β:
                                                                                        jmp   n542_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n544_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n544_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n555_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n552_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx557_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx557_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx557_101
.Lx557_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx557_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n553_lit_string_α
n552_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n554_call_proc_staged_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n554_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx560_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx560_21
.Lx560_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx560_21:
                        mov              rdi, qword ptr [rip + .Lx560_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx560_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx560_3]
                        lea              rdx, [rip + .Lx560_4]
                                                                                        jmp   rax
.Lx560_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx560_2
.Lx560_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx560_2
.Lx560_1:
                        call             rt_faildescr@PLT
.Lx560_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n556_op11_α
                                                                                        jmp   n555_suspend_α
n554_call_proc_staged_β:
                                                                                        jmp   n556_op11_α
.Lx560_0:
                        .quad            .Lx560_0_s
.Lx560_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n555_suspend_α:
                        lea              rax, [rip + n555_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n555_suspend_β:
                                                                                        jmp   n554_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n556_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n556_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n564_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx576_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx576_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx576_101
.Lx576_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx576_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n565_lit_string_α
n564_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n566_lit_string_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "test_undo"
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n567_lit_string_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n568_lit_string_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n569_lit_integer_α
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "test_undo"
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n570_op11_α
.Lx581_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n570_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n571_lit_string_α
n570_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n572_op11_α
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n572_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n574_op11_α
                                                                                        jmp   n573_call_proc_staged_α
n572_op11_β:
                                                                                        jmp   n574_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx586_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx586_21
.Lx586_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx586_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx586_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx586_23
.Lx586_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx586_23:
                        mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx586_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx586_3]
                        lea              rdx, [rip + .Lx586_4]
                                                                                        jmp   rax
.Lx586_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx586_2
.Lx586_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx586_2
.Lx586_1:
                        call             rt_faildescr@PLT
.Lx586_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n574_op11_α
                                                                                        jmp   n575_suspend_α
n573_call_proc_staged_β:
                                                                                        jmp   n574_op11_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n574_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n574_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n575_suspend_α:
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n575_suspend_β:
                                                                                        jmp   n573_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n597_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n590_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx598_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx598_101
.Lx598_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx598_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n591_lit_string_α
n590_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n592_lit_string_α
.Lx599_0:
                        .quad            .Lx599_0_s
.Lx599_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n593_lit_integer_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n594_op11_α
.Lx601_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n594_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n596_op11_α
                                                                                        jmp   n595_call_proc_staged_α
n594_op11_β:
                                                                                        jmp   n596_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n595_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx604_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx604_21
.Lx604_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx604_21:
                        mov              rdi, qword ptr [rip + .Lx604_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx604_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx604_3]
                        lea              rdx, [rip + .Lx604_4]
                                                                                        jmp   rax
.Lx604_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx604_2
.Lx604_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx604_2
.Lx604_1:
                        call             rt_faildescr@PLT
.Lx604_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n596_op11_α
                                                                                        jmp   n597_suspend_α
n595_call_proc_staged_β:
                                                                                        jmp   n596_op11_α
.Lx604_0:
                        .quad            .Lx604_0_s
.Lx604_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n596_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n596_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n597_suspend_α:
                        lea              rax, [rip + n597_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n597_suspend_β:
                                                                                        jmp   n595_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n614_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n608_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx615_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx615_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx615_101
.Lx615_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx615_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n609_lit_string_α
n608_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n610_lit_string_α
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n611_op11_α
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n611_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n613_op11_α
                                                                                        jmp   n612_call_proc_staged_α
n611_op11_β:
                                                                                        jmp   n613_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx620_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx620_21
.Lx620_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx620_21:
                        mov              rdi, qword ptr [rip + .Lx620_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx620_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx620_3]
                        lea              rdx, [rip + .Lx620_4]
                                                                                        jmp   rax
.Lx620_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx620_2
.Lx620_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx620_2
.Lx620_1:
                        call             rt_faildescr@PLT
.Lx620_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n613_op11_α
                                                                                        jmp   n614_suspend_α
n612_call_proc_staged_β:
                                                                                        jmp   n613_op11_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n613_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n613_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n614_suspend_α:
                        lea              rax, [rip + n614_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n614_suspend_β:
                                                                                        jmp   n612_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_t1$2F0_α
proc_t1$2F0_α:
                        .global          proc_t1$2F0_α
                        .global          proc_t1$2F0_β
                        .global          proc_t1$2F0_γ
                        .global          proc_t1$2F0_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_t1$2F0_α_body:
                        lea              rax, [rip + n635_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n624_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx636_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx636_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx636_101
.Lx636_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx636_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_t1$2F0_ω
                                                                                        jmp   n625_lit_string_α
n624_op11_β:
                                                                                        jmp   proc_t1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n626_op11_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n626_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn639:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn639]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n628_op11_α
                                                                                        jmp   n627_lit_string_α
n626_op11_β:
                                                                                        jmp   n628_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n629_var_ref_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n628_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_t1$2F0_ω
                                                                                        jmp   n630_lit_integer_α
n628_op11_β:
                                                                                        jmp   proc_t1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n631_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n632_call_proc_staged_α
.Lx644_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n631_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n628_op11_α
                                                                                        jmp   n633_call_proc_staged_α
n631_op11_β:
                                                                                        jmp   n628_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n632_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx647_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx647_21
.Lx647_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx647_21:
                        mov              edi, 13
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx647_1
                        lea              rcx, [rip + .Lx647_3]
                        lea              rdx, [rip + .Lx647_4]
                                                                                        jmp   rax
.Lx647_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx647_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx647_2
.Lx647_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx647_2
.Lx647_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx647_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx647_2
.Lx647_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx647_2
.Lx647_1:
                        call             rt_faildescr@PLT
.Lx647_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n635_suspend_α
                                                                                        jmp   n634_op11_α
n632_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "a/1"
#-----------------------------------------------------------------------------------------------------------------------
n633_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx649_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx649_21
.Lx649_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx649_21:
                        mov              rdi, qword ptr [rip + .Lx649_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx649_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx649_3]
                        lea              rdx, [rip + .Lx649_4]
                                                                                        jmp   rax
.Lx649_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx649_2
.Lx649_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx649_2
.Lx649_1:
                        call             rt_faildescr@PLT
.Lx649_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n628_op11_α
                                                                                        jmp   n633_call_proc_staged_β
n633_call_proc_staged_β:
                                                                                        jmp   n628_op11_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "undo/1"
#-----------------------------------------------------------------------------------------------------------------------
n634_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_t1$2F0_ω
                                                                                        jmp   proc_t1$2F0_ω
n634_op11_β:
                                                                                        jmp   proc_t1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n635_suspend_α:
                        lea              rax, [rip + n635_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_t1$2F0_γ
n635_suspend_β:
                                                                                        jmp   n634_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_t1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_t1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_t1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 440]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_t1$2F0_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_a$2F1_α
proc_a$2F1_α:
                        .global          proc_a$2F1_α
                        .global          proc_a$2F1_β
                        .global          proc_a$2F1_γ
                        .global          proc_a$2F1_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_a$2F1_α_body:
                        lea              rax, [rip + n656_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n654_var_ref_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n654_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n655_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n655_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              qword ptr [rbp + 80], 0
.Lx660_60:
                        .section         .rodata
.Lbynamegenfn288:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn288]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        lea              rcx, [rbp + 80]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_a$2F1_ω
                                                                                        jmp   n656_suspend_α
n655_call_builtin_gen_β:
                                                                                        jmp   .Lx660_60
#-----------------------------------------------------------------------------------------------------------------------
n656_suspend_α:
                        lea              rax, [rip + n656_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_a$2F1_γ
n656_suspend_β:
                                                                                        jmp   n655_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_a$2F1_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_test$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 992
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 688
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$disj1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_$disj1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "test_undo/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_test_undo$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "$disj0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_$disj0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "ok/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_ok$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_ok$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "t1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_t1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "a/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_a$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
                        sub              rsp, 72
                        mov              rdi, rsp
                        mov              ecx, 72
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n664_call_proc_staged_α
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          "undo"
#-----------------------------------------------------------------------------------------------------------------------
n664_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx667_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx667_21
.Lx667_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx667_21:
                        mov              rdi, qword ptr [rip + .Lx667_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx667_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx667_3]
                        lea              rdx, [rip + .Lx667_4]
                                                                                        jmp   rax
.Lx667_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx667_2
.Lx667_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx667_2
.Lx667_1:
                        call             rt_faildescr@PLT
.Lx667_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n664_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 72
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 72
                        ret
                        .section         .note.GNU-stack,"",@progbits
