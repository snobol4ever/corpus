                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
                        .global          proc_test$2F1_α
                        .global          proc_test$2F1_β
                        .global          proc_test$2F1_γ
                        .global          proc_test$2F1_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F1_α_body:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx21_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx21_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx21_101
.Lx21_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx21_101:
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
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n3_op11_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "sync"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              rsi, qword ptr [rip + .Lx25_2]
                                                                                        jmp   .Lx25_3
.Lx25_2:
                        .quad            .Lx25_2_s
.Lx25_2_s:
                        .string          "sync"
.Lx25_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_lit_string_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n6_op11_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "retractall/1"
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
n5_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn29:               .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n7_lit_string_α
n6_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n8_var_ref_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n10_call_proc_staged_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx35_20
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx35_21
.Lx35_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx35_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx35_22
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx35_23
.Lx35_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx35_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx35_24
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx35_25
.Lx35_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx35_25:
                        mov              rdi, qword ptr [rip + .Lx35_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx35_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx35_3]
                        lea              rdx, [rip + .Lx35_4]
                                                                                        jmp   rax
.Lx35_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx35_2
.Lx35_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx35_2
.Lx35_1:
                        call             rt_faildescr@PLT
.Lx35_2:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n11_call_proc_staged_α
n10_call_proc_staged_β:
                                                                                        jmp   n5_op11_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "on_signal/3"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α:
                        mov              qword ptr [rbp + 384], 0
                        mov              edi, 5
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx37_1
                        lea              rcx, [rip + .Lx37_3]
                        lea              rdx, [rip + .Lx37_4]
                                                                                        jmp   rax
.Lx37_3:
                        mov              qword ptr [rbp + 392], rsp
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax
                                                                                        jne   .Lx37_5
                        mov              qword ptr [rbp + 384], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx37_2
.Lx37_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx37_2
.Lx37_4:
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax
                                                                                        jne   .Lx37_6
                        mov              qword ptr [rbp + 384], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx37_2
.Lx37_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx37_2
.Lx37_1:
                        call             rt_faildescr@PLT
.Lx37_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n13_lit_string_α
                                                                                        jmp   n12_lit_string_α
n11_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 392]
                                                                                        jmp   qword ptr [rsp]
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "test_term/0"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n14_var_ref_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n15_var_ref_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n19_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx49_21
.Lx49_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx49_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx49_23
.Lx49_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx49_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_24
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx49_25
.Lx49_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx49_25:
                        mov              rdi, qword ptr [rip + .Lx49_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx49_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4]
                                                                                        jmp   rax
.Lx49_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx49_2
.Lx49_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx49_2
.Lx49_1:
                        call             rt_faildescr@PLT
.Lx49_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n20_suspend_α
n18_call_proc_staged_β:
                                                                                        jmp   n5_op11_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "on_signal/3"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx51_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx51_21
.Lx51_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx51_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx51_22
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx51_23
.Lx51_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx51_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx51_24
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx51_25
.Lx51_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx51_25:
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx51_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx51_3]
                        lea              rdx, [rip + .Lx51_4]
                                                                                        jmp   rax
.Lx51_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx51_2
.Lx51_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx51_2
.Lx51_1:
                        call             rt_faildescr@PLT
.Lx51_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n5_op11_α
n19_call_proc_staged_β:
                                                                                        jmp   n5_op11_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "on_signal/3"
#-----------------------------------------------------------------------------------------------------------------------
n20_suspend_α:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n20_suspend_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_length$2F2_α
proc_length$2F2_α:
                        .global          proc_length$2F2_α
                        .global          proc_length$2F2_β
                        .global          proc_length$2F2_γ
                        .global          proc_length$2F2_ω
                        sub              rsp, 496
                        mov              [rsp + 472], rcx
                        mov              [rsp + 480], rdx
                        mov              [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
                        call             rt_jmp_frame_lexprep2@PLT
proc_length$2F2_α_body:
                        lea              rax, [rip + n66_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx67_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx67_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx67_101
.Lx67_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx67_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   n55_var_ref_α
n54_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx72_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx72_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx72_41
                        cmp              esi, 1
                                                                                        jne   .Lx72_55
                        mov              r8, rax
                                                                                        jmp   .Lx72_40
.Lx72_55:
                        cmp              esi, 2
                                                                                        jne   .Lx72_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx72_41
                        mov              r8, rax
                                                                                        jmp   .Lx72_40
.Lx72_56:
                        cmp              eax, 13
                                                                                        jne   .Lx72_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx72_41
                        cmp              rax, r8
                                                                                        je    .Lx72_41
                        mov              r8, rax
                                                                                        jmp   .Lx72_40
.Lx72_41:
                        lea              r9, [rbp + 368]
.Lx72_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx72_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx72_43
                        cmp              esi, 1
                                                                                        jne   .Lx72_57
                        mov              r9, rax
                                                                                        jmp   .Lx72_42
.Lx72_57:
                        cmp              esi, 2
                                                                                        jne   .Lx72_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx72_43
                        mov              r9, rax
                                                                                        jmp   .Lx72_42
.Lx72_58:
                        cmp              eax, 13
                                                                                        jne   .Lx72_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx72_43
                        cmp              rax, r9
                                                                                        je    .Lx72_43
                        mov              r9, rax
                                                                                        jmp   .Lx72_42
.Lx72_43:
                        cmp              r8, r9
                                                                                        je    .Lx72_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx72_44
                        cmp              eax, 99
                                                                                        je    .Lx72_44
                        cmp              eax, 13
                                                                                        jne   .Lx72_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx72_44
                                                                                        jmp   .Lx72_45
.Lx72_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx72_53
                        cmp              eax, 99
                                                                                        je    .Lx72_53
                        cmp              eax, 13
                                                                                        jne   .Lx72_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx72_53
                                                                                        jmp   .Lx72_46
.Lx72_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx72_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx72_53
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
                                                                                        jmp   .Lx72_51
.Lx72_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx72_47
                        cmp              eax, 99
                                                                                        je    .Lx72_47
                        cmp              eax, 13
                                                                                        jne   .Lx72_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx72_47
                                                                                        jmp   .Lx72_48
.Lx72_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx72_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx72_53
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
                                                                                        jmp   .Lx72_51
.Lx72_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx72_49
                        cmp              edx, 14
                                                                                        je    .Lx72_53
                                                                                        jmp   .Lx72_52
.Lx72_49:
                        cmp              edx, 14
                                                                                        je    .Lx72_52
                        cmp              ecx, 7
                                                                                        je    .Lx72_53
                        cmp              edx, 7
                                                                                        je    .Lx72_53
                        cmp              ecx, 6
                                                                                        jne   .Lx72_50
                        cmp              edx, 6
                                                                                        jne   .Lx72_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx72_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx72_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx72_51
                                                                                        jmp   .Lx72_52
.Lx72_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx72_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx72_53
.Lx72_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx72_54
.Lx72_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx72_54
.Lx72_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx72_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n58_var_ref_α
n57_op11_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
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
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   proc_length$2F2_ω
n59_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 272]
                        lea              r8, [rbp + 272]
.Lx78_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx78_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_41
                        cmp              esi, 1
                                                                                        jne   .Lx78_55
                        mov              r8, rax
                                                                                        jmp   .Lx78_40
.Lx78_55:
                        cmp              esi, 2
                                                                                        jne   .Lx78_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx78_41
                        mov              r8, rax
                                                                                        jmp   .Lx78_40
.Lx78_56:
                        cmp              eax, 13
                                                                                        jne   .Lx78_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_41
                        cmp              rax, r8
                                                                                        je    .Lx78_41
                        mov              r8, rax
                                                                                        jmp   .Lx78_40
.Lx78_41:
                        lea              r9, [rbp + 288]
.Lx78_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx78_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_43
                        cmp              esi, 1
                                                                                        jne   .Lx78_57
                        mov              r9, rax
                                                                                        jmp   .Lx78_42
.Lx78_57:
                        cmp              esi, 2
                                                                                        jne   .Lx78_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx78_43
                        mov              r9, rax
                                                                                        jmp   .Lx78_42
.Lx78_58:
                        cmp              eax, 13
                                                                                        jne   .Lx78_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_43
                        cmp              rax, r9
                                                                                        je    .Lx78_43
                        mov              r9, rax
                                                                                        jmp   .Lx78_42
.Lx78_43:
                        cmp              r8, r9
                                                                                        je    .Lx78_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_44
                        cmp              eax, 99
                                                                                        je    .Lx78_44
                        cmp              eax, 13
                                                                                        jne   .Lx78_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx78_44
                                                                                        jmp   .Lx78_45
.Lx78_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_53
                        cmp              eax, 99
                                                                                        je    .Lx78_53
                        cmp              eax, 13
                                                                                        jne   .Lx78_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx78_53
                                                                                        jmp   .Lx78_46
.Lx78_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx78_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx78_53
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
                                                                                        jmp   .Lx78_51
.Lx78_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_47
                        cmp              eax, 99
                                                                                        je    .Lx78_47
                        cmp              eax, 13
                                                                                        jne   .Lx78_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx78_47
                                                                                        jmp   .Lx78_48
.Lx78_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx78_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx78_53
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
                                                                                        jmp   .Lx78_51
.Lx78_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx78_49
                        cmp              edx, 14
                                                                                        je    .Lx78_53
                                                                                        jmp   .Lx78_52
.Lx78_49:
                        cmp              edx, 14
                                                                                        je    .Lx78_52
                        cmp              ecx, 7
                                                                                        je    .Lx78_53
                        cmp              edx, 7
                                                                                        je    .Lx78_53
                        cmp              ecx, 6
                                                                                        jne   .Lx78_50
                        cmp              edx, 6
                                                                                        jne   .Lx78_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx78_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx78_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx78_51
                                                                                        jmp   .Lx78_52
.Lx78_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx78_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx78_53
.Lx78_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx78_54
.Lx78_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx78_54
.Lx78_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx78_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n62_var_ref_α
n61_op11_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n64_var_ref_α
.Lx81_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n65_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx85_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx85_21
.Lx85_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx85_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx85_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx85_23
.Lx85_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx85_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx85_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx85_25
.Lx85_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx85_25:
                        mov              edi, 12
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx85_1
                        lea              rcx, [rip + .Lx85_3]
                        lea              rdx, [rip + .Lx85_4]
                                                                                        jmp   rax
.Lx85_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx85_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx85_2
.Lx85_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx85_2
.Lx85_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx85_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx85_2
.Lx85_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx85_2
.Lx85_1:
                        call             rt_faildescr@PLT
.Lx85_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n66_suspend_α
n65_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n66_suspend_α:
                        lea              rax, [rip + n66_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_length$2F2_γ
n66_suspend_β:
                                                                                        jmp   n65_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_length$2F2_res]
                        push             rax
                        mov              rax, [rbp + 472]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_ω:
                        mov              rax, [rbp + 480]
                        lea              rsp, [rbp + 496]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 1184
                        mov              [rsp + 1160], rcx
                        mov              [rsp + 1168], rdx
                        mov              [rsp + 1176], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1152
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx121_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx121_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx121_101
.Lx121_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx121_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n89_var_ref_α
n88_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n91_op11_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "signals"
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx125_2]
                                                                                        jmp   .Lx125_3
.Lx125_2:
                        .quad            .Lx125_2_s
.Lx125_2_s:
                        .string          "signals"
.Lx125_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n92_var_ref_α
n91_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n94_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n93_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n95_op11_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "sync"
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx130_2]
                                                                                        jmp   .Lx130_3
.Lx130_2:
                        .quad            .Lx130_2_s
.Lx130_2_s:
                        .string          "sync"
.Lx130_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n96_var_ref_α
n95_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n98_op11_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              rsi, qword ptr [rip + .Lx134_2]
                                                                                        jmp   .Lx134_3
.Lx134_2:
                        .quad            .Lx134_2_s
.Lx134_2_s:
                        .string          "[]"
.Lx134_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n99_var_ref_α
n98_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n101_lit_string_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n102_lit_string_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n103_op11_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n104_lit_string_α
n103_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n105_lit_string_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "setup_call_cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n106_lit_string_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "on_signal"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n107_var_ref_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n109_op11_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n109_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n110_lit_string_α
n109_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n111_lit_string_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "test_term"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n112_lit_string_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "on_signal"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n113_var_ref_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n116_op11_α
n115_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n117_op11_α
n116_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n118_op11_α
n117_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx158_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx158_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        cmp              esi, 1
                                                                                        jne   .Lx158_55
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_55:
                        cmp              esi, 2
                                                                                        jne   .Lx158_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_56:
                        cmp              eax, 13
                                                                                        jne   .Lx158_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_41
                        cmp              rax, r8
                                                                                        je    .Lx158_41
                        mov              r8, rax
                                                                                        jmp   .Lx158_40
.Lx158_41:
                        lea              r9, [rbp + 208]
.Lx158_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx158_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        cmp              esi, 1
                                                                                        jne   .Lx158_57
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_57:
                        cmp              esi, 2
                                                                                        jne   .Lx158_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_58:
                        cmp              eax, 13
                                                                                        jne   .Lx158_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx158_43
                        cmp              rax, r9
                                                                                        je    .Lx158_43
                        mov              r9, rax
                                                                                        jmp   .Lx158_42
.Lx158_43:
                        cmp              r8, r9
                                                                                        je    .Lx158_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_44
                        cmp              eax, 99
                                                                                        je    .Lx158_44
                        cmp              eax, 13
                                                                                        jne   .Lx158_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx158_44
                                                                                        jmp   .Lx158_45
.Lx158_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_53
                        cmp              eax, 99
                                                                                        je    .Lx158_53
                        cmp              eax, 13
                                                                                        jne   .Lx158_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx158_53
                                                                                        jmp   .Lx158_46
.Lx158_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx158_53
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
                                                                                        jmp   .Lx158_51
.Lx158_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx158_47
                        cmp              eax, 99
                                                                                        je    .Lx158_47
                        cmp              eax, 13
                                                                                        jne   .Lx158_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx158_47
                                                                                        jmp   .Lx158_48
.Lx158_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx158_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx158_53
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
                                                                                        jmp   .Lx158_51
.Lx158_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx158_49
                        cmp              edx, 14
                                                                                        je    .Lx158_53
                                                                                        jmp   .Lx158_52
.Lx158_49:
                        cmp              edx, 14
                                                                                        je    .Lx158_52
                        cmp              ecx, 7
                                                                                        je    .Lx158_53
                        cmp              edx, 7
                                                                                        je    .Lx158_53
                        cmp              ecx, 6
                                                                                        jne   .Lx158_50
                        cmp              edx, 6
                                                                                        jne   .Lx158_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx158_51
                                                                                        jmp   .Lx158_52
.Lx158_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx158_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx158_53
.Lx158_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx158_54
.Lx158_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx158_54
.Lx158_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx158_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n119_move_label_α
n118_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_move_label_α:
                        lea              rax, [rip + n93_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n120_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n120_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n120_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1160]
                        lea              rsp, [rbp + 1184]
                        mov              rbp, [rbp + 1176]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 1168]
                        lea              rsp, [rbp + 1184]
                        mov              rbp, [rbp + 1176]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 1200
                        mov              qword ptr [rsp + 1176], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1152], r11
                        lea              rax, [rip + .Lx163_2]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rax, [rip + .Lx163_3]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 1120
                        mov              edx, 1152
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx163_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1184
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx163_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1184
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_term$2F1_α
proc_term$2F1_α:
                        .global          proc_term$2F1_α
                        .global          proc_term$2F1_β
                        .global          proc_term$2F1_γ
                        .global          proc_term$2F1_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 384
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_term$2F1_α_body:
                        lea              rax, [rip + n176_suspend_β]
                        mov              qword ptr [rbp + 384], rax
#-----------------------------------------------------------------------------------------------------------------------
n164_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx177_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx177_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx177_101
.Lx177_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx177_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F1_ω
                                                                                        jmp   n165_var_ref_α
n164_op11_β:
                                                                                        jmp   proc_term$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n167_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        lea              r8, [rbp + 320]
.Lx182_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx182_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        cmp              esi, 1
                                                                                        jne   .Lx182_55
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_55:
                        cmp              esi, 2
                                                                                        jne   .Lx182_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_56:
                        cmp              eax, 13
                                                                                        jne   .Lx182_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        cmp              rax, r8
                                                                                        je    .Lx182_41
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_41:
                        lea              r9, [rbp + 336]
.Lx182_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx182_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        cmp              esi, 1
                                                                                        jne   .Lx182_57
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_57:
                        cmp              esi, 2
                                                                                        jne   .Lx182_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_58:
                        cmp              eax, 13
                                                                                        jne   .Lx182_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        cmp              rax, r9
                                                                                        je    .Lx182_43
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_43:
                        cmp              r8, r9
                                                                                        je    .Lx182_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_44
                        cmp              eax, 99
                                                                                        je    .Lx182_44
                        cmp              eax, 13
                                                                                        jne   .Lx182_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx182_44
                                                                                        jmp   .Lx182_45
.Lx182_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_53
                        cmp              eax, 99
                                                                                        je    .Lx182_53
                        cmp              eax, 13
                                                                                        jne   .Lx182_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx182_53
                                                                                        jmp   .Lx182_46
.Lx182_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx182_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx182_53
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
                                                                                        jmp   .Lx182_51
.Lx182_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_47
                        cmp              eax, 99
                                                                                        je    .Lx182_47
                        cmp              eax, 13
                                                                                        jne   .Lx182_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx182_47
                                                                                        jmp   .Lx182_48
.Lx182_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx182_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx182_53
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
                                                                                        jmp   .Lx182_51
.Lx182_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx182_49
                        cmp              edx, 14
                                                                                        je    .Lx182_53
                                                                                        jmp   .Lx182_52
.Lx182_49:
                        cmp              edx, 14
                                                                                        je    .Lx182_52
                        cmp              ecx, 7
                                                                                        je    .Lx182_53
                        cmp              edx, 7
                                                                                        je    .Lx182_53
                        cmp              ecx, 6
                                                                                        jne   .Lx182_50
                        cmp              edx, 6
                                                                                        jne   .Lx182_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx182_51
                                                                                        jmp   .Lx182_52
.Lx182_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx182_53
.Lx182_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx182_54
.Lx182_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx182_54
.Lx182_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx182_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n169_op11_α
                                                                                        jmp   n168_var_ref_α
n167_op11_β:
                                                                                        jmp   n169_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n170_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n169_op11_α:
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
                                                                                        je    proc_term$2F1_ω
                                                                                        jmp   proc_term$2F1_ω
n169_op11_β:
                                                                                        jmp   proc_term$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n171_call_proc_staged_α
.Lx186_0:
                        .quad            100000
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx188_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx188_21
.Lx188_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx188_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx188_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx188_23
.Lx188_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx188_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx188_1
                        lea              rcx, [rip + .Lx188_3]
                        lea              rdx, [rip + .Lx188_4]
                                                                                        jmp   rax
.Lx188_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx188_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx188_2
.Lx188_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx188_2
.Lx188_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx188_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx188_2
.Lx188_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx188_2
.Lx188_1:
                        call             rt_faildescr@PLT
.Lx188_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n169_op11_α
                                                                                        jmp   n172_var_ref_α
n171_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn192:              .string          "$tt_is_list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n171_call_proc_staged_β
                                                                                        jmp   n174_lit_string_α
n173_op11_β:
                                                                                        jmp   n171_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n175_op11_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn195:              .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n171_call_proc_staged_β
                                                                                        jmp   n176_suspend_α
n175_op11_β:
                                                                                        jmp   n171_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n176_suspend_α:
                        lea              rax, [rip + n176_suspend_β]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F1_γ
n176_suspend_β:
                                                                                        jmp   n171_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F1_β:
                                                                                        jmp   qword ptr [rbp + 384]
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_term$2F1_res]
                        push             rax
                        mov              rax, [rbp + 440]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F1_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_prolog_flag$2F2_α
proc_current_prolog_flag$2F2_α:
                        .global          proc_current_prolog_flag$2F2_α
                        .global          proc_current_prolog_flag$2F2_β
                        .global          proc_current_prolog_flag$2F2_γ
                        .global          proc_current_prolog_flag$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_current_prolog_flag$2F2_α_body:
                        lea              rax, [rip + n201_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n199_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n200_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx206_60:
                        .section         .rodata
.Lbynamegenfn83:        .string          "$current_prolog_flag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn83]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_current_prolog_flag$2F2_ω
                                                                                        jmp   n201_suspend_α
n200_call_builtin_gen_β:
                                                                                        jmp   .Lx206_60
#-----------------------------------------------------------------------------------------------------------------------
n201_suspend_α:
                        lea              rax, [rip + n201_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_current_prolog_flag$2F2_γ
n201_suspend_β:
                                                                                        jmp   n200_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_current_prolog_flag$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_term$2F0_α
proc_test_term$2F0_α:
                        .global          proc_test_term$2F0_α
                        .global          proc_test_term$2F0_β
                        .global          proc_test_term$2F0_γ
                        .global          proc_test_term$2F0_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_term$2F0_α_body:
                        lea              rax, [rip + n225_suspend_β]
                        mov              qword ptr [rbp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n209_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx226_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx226_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx226_101
.Lx226_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx226_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_term$2F0_ω
                                                                                        jmp   n210_lit_string_α
n209_op11_β:
                                                                                        jmp   proc_test_term$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n211_var_ref_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "pid"
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n212_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              qword ptr [rbp + 512], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx231_20
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx231_21
.Lx231_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx231_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx231_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx231_23
.Lx231_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx231_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx231_1
                        lea              rcx, [rip + .Lx231_3]
                        lea              rdx, [rip + .Lx231_4]
                                                                                        jmp   rax
.Lx231_3:
                        mov              qword ptr [rbp + 520], rsp
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx231_5
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx231_2
.Lx231_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx231_2
.Lx231_4:
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx231_6
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx231_2
.Lx231_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx231_2
.Lx231_1:
                        call             rt_faildescr@PLT
.Lx231_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n214_op11_α
                                                                                        jmp   n213_var_ref_α
n212_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   qword ptr [rsp]
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_op11_α:
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
                                                                                        je    proc_test_term$2F0_ω
                                                                                        jmp   proc_test_term$2F0_ω
n214_op11_β:
                                                                                        jmp   proc_test_term$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n216_call_proc_staged_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n216_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx237_20
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx237_21
.Lx237_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx237_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx237_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx237_23
.Lx237_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx237_23:
                        mov              rdi, qword ptr [rip + .Lx237_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx237_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx237_3]
                        lea              rdx, [rip + .Lx237_4]
                                                                                        jmp   rax
.Lx237_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx237_2
.Lx237_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx237_2
.Lx237_1:
                        call             rt_faildescr@PLT
.Lx237_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n212_call_proc_staged_β
                                                                                        jmp   n217_lit_string_α
n216_call_proc_staged_β:
                                                                                        jmp   n212_call_proc_staged_β
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "kill/2"
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n218_lit_string_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n219_lit_string_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n220_lit_integer_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "timeout"
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n221_op11_α
.Lx241_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n221_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_term$2F0_ω
                                                                                        jmp   n222_lit_string_α
n221_op11_β:
                                                                                        jmp   proc_test_term$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n223_op11_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n223_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n214_op11_α
                                                                                        jmp   n224_call_proc_staged_α
n223_op11_β:
                                                                                        jmp   n214_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx246_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx246_21
.Lx246_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx246_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx246_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx246_23
.Lx246_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx246_23:
                        mov              rdi, qword ptr [rip + .Lx246_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx246_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx246_3]
                        lea              rdx, [rip + .Lx246_4]
                                                                                        jmp   rax
.Lx246_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx246_2
.Lx246_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx246_2
.Lx246_1:
                        call             rt_faildescr@PLT
.Lx246_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n216_call_proc_staged_β
                                                                                        jmp   n225_suspend_α
n224_call_proc_staged_β:
                                                                                        jmp   n216_call_proc_staged_β
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "thread_wait/2"
#-----------------------------------------------------------------------------------------------------------------------
n225_suspend_α:
                        lea              rax, [rip + n225_suspend_β]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_term$2F0_γ
n225_suspend_β:
                                                                                        jmp   n224_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_term$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_term$2F0_β:
                                                                                        jmp   qword ptr [rbp + 576]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_term$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_term$2F0_res]
                        push             rax
                        mov              rax, [rbp + 616]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_term$2F0_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n256_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx257_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx257_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx257_101
.Lx257_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx257_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n250_lit_string_α
n249_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n251_lit_string_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n252_lit_integer_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n253_op11_α
.Lx260_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n253_op11_α:
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
                                                                                        je    n255_op11_α
                                                                                        jmp   n254_call_proc_staged_α
n253_op11_β:
                                                                                        jmp   n255_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx263_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx263_21
.Lx263_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx263_21:
                        mov              rdi, qword ptr [rip + .Lx263_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx263_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx263_3]
                        lea              rdx, [rip + .Lx263_4]
                                                                                        jmp   rax
.Lx263_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx263_2
.Lx263_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx263_2
.Lx263_1:
                        call             rt_faildescr@PLT
.Lx263_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n255_op11_α
                                                                                        jmp   n256_suspend_α
n254_call_proc_staged_β:
                                                                                        jmp   n255_op11_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
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
n255_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_suspend_α:
                        lea              rax, [rip + n256_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n256_suspend_β:
                                                                                        jmp   n254_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n267_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx274_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx274_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx274_101
.Lx274_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx274_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n268_lit_string_α
n267_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n269_lit_string_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n270_op11_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "unix"
#-----------------------------------------------------------------------------------------------------------------------
n270_op11_α:
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
                                                                                        je    n272_op11_α
                                                                                        jmp   n271_call_proc_staged_α
n270_op11_β:
                                                                                        jmp   n272_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx279_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx279_21
.Lx279_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx279_21:
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx279_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx279_3]
                        lea              rdx, [rip + .Lx279_4]
                                                                                        jmp   rax
.Lx279_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx279_2
.Lx279_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx279_2
.Lx279_1:
                        call             rt_faildescr@PLT
.Lx279_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n272_op11_α
                                                                                        jmp   n273_suspend_α
n271_call_proc_staged_β:
                                                                                        jmp   n272_op11_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
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
n272_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n273_suspend_α:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n273_suspend_β:
                                                                                        jmp   n271_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
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
                        lea              rax, [rip + n294_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n283_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx295_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx295_101
.Lx295_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx295_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n284_lit_string_α
n283_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n285_lit_string_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "test_signals"
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n286_lit_string_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n287_lit_string_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n288_lit_integer_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "test_signals"
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n289_op11_α
.Lx300_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n289_op11_α:
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
                                                                                        jmp   n290_lit_string_α
n289_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n291_op11_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n291_op11_α:
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
                                                                                        je    n293_op11_α
                                                                                        jmp   n292_call_proc_staged_α
n291_op11_β:
                                                                                        jmp   n293_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx305_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx305_21
.Lx305_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx305_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx305_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx305_23
.Lx305_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx305_23:
                        mov              rdi, qword ptr [rip + .Lx305_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx305_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx305_3]
                        lea              rdx, [rip + .Lx305_4]
                                                                                        jmp   rax
.Lx305_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx305_2
.Lx305_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx305_2
.Lx305_1:
                        call             rt_faildescr@PLT
.Lx305_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n293_op11_α
                                                                                        jmp   n294_suspend_α
n292_call_proc_staged_β:
                                                                                        jmp   n293_op11_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n293_op11_α:
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
n293_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n294_suspend_α:
                        lea              rax, [rip + n294_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n294_suspend_β:
                                                                                        jmp   n292_call_proc_staged_β
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
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
                        .global          proc_pj_dir_5$2F0_α
                        .global          proc_pj_dir_5$2F0_β
                        .global          proc_pj_dir_5$2F0_γ
                        .global          proc_pj_dir_5$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n312_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n309_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx314_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx314_101
.Lx314_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx314_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n310_lit_string_α
n309_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n311_call_proc_staged_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "signals"
#-----------------------------------------------------------------------------------------------------------------------
n311_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx317_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx317_21
.Lx317_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx317_21:
                        mov              rdi, qword ptr [rip + .Lx317_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx317_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx317_3]
                        lea              rdx, [rip + .Lx317_4]
                                                                                        jmp   rax
.Lx317_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx317_2
.Lx317_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx317_2
.Lx317_1:
                        call             rt_faildescr@PLT
.Lx317_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n313_op11_α
                                                                                        jmp   n312_suspend_α
n311_call_proc_staged_β:
                                                                                        jmp   n313_op11_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n312_suspend_α:
                        lea              rax, [rip + n312_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n312_suspend_β:
                                                                                        jmp   n311_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
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
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   proc_pj_dir_5$2F0_ω
n313_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_5$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n324_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n321_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx326_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx326_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx326_101
.Lx326_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx326_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n322_lit_string_α
n321_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n323_call_proc_staged_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "signals"
#-----------------------------------------------------------------------------------------------------------------------
n323_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx329_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx329_21
.Lx329_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx329_21:
                        mov              rdi, qword ptr [rip + .Lx329_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx329_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx329_3]
                        lea              rdx, [rip + .Lx329_4]
                                                                                        jmp   rax
.Lx329_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx329_2
.Lx329_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx329_2
.Lx329_1:
                        call             rt_faildescr@PLT
.Lx329_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n325_op11_α
                                                                                        jmp   n324_suspend_α
n323_call_proc_staged_β:
                                                                                        jmp   n325_op11_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n324_suspend_α:
                        lea              rax, [rip + n324_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n324_suspend_β:
                                                                                        jmp   n323_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n325_op11_α:
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
n325_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
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
                        lea              rax, [rip + n339_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n333_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx340_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx340_101
.Lx340_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx340_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n334_lit_string_α
n333_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n335_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n336_op11_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n336_op11_α:
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
                                                                                        je    n338_op11_α
                                                                                        jmp   n337_call_proc_staged_α
n336_op11_β:
                                                                                        jmp   n338_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n337_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx345_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx345_21
.Lx345_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx345_21:
                        mov              rdi, qword ptr [rip + .Lx345_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx345_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx345_3]
                        lea              rdx, [rip + .Lx345_4]
                                                                                        jmp   rax
.Lx345_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx345_2
.Lx345_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx345_2
.Lx345_1:
                        call             rt_faildescr@PLT
.Lx345_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n338_op11_α
                                                                                        jmp   n339_suspend_α
n337_call_proc_staged_β:
                                                                                        jmp   n338_op11_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n338_op11_α:
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
n338_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n339_suspend_α:
                        lea              rax, [rip + n339_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n339_suspend_β:
                                                                                        jmp   n337_call_proc_staged_β
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
                        .globl           proc_$length_$2F3_α
proc_$length_$2F3_α:
                        .global          proc_$length_$2F3_α
                        .global          proc_$length_$2F3_β
                        .global          proc_$length_$2F3_γ
                        .global          proc_$length_$2F3_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1216
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_$length_$2F3_α_body:
                        lea              rax, [rip + n374_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
#-----------------------------------------------------------------------------------------------------------------------
n349_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx390_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx390_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx390_101
.Lx390_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx390_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n350_var_ref_α
n349_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n351_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n352_lit_string_α
.Lx393_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n353_op11_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n353_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx395_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx395_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx395_111
                        cmp              esi, 1
                                                                                        jne   .Lx395_112
                        mov              r8, rax
                                                                                        jmp   .Lx395_110
.Lx395_112:
                        cmp              esi, 2
                                                                                        jne   .Lx395_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx395_111
                        mov              r8, rax
                                                                                        jmp   .Lx395_110
.Lx395_113:
                        cmp              eax, 13
                                                                                        jne   .Lx395_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx395_111
                        cmp              rax, r8
                                                                                        je    .Lx395_111
                        mov              r8, rax
                                                                                        jmp   .Lx395_110
.Lx395_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx395_114
                        cmp              eax, 99
                                                                                        je    .Lx395_114
                        cmp              eax, 13
                                                                                        jne   .Lx395_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx395_114
                                                                                        jmp   .Lx395_118
.Lx395_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx395_115
                        cmp              eax, 6
                                                                                        je    .Lx395_114
                        cmp              eax, 1
                                                                                        jne   .Lx395_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx395_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx395_114
                                                                                        jmp   .Lx395_116
.Lx395_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx395_117
.Lx395_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx395_117
.Lx395_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx395_117:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n355_var_ref_α
                                                                                        jmp   n354_var_ref_α
n353_op11_β:
                                                                                        jmp   n355_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n356_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n357_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n358_op11_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n359_lit_integer_α
.Lx401_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n358_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx402_2]
                                                                                        jmp   .Lx402_3
.Lx402_2:
                        .quad            .Lx402_2_s
.Lx402_2_s:
                        .string          "[]"
.Lx402_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n361_op11_α
                                                                                        jmp   n360_var_ref_α
n358_op11_β:
                                                                                        jmp   n361_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n362_op11_α
.Lx403_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n363_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n355_var_ref_α
n361_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n362_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx407_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx407_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx407_111
                        cmp              esi, 1
                                                                                        jne   .Lx407_112
                        mov              r8, rax
                                                                                        jmp   .Lx407_110
.Lx407_112:
                        cmp              esi, 2
                                                                                        jne   .Lx407_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx407_111
                        mov              r8, rax
                                                                                        jmp   .Lx407_110
.Lx407_113:
                        cmp              eax, 13
                                                                                        jne   .Lx407_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx407_111
                        cmp              rax, r8
                                                                                        je    .Lx407_111
                        mov              r8, rax
                                                                                        jmp   .Lx407_110
.Lx407_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx407_114
                        cmp              eax, 99
                                                                                        je    .Lx407_114
                        cmp              eax, 13
                                                                                        jne   .Lx407_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx407_114
                                                                                        jmp   .Lx407_118
.Lx407_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx407_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx407_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx407_115
                                                                                        jmp   .Lx407_114
.Lx407_119:
                        cmp              eax, 6
                                                                                        jne   .Lx407_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx407_114
                                                                                        jmp   .Lx407_115
.Lx407_120:
                        cmp              eax, 1
                                                                                        jne   .Lx407_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx407_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx407_114
                                                                                        jmp   .Lx407_115
.Lx407_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx407_117
.Lx407_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx407_117
.Lx407_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx407_117:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n364_var_ref_α
n362_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n366_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n365_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   proc_$length_$2F3_ω
n365_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 960]
                        lea              r8, [rbp + 960]
.Lx413_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx413_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx413_41
                        cmp              esi, 1
                                                                                        jne   .Lx413_55
                        mov              r8, rax
                                                                                        jmp   .Lx413_40
.Lx413_55:
                        cmp              esi, 2
                                                                                        jne   .Lx413_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx413_41
                        mov              r8, rax
                                                                                        jmp   .Lx413_40
.Lx413_56:
                        cmp              eax, 13
                                                                                        jne   .Lx413_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx413_41
                        cmp              rax, r8
                                                                                        je    .Lx413_41
                        mov              r8, rax
                                                                                        jmp   .Lx413_40
.Lx413_41:
                        lea              r9, [rbp + 976]
.Lx413_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx413_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx413_43
                        cmp              esi, 1
                                                                                        jne   .Lx413_57
                        mov              r9, rax
                                                                                        jmp   .Lx413_42
.Lx413_57:
                        cmp              esi, 2
                                                                                        jne   .Lx413_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx413_43
                        mov              r9, rax
                                                                                        jmp   .Lx413_42
.Lx413_58:
                        cmp              eax, 13
                                                                                        jne   .Lx413_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx413_43
                        cmp              rax, r9
                                                                                        je    .Lx413_43
                        mov              r9, rax
                                                                                        jmp   .Lx413_42
.Lx413_43:
                        cmp              r8, r9
                                                                                        je    .Lx413_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx413_44
                        cmp              eax, 99
                                                                                        je    .Lx413_44
                        cmp              eax, 13
                                                                                        jne   .Lx413_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx413_44
                                                                                        jmp   .Lx413_45
.Lx413_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx413_53
                        cmp              eax, 99
                                                                                        je    .Lx413_53
                        cmp              eax, 13
                                                                                        jne   .Lx413_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx413_53
                                                                                        jmp   .Lx413_46
.Lx413_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx413_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx413_53
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
                                                                                        jmp   .Lx413_51
.Lx413_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx413_47
                        cmp              eax, 99
                                                                                        je    .Lx413_47
                        cmp              eax, 13
                                                                                        jne   .Lx413_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx413_47
                                                                                        jmp   .Lx413_48
.Lx413_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx413_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx413_53
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
                                                                                        jmp   .Lx413_51
.Lx413_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx413_49
                        cmp              edx, 14
                                                                                        je    .Lx413_53
                                                                                        jmp   .Lx413_52
.Lx413_49:
                        cmp              edx, 14
                                                                                        je    .Lx413_52
                        cmp              ecx, 7
                                                                                        je    .Lx413_53
                        cmp              edx, 7
                                                                                        je    .Lx413_53
                        cmp              ecx, 6
                                                                                        jne   .Lx413_50
                        cmp              edx, 6
                                                                                        jne   .Lx413_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx413_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx413_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx413_51
                                                                                        jmp   .Lx413_52
.Lx413_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx413_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx413_53
.Lx413_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx413_54
.Lx413_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx413_54
.Lx413_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx413_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n361_op11_α
                                                                                        jmp   n368_var_ref_α
n366_op11_β:
                                                                                        jmp   n361_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n369_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n370_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n371_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n372_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n371_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx422_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx422_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_61
                        cmp              esi, 1
                                                                                        jne   .Lx422_62
                        mov              r8, rax
                                                                                        jmp   .Lx422_60
.Lx422_62:
                        cmp              esi, 2
                                                                                        jne   .Lx422_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx422_61
                        mov              r8, rax
                                                                                        jmp   .Lx422_60
.Lx422_63:
                        cmp              eax, 13
                                                                                        jne   .Lx422_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_61
                        cmp              rax, r8
                                                                                        je    .Lx422_61
                        mov              r8, rax
                                                                                        jmp   .Lx422_60
.Lx422_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx422_80
                        cmp              eax, 99
                                                                                        je    .Lx422_80
                        cmp              eax, 13
                                                                                        jne   .Lx422_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx422_80
                                                                                        jmp   .Lx422_74
.Lx422_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx422_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx422_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx422_73
                        lea              r9, [rbp + 640]
.Lx422_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx422_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_65
                        cmp              esi, 1
                                                                                        jne   .Lx422_66
                        mov              r9, rax
                                                                                        jmp   .Lx422_64
.Lx422_66:
                        cmp              esi, 2
                                                                                        jne   .Lx422_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx422_65
                        mov              r9, rax
                                                                                        jmp   .Lx422_64
.Lx422_67:
                        cmp              eax, 13
                                                                                        jne   .Lx422_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_65
                        cmp              rax, r9
                                                                                        je    .Lx422_65
                        mov              r9, rax
                                                                                        jmp   .Lx422_64
.Lx422_65:
                        lea              rcx, [rbp + 656]
.Lx422_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx422_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx422_69
                        cmp              esi, 1
                                                                                        jne   .Lx422_70
                        mov              rcx, rax
                                                                                        jmp   .Lx422_68
.Lx422_70:
                        cmp              esi, 2
                                                                                        jne   .Lx422_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx422_69
                        mov              rcx, rax
                                                                                        jmp   .Lx422_68
.Lx422_71:
                        cmp              eax, 13
                                                                                        jne   .Lx422_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx422_69
                        cmp              rax, rcx
                                                                                        je    .Lx422_69
                        mov              rcx, rax
                                                                                        jmp   .Lx422_68
.Lx422_69:
                        cmp              r9, rcx
                                                                                        je    .Lx422_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx422_75
                        cmp              eax, 99
                                                                                        je    .Lx422_75
                        cmp              eax, 13
                                                                                        jne   .Lx422_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx422_75
                                                                                        jmp   .Lx422_72
.Lx422_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx422_76
                        cmp              eax, 99
                                                                                        je    .Lx422_76
                        cmp              eax, 13
                                                                                        jne   .Lx422_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx422_76
                                                                                        jmp   .Lx422_72
.Lx422_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx422_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx422_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx422_77
.Lx422_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx422_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx422_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx422_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx422_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx422_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 640]
.Lx422_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx422_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_82
                        cmp              esi, 1
                                                                                        jne   .Lx422_83
                        mov              r9, rax
                                                                                        jmp   .Lx422_81
.Lx422_83:
                        cmp              esi, 2
                                                                                        jne   .Lx422_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx422_82
                        mov              r9, rax
                                                                                        jmp   .Lx422_81
.Lx422_84:
                        cmp              eax, 13
                                                                                        jne   .Lx422_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx422_82
                        cmp              rax, r9
                                                                                        je    .Lx422_82
                        mov              r9, rax
                                                                                        jmp   .Lx422_81
.Lx422_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx422_85
                        cmp              eax, 99
                                                                                        je    .Lx422_85
                        cmp              eax, 13
                                                                                        jne   .Lx422_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx422_85
                                                                                        jmp   .Lx422_86
.Lx422_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx422_87
.Lx422_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx422_87:
                        lea              rcx, [rbp + 656]
.Lx422_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx422_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx422_89
                        cmp              esi, 1
                                                                                        jne   .Lx422_90
                        mov              rcx, rax
                                                                                        jmp   .Lx422_88
.Lx422_90:
                        cmp              esi, 2
                                                                                        jne   .Lx422_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx422_89
                        mov              rcx, rax
                                                                                        jmp   .Lx422_88
.Lx422_91:
                        cmp              eax, 13
                                                                                        jne   .Lx422_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx422_89
                        cmp              rax, rcx
                                                                                        je    .Lx422_89
                        mov              rcx, rax
                                                                                        jmp   .Lx422_88
.Lx422_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx422_92
                        cmp              eax, 99
                                                                                        je    .Lx422_92
                        cmp              eax, 13
                                                                                        jne   .Lx422_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx422_92
                                                                                        jmp   .Lx422_93
.Lx422_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx422_94
.Lx422_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx422_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx422_77
.Lx422_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx422_77
.Lx422_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx422_77:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n373_var_ref_α
n371_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n372_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 880]
                        lea              r8, [rbp + 880]
.Lx423_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx423_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx423_41
                        cmp              esi, 1
                                                                                        jne   .Lx423_55
                        mov              r8, rax
                                                                                        jmp   .Lx423_40
.Lx423_55:
                        cmp              esi, 2
                                                                                        jne   .Lx423_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx423_41
                        mov              r8, rax
                                                                                        jmp   .Lx423_40
.Lx423_56:
                        cmp              eax, 13
                                                                                        jne   .Lx423_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx423_41
                        cmp              rax, r8
                                                                                        je    .Lx423_41
                        mov              r8, rax
                                                                                        jmp   .Lx423_40
.Lx423_41:
                        lea              r9, [rbp + 896]
.Lx423_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx423_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx423_43
                        cmp              esi, 1
                                                                                        jne   .Lx423_57
                        mov              r9, rax
                                                                                        jmp   .Lx423_42
.Lx423_57:
                        cmp              esi, 2
                                                                                        jne   .Lx423_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx423_43
                        mov              r9, rax
                                                                                        jmp   .Lx423_42
.Lx423_58:
                        cmp              eax, 13
                                                                                        jne   .Lx423_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx423_43
                        cmp              rax, r9
                                                                                        je    .Lx423_43
                        mov              r9, rax
                                                                                        jmp   .Lx423_42
.Lx423_43:
                        cmp              r8, r9
                                                                                        je    .Lx423_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx423_44
                        cmp              eax, 99
                                                                                        je    .Lx423_44
                        cmp              eax, 13
                                                                                        jne   .Lx423_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx423_44
                                                                                        jmp   .Lx423_45
.Lx423_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx423_53
                        cmp              eax, 99
                                                                                        je    .Lx423_53
                        cmp              eax, 13
                                                                                        jne   .Lx423_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx423_53
                                                                                        jmp   .Lx423_46
.Lx423_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx423_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx423_53
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
                                                                                        jmp   .Lx423_51
.Lx423_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx423_47
                        cmp              eax, 99
                                                                                        je    .Lx423_47
                        cmp              eax, 13
                                                                                        jne   .Lx423_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx423_47
                                                                                        jmp   .Lx423_48
.Lx423_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx423_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx423_53
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
                                                                                        jmp   .Lx423_51
.Lx423_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx423_49
                        cmp              edx, 14
                                                                                        je    .Lx423_53
                                                                                        jmp   .Lx423_52
.Lx423_49:
                        cmp              edx, 14
                                                                                        je    .Lx423_52
                        cmp              ecx, 7
                                                                                        je    .Lx423_53
                        cmp              edx, 7
                                                                                        je    .Lx423_53
                        cmp              ecx, 6
                                                                                        jne   .Lx423_50
                        cmp              edx, 6
                                                                                        jne   .Lx423_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx423_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx423_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx423_51
                                                                                        jmp   .Lx423_52
.Lx423_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx423_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx423_53
.Lx423_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx423_54
.Lx423_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx423_54
.Lx423_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx423_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n361_op11_α
                                                                                        jmp   n374_suspend_α
n372_op11_β:
                                                                                        jmp   n361_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n375_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n374_suspend_α:
                        lea              rax, [rip + n374_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n374_suspend_β:
                                                                                        jmp   n361_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n376_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n376_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx430_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx430_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx430_41
                        cmp              esi, 1
                                                                                        jne   .Lx430_55
                        mov              r8, rax
                                                                                        jmp   .Lx430_40
.Lx430_55:
                        cmp              esi, 2
                                                                                        jne   .Lx430_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx430_41
                        mov              r8, rax
                                                                                        jmp   .Lx430_40
.Lx430_56:
                        cmp              eax, 13
                                                                                        jne   .Lx430_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx430_41
                        cmp              rax, r8
                                                                                        je    .Lx430_41
                        mov              r8, rax
                                                                                        jmp   .Lx430_40
.Lx430_41:
                        lea              r9, [rbp + 544]
.Lx430_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx430_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx430_43
                        cmp              esi, 1
                                                                                        jne   .Lx430_57
                        mov              r9, rax
                                                                                        jmp   .Lx430_42
.Lx430_57:
                        cmp              esi, 2
                                                                                        jne   .Lx430_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx430_43
                        mov              r9, rax
                                                                                        jmp   .Lx430_42
.Lx430_58:
                        cmp              eax, 13
                                                                                        jne   .Lx430_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx430_43
                        cmp              rax, r9
                                                                                        je    .Lx430_43
                        mov              r9, rax
                                                                                        jmp   .Lx430_42
.Lx430_43:
                        cmp              r8, r9
                                                                                        je    .Lx430_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx430_44
                        cmp              eax, 99
                                                                                        je    .Lx430_44
                        cmp              eax, 13
                                                                                        jne   .Lx430_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx430_44
                                                                                        jmp   .Lx430_45
.Lx430_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx430_53
                        cmp              eax, 99
                                                                                        je    .Lx430_53
                        cmp              eax, 13
                                                                                        jne   .Lx430_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx430_53
                                                                                        jmp   .Lx430_46
.Lx430_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx430_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx430_53
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
                                                                                        jmp   .Lx430_51
.Lx430_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx430_47
                        cmp              eax, 99
                                                                                        je    .Lx430_47
                        cmp              eax, 13
                                                                                        jne   .Lx430_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx430_47
                                                                                        jmp   .Lx430_48
.Lx430_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx430_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx430_53
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
                                                                                        jmp   .Lx430_51
.Lx430_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx430_49
                        cmp              edx, 14
                                                                                        je    .Lx430_53
                                                                                        jmp   .Lx430_52
.Lx430_49:
                        cmp              edx, 14
                                                                                        je    .Lx430_52
                        cmp              ecx, 7
                                                                                        je    .Lx430_53
                        cmp              edx, 7
                                                                                        je    .Lx430_53
                        cmp              ecx, 6
                                                                                        jne   .Lx430_50
                        cmp              edx, 6
                                                                                        jne   .Lx430_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx430_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx430_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx430_51
                                                                                        jmp   .Lx430_52
.Lx430_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx430_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx430_53
.Lx430_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx430_54
.Lx430_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx430_54
.Lx430_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx430_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n377_var_ref_α
n376_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n378_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n379_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n379_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx435_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx435_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx435_41
                        cmp              esi, 1
                                                                                        jne   .Lx435_55
                        mov              r8, rax
                                                                                        jmp   .Lx435_40
.Lx435_55:
                        cmp              esi, 2
                                                                                        jne   .Lx435_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx435_41
                        mov              r8, rax
                                                                                        jmp   .Lx435_40
.Lx435_56:
                        cmp              eax, 13
                                                                                        jne   .Lx435_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx435_41
                        cmp              rax, r8
                                                                                        je    .Lx435_41
                        mov              r8, rax
                                                                                        jmp   .Lx435_40
.Lx435_41:
                        lea              r9, [rbp + 464]
.Lx435_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx435_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx435_43
                        cmp              esi, 1
                                                                                        jne   .Lx435_57
                        mov              r9, rax
                                                                                        jmp   .Lx435_42
.Lx435_57:
                        cmp              esi, 2
                                                                                        jne   .Lx435_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx435_43
                        mov              r9, rax
                                                                                        jmp   .Lx435_42
.Lx435_58:
                        cmp              eax, 13
                                                                                        jne   .Lx435_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx435_43
                        cmp              rax, r9
                                                                                        je    .Lx435_43
                        mov              r9, rax
                                                                                        jmp   .Lx435_42
.Lx435_43:
                        cmp              r8, r9
                                                                                        je    .Lx435_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx435_44
                        cmp              eax, 99
                                                                                        je    .Lx435_44
                        cmp              eax, 13
                                                                                        jne   .Lx435_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx435_44
                                                                                        jmp   .Lx435_45
.Lx435_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx435_53
                        cmp              eax, 99
                                                                                        je    .Lx435_53
                        cmp              eax, 13
                                                                                        jne   .Lx435_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx435_53
                                                                                        jmp   .Lx435_46
.Lx435_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx435_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx435_53
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
                                                                                        jmp   .Lx435_51
.Lx435_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx435_47
                        cmp              eax, 99
                                                                                        je    .Lx435_47
                        cmp              eax, 13
                                                                                        jne   .Lx435_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx435_47
                                                                                        jmp   .Lx435_48
.Lx435_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx435_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx435_53
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
                                                                                        jmp   .Lx435_51
.Lx435_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx435_49
                        cmp              edx, 14
                                                                                        je    .Lx435_53
                                                                                        jmp   .Lx435_52
.Lx435_49:
                        cmp              edx, 14
                                                                                        je    .Lx435_52
                        cmp              ecx, 7
                                                                                        je    .Lx435_53
                        cmp              edx, 7
                                                                                        je    .Lx435_53
                        cmp              ecx, 6
                                                                                        jne   .Lx435_50
                        cmp              edx, 6
                                                                                        jne   .Lx435_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx435_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx435_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx435_51
                                                                                        jmp   .Lx435_52
.Lx435_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx435_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx435_53
.Lx435_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx435_54
.Lx435_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx435_54
.Lx435_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx435_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n380_var_ref_α
n379_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n381_var_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n382_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n383_op11_α
.Lx440_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n383_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n384_op11_α
n383_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n384_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n385_var_ref_α
n384_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n386_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n387_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n388_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n388_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx450_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx450_21
.Lx450_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx450_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx450_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx450_23
.Lx450_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx450_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx450_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx450_25
.Lx450_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx450_25:
                        mov              edi, 12
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx450_1
                        lea              rcx, [rip + .Lx450_3]
                        lea              rdx, [rip + .Lx450_4]
                                                                                        jmp   rax
.Lx450_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx450_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx450_2
.Lx450_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx450_2
.Lx450_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx450_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx450_2
.Lx450_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx450_2
.Lx450_1:
                        call             rt_faildescr@PLT
.Lx450_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n389_suspend_α
n388_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n389_suspend_α:
                        lea              rax, [rip + n389_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n389_suspend_β:
                                                                                        jmp   n388_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1216]
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$length_$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1320]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_signals$2F0_α
proc_test_signals$2F0_α:
                        .global          proc_test_signals$2F0_α
                        .global          proc_test_signals$2F0_β
                        .global          proc_test_signals$2F0_γ
                        .global          proc_test_signals$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_signals$2F0_α_body:
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n453_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx461_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx461_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx461_101
.Lx461_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx461_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_signals$2F0_ω
                                                                                        jmp   n454_lit_string_α
n453_op11_β:
                                                                                        jmp   proc_test_signals$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n455_lit_string_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n456_lit_string_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "signals"
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n457_op11_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n457_op11_α:
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
                                                                                        je    n459_op11_α
                                                                                        jmp   n458_call_proc_staged_α
n457_op11_β:
                                                                                        jmp   n459_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx467_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx467_21
.Lx467_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx467_21:
                        mov              rdi, qword ptr [rip + .Lx467_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx467_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx467_3]
                        lea              rdx, [rip + .Lx467_4]
                                                                                        jmp   rax
.Lx467_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx467_2
.Lx467_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx467_2
.Lx467_1:
                        call             rt_faildescr@PLT
.Lx467_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n459_op11_α
                                                                                        jmp   n460_suspend_α
n458_call_proc_staged_β:
                                                                                        jmp   n459_op11_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n459_op11_α:
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
                                                                                        je    proc_test_signals$2F0_ω
                                                                                        jmp   proc_test_signals$2F0_ω
n459_op11_β:
                                                                                        jmp   proc_test_signals$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n460_suspend_α:
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_signals$2F0_γ
n460_suspend_β:
                                                                                        jmp   n458_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_signals$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_signals$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_signals$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_signals$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_signals$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_done$2F0_α
proc_done$2F0_α:
                        .global          proc_done$2F0_α
                        .global          proc_done$2F0_β
                        .global          proc_done$2F0_γ
                        .global          proc_done$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 80
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_done$2F0_α_body:
                        lea              rax, [rip + n473_suspend_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n472_call_builtin_gen_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n472_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              qword ptr [rbp + 48], 0
.Lx475_60:
                        .section         .rodata
.Lbynamegenfn196:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn196]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        lea              rcx, [rbp + 48]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_done$2F0_ω
                                                                                        jmp   n473_suspend_α
n472_call_builtin_gen_β:
                                                                                        jmp   .Lx475_60
#-----------------------------------------------------------------------------------------------------------------------
n473_suspend_α:
                        lea              rax, [rip + n473_suspend_β]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_done$2F0_γ
n473_suspend_β:
                                                                                        jmp   n472_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_done$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_done$2F0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_done$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_done$2F0_res]
                        push             rax
                        mov              rax, [rbp + 104]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_done$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
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
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "length/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_length$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1152
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "term/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_term$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "current_prolog_flag/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_current_prolog_flag$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "test_term/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_test_term$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
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
.Lstartup_pname6:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 160
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
                        mov              esi, 160
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
.Lstartup_pname12:      .string          "$length_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_$length_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "test_signals/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_test_signals$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "done/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_done$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
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
n478_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n479_call_proc_staged_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "signals"
#-----------------------------------------------------------------------------------------------------------------------
n479_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx482_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx482_21
.Lx482_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx482_21:
                        mov              rdi, qword ptr [rip + .Lx482_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx482_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx482_3]
                        lea              rdx, [rip + .Lx482_4]
                                                                                        jmp   rax
.Lx482_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx482_2
.Lx482_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx482_2
.Lx482_1:
                        call             rt_faildescr@PLT
.Lx482_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n479_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
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
