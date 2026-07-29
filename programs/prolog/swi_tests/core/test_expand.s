                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_true$2F0_α
proc_true$2F0_α:
                        .global          proc_true$2F0_α
                        .global          proc_true$2F0_β
                        .global          proc_true$2F0_γ
                        .global          proc_true$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_true$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx4_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx4_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx4_101
.Lx4_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx4_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_true$2F0_ω
                                                                                        jmp   n1_move_label_α
n0_op11_β:
                                                                                        jmp   proc_true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_move_label_α:
                        lea              rax, [rip + n2_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_true$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_op11_α:
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
                                                                                        je    proc_true$2F0_ω
                                                                                        jmp   proc_true$2F0_ω
n2_op11_β:
                                                                                        jmp   proc_true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n3_disjunction_β:
                                                                                        jmp   proc_true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_β:
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx10_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx10_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_true$2F0_α_body
.Lx10_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx10_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
                        .global          proc_test$2F1_α
                        .global          proc_test$2F1_β
                        .global          proc_test$2F1_γ
                        .global          proc_test$2F1_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F1_α_body:
                        lea              rax, [rip + n17_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx18_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx18_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx18_101
.Lx18_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx18_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n14_op11_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "goal_expansion_local_pred"
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx22_2]
                                                                                        jmp   .Lx22_3
.Lx22_2:
                        .quad            .Lx22_2_s
.Lx22_2_s:
                        .string          "goal_expansion_local_pred"
.Lx22_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n15_call_proc_staged_α
n14_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 14
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx24_1
                        lea              rcx, [rip + .Lx24_3]
                        lea              rdx, [rip + .Lx24_4]
                                                                                        jmp   rax
.Lx24_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx24_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx24_2
.Lx24_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx24_2
.Lx24_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx24_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx24_2
.Lx24_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx24_2
.Lx24_1:
                        call             rt_faildescr@PLT
.Lx24_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n17_suspend_α
n15_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "test_foo_bar/0"
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
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
n16_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_suspend_α:
                        lea              rax, [rip + n17_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n17_suspend_β:
                                                                                        jmp   n15_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_clause$2F2_α
proc_clause$2F2_α:
                        .global          proc_clause$2F2_α
                        .global          proc_clause$2F2_β
                        .global          proc_clause$2F2_γ
                        .global          proc_clause$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_clause$2F2_α_body:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n30_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx36_60:
                        .section         .rodata
.Lbynamegenfn14:        .string          "$clause"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn14]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_clause$2F2_ω
                                                                                        jmp   n31_suspend_α
n30_call_builtin_gen_β:
                                                                                        jmp   .Lx36_60
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_clause$2F2_γ
n31_suspend_β:
                                                                                        jmp   n30_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_clause$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_predicate$2F1_α
proc_current_predicate$2F1_α:
                        .global          proc_current_predicate$2F1_α
                        .global          proc_current_predicate$2F1_β
                        .global          proc_current_predicate$2F1_γ
                        .global          proc_current_predicate$2F1_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 112
                        call             rt_jmp_frame_lexprep2@PLT
proc_current_predicate$2F1_α_body:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n40_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx44_60:
                        .section         .rodata
.Lbynamegenfn17:        .string          "$current_predicate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn17]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_current_predicate$2F1_ω
                                                                                        jmp   n41_suspend_α
n40_call_builtin_gen_β:
                                                                                        jmp   .Lx44_60
#-----------------------------------------------------------------------------------------------------------------------
n41_suspend_α:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_current_predicate$2F1_γ
n41_suspend_β:
                                                                                        jmp   n40_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_current_predicate$2F1_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 3120
                        mov              [rsp + 3096], rcx
                        mov              [rsp + 3104], rdx
                        mov              [rsp + 3112], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3024
                        mov              edx, 3088
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n69_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx146_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx146_101
.Lx146_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx146_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n48_var_ref_α
n47_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n50_op11_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "cond_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2960]
                        mov              rsi, qword ptr [rip + .Lx150_2]
                                                                                        jmp   .Lx150_3
.Lx150_2:
                        .quad            .Lx150_2_s
.Lx150_2_s:
                        .string          "cond_dcg"
.Lx150_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n51_var_ref_α
n50_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n54_var_ref_α
n52_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n55_op11_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2880]
                        mov              rsi, qword ptr [rip + .Lx157_2]
                                                                                        jmp   .Lx157_3
.Lx157_2:
                        .quad            .Lx157_2_s
.Lx157_2_s:
                        .string          "true"
.Lx157_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n57_lit_string_α
n55_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n58_op11_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n59_lit_string_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2560]
                        mov              rsi, qword ptr [rip + .Lx160_2]
                                                                                        jmp   .Lx160_3
.Lx160_2:
                        .quad            .Lx160_2_s
.Lx160_2_s:
                        .string          "make_dcg"
.Lx160_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n60_var_ref_α
n58_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n62_lit_integer_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "no_a"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n64_var_ref_α
n61_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n65_op11_α
.Lx165_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n66_var_ref_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2744]
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
                                                                                        je    n69_suspend_α
                                                                                        jmp   n68_call_proc_staged_α
n65_op11_β:
                                                                                        jmp   n69_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n71_op11_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "chained_term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_proc_staged_α:
                        mov              qword ptr [rbp + 2704], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx174_20
                        mov              rax, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx174_21
.Lx174_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        call             rt_arg_stage@PLT
.Lx174_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx174_1
                        lea              rcx, [rip + .Lx174_3]
                        lea              rdx, [rip + .Lx174_4]
                                                                                        jmp   rax
.Lx174_3:
                        mov              qword ptr [rbp + 2712], rsp
                        mov              rax, qword ptr [rbp + 2704]
                        test             rax, rax
                                                                                        jne   .Lx174_5
                        mov              qword ptr [rbp + 2704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx174_2
.Lx174_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx174_2
.Lx174_4:
                        mov              rax, qword ptr [rbp + 2704]
                        test             rax, rax
                                                                                        jne   .Lx174_6
                        mov              qword ptr [rbp + 2704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx174_2
.Lx174_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx174_2
.Lx174_1:
                        call             rt_faildescr@PLT
.Lx174_2:
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n69_suspend_α
                                                                                        jmp   n52_op11_α
n68_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2712]
                                                                                        jmp   qword ptr [rsp]
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "current_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n69_suspend_α:
                        lea              rax, [rip + n69_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n69_suspend_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n72_var_ref_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              rsi, qword ptr [rip + .Lx178_2]
                                                                                        jmp   .Lx178_3
.Lx178_2:
                        .quad            .Lx178_2_s
.Lx178_2_s:
                        .string          "chained_term_expansion"
.Lx178_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n73_var_ref_α
n71_op11_β:
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n77_var_ref_α
n74_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n79_var_ref_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n81_op11_α
n78_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n83_op11_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "meta_arg"
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n84_op11_α
n81_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n85_op11_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              rsi, qword ptr [rip + .Lx195_2]
                                                                                        jmp   .Lx195_3
.Lx195_2:
                        .quad            .Lx195_2_s
.Lx195_2_s:
                        .string          "meta_arg"
.Lx195_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n87_op11_α
                                                                                        jmp   n86_var_ref_α
n83_op11_β:
                                                                                        jmp   n87_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2256]
                        lea              r8, [rbp + 2256]
.Lx196_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx196_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx196_41
                        cmp              esi, 1
                                                                                        jne   .Lx196_55
                        mov              r8, rax
                                                                                        jmp   .Lx196_40
.Lx196_55:
                        cmp              esi, 2
                                                                                        jne   .Lx196_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx196_41
                        mov              r8, rax
                                                                                        jmp   .Lx196_40
.Lx196_56:
                        cmp              eax, 13
                                                                                        jne   .Lx196_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx196_41
                        cmp              rax, r8
                                                                                        je    .Lx196_41
                        mov              r8, rax
                                                                                        jmp   .Lx196_40
.Lx196_41:
                        lea              r9, [rbp + 2272]
.Lx196_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx196_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx196_43
                        cmp              esi, 1
                                                                                        jne   .Lx196_57
                        mov              r9, rax
                                                                                        jmp   .Lx196_42
.Lx196_57:
                        cmp              esi, 2
                                                                                        jne   .Lx196_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx196_43
                        mov              r9, rax
                                                                                        jmp   .Lx196_42
.Lx196_58:
                        cmp              eax, 13
                                                                                        jne   .Lx196_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx196_43
                        cmp              rax, r9
                                                                                        je    .Lx196_43
                        mov              r9, rax
                                                                                        jmp   .Lx196_42
.Lx196_43:
                        cmp              r8, r9
                                                                                        je    .Lx196_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx196_44
                        cmp              eax, 99
                                                                                        je    .Lx196_44
                        cmp              eax, 13
                                                                                        jne   .Lx196_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx196_44
                                                                                        jmp   .Lx196_45
.Lx196_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx196_53
                        cmp              eax, 99
                                                                                        je    .Lx196_53
                        cmp              eax, 13
                                                                                        jne   .Lx196_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx196_53
                                                                                        jmp   .Lx196_46
.Lx196_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx196_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx196_53
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
                                                                                        jmp   .Lx196_51
.Lx196_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx196_47
                        cmp              eax, 99
                                                                                        je    .Lx196_47
                        cmp              eax, 13
                                                                                        jne   .Lx196_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx196_47
                                                                                        jmp   .Lx196_48
.Lx196_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx196_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx196_53
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
                                                                                        jmp   .Lx196_51
.Lx196_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx196_49
                        cmp              edx, 14
                                                                                        je    .Lx196_53
                                                                                        jmp   .Lx196_52
.Lx196_49:
                        cmp              edx, 14
                                                                                        je    .Lx196_52
                        cmp              ecx, 7
                                                                                        je    .Lx196_53
                        cmp              edx, 7
                                                                                        je    .Lx196_53
                        cmp              ecx, 6
                                                                                        jne   .Lx196_50
                        cmp              edx, 6
                                                                                        jne   .Lx196_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx196_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx196_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx196_51
                                                                                        jmp   .Lx196_52
.Lx196_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx196_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx196_53
.Lx196_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx196_54
.Lx196_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx196_54
.Lx196_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx196_54:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n88_lit_string_α
n84_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n89_op11_α
n85_op11_β:
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n91_var_ref_α
n87_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n92_var_ref_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1728]
                        lea              r8, [rbp + 1728]
.Lx202_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx202_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        cmp              esi, 1
                                                                                        jne   .Lx202_55
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_55:
                        cmp              esi, 2
                                                                                        jne   .Lx202_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_56:
                        cmp              eax, 13
                                                                                        jne   .Lx202_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        cmp              rax, r8
                                                                                        je    .Lx202_41
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_41:
                        lea              r9, [rbp + 1744]
.Lx202_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx202_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        cmp              esi, 1
                                                                                        jne   .Lx202_57
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_57:
                        cmp              esi, 2
                                                                                        jne   .Lx202_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_58:
                        cmp              eax, 13
                                                                                        jne   .Lx202_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        cmp              rax, r9
                                                                                        je    .Lx202_43
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_43:
                        cmp              r8, r9
                                                                                        je    .Lx202_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_44
                        cmp              eax, 99
                                                                                        je    .Lx202_44
                        cmp              eax, 13
                                                                                        jne   .Lx202_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx202_44
                                                                                        jmp   .Lx202_45
.Lx202_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_53
                        cmp              eax, 99
                                                                                        je    .Lx202_53
                        cmp              eax, 13
                                                                                        jne   .Lx202_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx202_53
                                                                                        jmp   .Lx202_46
.Lx202_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx202_53
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
                                                                                        jmp   .Lx202_51
.Lx202_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_47
                        cmp              eax, 99
                                                                                        je    .Lx202_47
                        cmp              eax, 13
                                                                                        jne   .Lx202_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx202_47
                                                                                        jmp   .Lx202_48
.Lx202_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx202_53
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
                                                                                        jmp   .Lx202_51
.Lx202_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx202_49
                        cmp              edx, 14
                                                                                        je    .Lx202_53
                                                                                        jmp   .Lx202_52
.Lx202_49:
                        cmp              edx, 14
                                                                                        je    .Lx202_52
                        cmp              ecx, 7
                                                                                        je    .Lx202_53
                        cmp              edx, 7
                                                                                        je    .Lx202_53
                        cmp              ecx, 6
                                                                                        jne   .Lx202_50
                        cmp              edx, 6
                                                                                        jne   .Lx202_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx202_51
                                                                                        jmp   .Lx202_52
.Lx202_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx202_53
.Lx202_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx202_54
.Lx202_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx202_54
.Lx202_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx202_54:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n93_lit_string_α
n89_op11_β:
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n94_lit_string_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n97_var_ref_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n98_lit_string_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n99_op11_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "expand_once"
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n101_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n102_op11_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              rsi, qword ptr [rip + .Lx216_2]
                                                                                        jmp   .Lx216_3
.Lx216_2:
                        .quad            .Lx216_2_s
.Lx216_2_s:
                        .string          "expand_once"
.Lx216_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n104_op11_α
                                                                                        jmp   n103_var_ref_α
n99_op11_β:
                                                                                        jmp   n104_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2144]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n105_var_ref_α
n100_op11_β:
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        mov              qword ptr [rbp + 1648], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx219_20
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx219_21
.Lx219_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        call             rt_arg_stage@PLT
.Lx219_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx219_22
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx219_23
.Lx219_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        call             rt_arg_stage@PLT
.Lx219_23:
                        mov              edi, 2
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx219_1
                        lea              rcx, [rip + .Lx219_3]
                        lea              rdx, [rip + .Lx219_4]
                                                                                        jmp   rax
.Lx219_3:
                        mov              qword ptr [rbp + 1656], rsp
                        mov              rax, qword ptr [rbp + 1648]
                        test             rax, rax
                                                                                        jne   .Lx219_5
                        mov              qword ptr [rbp + 1648], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx219_2
.Lx219_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx219_2
.Lx219_4:
                        mov              rax, qword ptr [rbp + 1648]
                        test             rax, rax
                                                                                        jne   .Lx219_6
                        mov              qword ptr [rbp + 1648], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx219_2
.Lx219_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx219_2
.Lx219_1:
                        call             rt_faildescr@PLT
.Lx219_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n106_suspend_α
n101_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1656]
                                                                                        jmp   qword ptr [rsp]
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n87_op11_α
                                                                                        jmp   n107_op11_α
n102_op11_β:
                                                                                        jmp   n87_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n109_var_ref_α
n104_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n110_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n106_suspend_α:
                        lea              rax, [rip + n106_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n106_suspend_β:
                                                                                        jmp   n101_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1312]
                        lea              r8, [rbp + 1312]
.Lx228_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx228_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        cmp              esi, 1
                                                                                        jne   .Lx228_55
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_55:
                        cmp              esi, 2
                                                                                        jne   .Lx228_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_56:
                        cmp              eax, 13
                                                                                        jne   .Lx228_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_41
                        cmp              rax, r8
                                                                                        je    .Lx228_41
                        mov              r8, rax
                                                                                        jmp   .Lx228_40
.Lx228_41:
                        lea              r9, [rbp + 1328]
.Lx228_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx228_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        cmp              esi, 1
                                                                                        jne   .Lx228_57
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_57:
                        cmp              esi, 2
                                                                                        jne   .Lx228_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_58:
                        cmp              eax, 13
                                                                                        jne   .Lx228_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx228_43
                        cmp              rax, r9
                                                                                        je    .Lx228_43
                        mov              r9, rax
                                                                                        jmp   .Lx228_42
.Lx228_43:
                        cmp              r8, r9
                                                                                        je    .Lx228_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_44
                        cmp              eax, 99
                                                                                        je    .Lx228_44
                        cmp              eax, 13
                                                                                        jne   .Lx228_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx228_44
                                                                                        jmp   .Lx228_45
.Lx228_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_53
                        cmp              eax, 99
                                                                                        je    .Lx228_53
                        cmp              eax, 13
                                                                                        jne   .Lx228_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx228_53
                                                                                        jmp   .Lx228_46
.Lx228_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx228_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx228_53
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
                                                                                        jmp   .Lx228_51
.Lx228_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx228_47
                        cmp              eax, 99
                                                                                        je    .Lx228_47
                        cmp              eax, 13
                                                                                        jne   .Lx228_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx228_47
                                                                                        jmp   .Lx228_48
.Lx228_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx228_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx228_53
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
                                                                                        jmp   .Lx228_51
.Lx228_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx228_49
                        cmp              edx, 14
                                                                                        je    .Lx228_53
                                                                                        jmp   .Lx228_52
.Lx228_49:
                        cmp              edx, 14
                                                                                        je    .Lx228_52
                        cmp              ecx, 7
                                                                                        je    .Lx228_53
                        cmp              edx, 7
                                                                                        je    .Lx228_53
                        cmp              ecx, 6
                                                                                        jne   .Lx228_50
                        cmp              edx, 6
                                                                                        jne   .Lx228_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx228_51
                                                                                        jmp   .Lx228_52
.Lx228_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx228_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx228_53
.Lx228_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx228_54
.Lx228_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx228_54
.Lx228_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx228_54:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n87_op11_α
                                                                                        jmp   n111_call_proc_staged_α
n107_op11_β:
                                                                                        jmp   n87_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n112_lit_string_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        mov              qword ptr [rbp + 2064], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx233_20
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx233_21
.Lx233_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        call             rt_arg_stage@PLT
.Lx233_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx233_22
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx233_23
.Lx233_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        call             rt_arg_stage@PLT
.Lx233_23:
                        mov              edi, 2
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx233_1
                        lea              rcx, [rip + .Lx233_3]
                        lea              rdx, [rip + .Lx233_4]
                                                                                        jmp   rax
.Lx233_3:
                        mov              qword ptr [rbp + 2072], rsp
                        mov              rax, qword ptr [rbp + 2064]
                        test             rax, rax
                                                                                        jne   .Lx233_5
                        mov              qword ptr [rbp + 2064], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx233_2
.Lx233_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx233_2
.Lx233_4:
                        mov              rax, qword ptr [rbp + 2064]
                        test             rax, rax
                                                                                        jne   .Lx233_6
                        mov              qword ptr [rbp + 2064], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx233_2
.Lx233_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx233_2
.Lx233_1:
                        call             rt_faildescr@PLT
.Lx233_2:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n61_op11_α
                                                                                        jmp   n114_suspend_α
n110_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2072]
                                                                                        jmp   qword ptr [rsp]
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              edi, 7
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        mov              qword ptr [rbp + 1272], rsp
                        mov              rax, qword ptr [rbp + 1264]
                        test             rax, rax
                                                                                        jne   .Lx235_5
                        mov              qword ptr [rbp + 1264], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_4:
                        mov              rax, qword ptr [rbp + 1264]
                        test             rax, rax
                                                                                        jne   .Lx235_6
                        mov              qword ptr [rbp + 1264], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_1:
                        call             rt_faildescr@PLT
.Lx235_2:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n87_op11_α
                                                                                        jmp   n115_suspend_α
n111_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1272]
                                                                                        jmp   qword ptr [rsp]
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "e_not/0"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n116_var_ref_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n117_op11_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n114_suspend_α:
                        lea              rax, [rip + n114_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n114_suspend_β:
                                                                                        jmp   n110_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n115_suspend_α:
                        lea              rax, [rip + n115_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n115_suspend_β:
                                                                                        jmp   n111_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              rsi, qword ptr [rip + .Lx244_2]
                                                                                        jmp   .Lx244_3
.Lx244_2:
                        .quad            .Lx244_2_s
.Lx244_2_s:
                        .string          "ssu_body"
.Lx244_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n119_var_ref_α
n117_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n121_lit_integer_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n123_var_ref_α
n120_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n124_lit_string_α
.Lx249_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n125_op11_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n126_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n127_lit_integer_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx254_2]
                                                                                        jmp   .Lx254_3
.Lx254_2:
                        .quad            .Lx254_2_s
.Lx254_2_s:
                        .string          "true"
.Lx254_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n128_call_proc_staged_α
n125_op11_β:
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n129_op11_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n130_lit_string_α
.Lx256_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        call             proc_ssu_body$2F0_dcα
                                                                                        jmp   .Lx258_2
.Lx258_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n120_op11_α
                                                                                        jmp   n131_suspend_α
n128_call_proc_staged_β:
                                                                                        jmp   n120_op11_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "ssu_body/0"
#-----------------------------------------------------------------------------------------------------------------------
n129_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              rsi, qword ptr [rip + .Lx259_2]
                                                                                        jmp   .Lx259_3
.Lx259_2:
                        .quad            .Lx259_2_s
.Lx259_2_s:
                        .string          "ssu_guard"
.Lx259_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n132_var_ref_α
n129_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n134_op11_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n131_suspend_α:
                        lea              rax, [rip + n131_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n131_suspend_β:
                                                                                        jmp   n128_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n135_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
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
n133_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n136_op11_α
n134_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n137_op11_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n138_op11_α
n136_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx269_2]
                                                                                        jmp   .Lx269_3
.Lx269_2:
                        .quad            .Lx269_2_s
.Lx269_2_s:
                        .string          "true"
.Lx269_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n139_call_proc_staged_α
n137_op11_β:
                                                                                        jmp   n133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n140_op11_α
n138_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx272_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx272_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx272_3]
                        lea              rdx, [rip + .Lx272_4]
                                                                                        jmp   rax
.Lx272_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx272_2
.Lx272_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx272_2
.Lx272_1:
                        call             rt_faildescr@PLT
.Lx272_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n133_op11_α
                                                                                        jmp   n141_suspend_α
n139_call_proc_staged_β:
                                                                                        jmp   n133_op11_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "ssu_guard/0"
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n104_op11_α
                                                                                        jmp   n142_op11_α
n140_op11_β:
                                                                                        jmp   n104_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_suspend_α:
                        lea              rax, [rip + n141_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n141_suspend_β:
                                                                                        jmp   n139_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 656]
                        lea              r8, [rbp + 656]
.Lx276_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx276_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        cmp              esi, 1
                                                                                        jne   .Lx276_55
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_55:
                        cmp              esi, 2
                                                                                        jne   .Lx276_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_56:
                        cmp              eax, 13
                                                                                        jne   .Lx276_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        cmp              rax, r8
                                                                                        je    .Lx276_41
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_41:
                        lea              r9, [rbp + 672]
.Lx276_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx276_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        cmp              esi, 1
                                                                                        jne   .Lx276_57
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_57:
                        cmp              esi, 2
                                                                                        jne   .Lx276_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_58:
                        cmp              eax, 13
                                                                                        jne   .Lx276_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        cmp              rax, r9
                                                                                        je    .Lx276_43
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_43:
                        cmp              r8, r9
                                                                                        je    .Lx276_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_44
                        cmp              eax, 99
                                                                                        je    .Lx276_44
                        cmp              eax, 13
                                                                                        jne   .Lx276_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx276_44
                                                                                        jmp   .Lx276_45
.Lx276_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_53
                        cmp              eax, 99
                                                                                        je    .Lx276_53
                        cmp              eax, 13
                                                                                        jne   .Lx276_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx276_53
                                                                                        jmp   .Lx276_46
.Lx276_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx276_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx276_53
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
                                                                                        jmp   .Lx276_51
.Lx276_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_47
                        cmp              eax, 99
                                                                                        je    .Lx276_47
                        cmp              eax, 13
                                                                                        jne   .Lx276_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx276_47
                                                                                        jmp   .Lx276_48
.Lx276_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx276_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx276_53
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
                                                                                        jmp   .Lx276_51
.Lx276_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx276_49
                        cmp              edx, 14
                                                                                        je    .Lx276_53
                                                                                        jmp   .Lx276_52
.Lx276_49:
                        cmp              edx, 14
                                                                                        je    .Lx276_52
                        cmp              ecx, 7
                                                                                        je    .Lx276_53
                        cmp              edx, 7
                                                                                        je    .Lx276_53
                        cmp              ecx, 6
                                                                                        jne   .Lx276_50
                        cmp              edx, 6
                                                                                        jne   .Lx276_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx276_51
                                                                                        jmp   .Lx276_52
.Lx276_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx276_53
.Lx276_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx276_54
.Lx276_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx276_54
.Lx276_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx276_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n104_op11_α
                                                                                        jmp   n143_var_ref_α
n142_op11_β:
                                                                                        jmp   n104_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n144_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx280_21
.Lx280_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx280_21:
                        mov              edi, 19
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx280_1
                        lea              rcx, [rip + .Lx280_3]
                        lea              rdx, [rip + .Lx280_4]
                                                                                        jmp   rax
.Lx280_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx280_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx280_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_1:
                        call             rt_faildescr@PLT
.Lx280_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n104_op11_α
                                                                                        jmp   n145_suspend_α
n144_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "one/1"
#-----------------------------------------------------------------------------------------------------------------------
n145_suspend_α:
                        lea              rax, [rip + n145_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n145_suspend_β:
                                                                                        jmp   n144_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 3024]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 3096]
                        mov              rbp, [rbp + 3112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 3104]
                        lea              rsp, [rbp + 3120]
                        mov              rbp, [rbp + 3112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$call$2F1_α
proc_$call$2F1_α:
                        .global          proc_$call$2F1_α
                        .global          proc_$call$2F1_β
                        .global          proc_$call$2F1_γ
                        .global          proc_$call$2F1_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 112
                        call             rt_jmp_frame_lexprep2@PLT
proc_$call$2F1_α_body:
                        lea              rax, [rip + n285_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n284_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx288_60:
                        .section         .rodata
.Lbynamegenfn119:       .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn119]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n285_suspend_α
n284_call_builtin_gen_β:
                                                                                        jmp   .Lx288_60
#-----------------------------------------------------------------------------------------------------------------------
n285_suspend_α:
                        lea              rax, [rip + n285_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n285_suspend_β:
                                                                                        jmp   n284_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$call$2F1_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_run$2F1_α
proc_run$2F1_α:
                        .global          proc_run$2F1_α
                        .global          proc_run$2F1_β
                        .global          proc_run$2F1_γ
                        .global          proc_run$2F1_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_run$2F1_α_body:
                        lea              rax, [rip + n298_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n291_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx299_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx299_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx299_101
.Lx299_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx299_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_run$2F1_ω
                                                                                        jmp   n292_var_ref_α
n291_op11_β:
                                                                                        jmp   proc_run$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n294_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n294_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx304_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx304_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx304_41
                        cmp              esi, 1
                                                                                        jne   .Lx304_55
                        mov              r8, rax
                                                                                        jmp   .Lx304_40
.Lx304_55:
                        cmp              esi, 2
                                                                                        jne   .Lx304_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx304_41
                        mov              r8, rax
                                                                                        jmp   .Lx304_40
.Lx304_56:
                        cmp              eax, 13
                                                                                        jne   .Lx304_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx304_41
                        cmp              rax, r8
                                                                                        je    .Lx304_41
                        mov              r8, rax
                                                                                        jmp   .Lx304_40
.Lx304_41:
                        lea              r9, [rbp + 208]
.Lx304_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx304_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx304_43
                        cmp              esi, 1
                                                                                        jne   .Lx304_57
                        mov              r9, rax
                                                                                        jmp   .Lx304_42
.Lx304_57:
                        cmp              esi, 2
                                                                                        jne   .Lx304_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx304_43
                        mov              r9, rax
                                                                                        jmp   .Lx304_42
.Lx304_58:
                        cmp              eax, 13
                                                                                        jne   .Lx304_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx304_43
                        cmp              rax, r9
                                                                                        je    .Lx304_43
                        mov              r9, rax
                                                                                        jmp   .Lx304_42
.Lx304_43:
                        cmp              r8, r9
                                                                                        je    .Lx304_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx304_44
                        cmp              eax, 99
                                                                                        je    .Lx304_44
                        cmp              eax, 13
                                                                                        jne   .Lx304_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx304_44
                                                                                        jmp   .Lx304_45
.Lx304_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx304_53
                        cmp              eax, 99
                                                                                        je    .Lx304_53
                        cmp              eax, 13
                                                                                        jne   .Lx304_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx304_53
                                                                                        jmp   .Lx304_46
.Lx304_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx304_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx304_53
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
                                                                                        jmp   .Lx304_51
.Lx304_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx304_47
                        cmp              eax, 99
                                                                                        je    .Lx304_47
                        cmp              eax, 13
                                                                                        jne   .Lx304_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx304_47
                                                                                        jmp   .Lx304_48
.Lx304_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx304_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx304_53
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
                                                                                        jmp   .Lx304_51
.Lx304_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx304_49
                        cmp              edx, 14
                                                                                        je    .Lx304_53
                                                                                        jmp   .Lx304_52
.Lx304_49:
                        cmp              edx, 14
                                                                                        je    .Lx304_52
                        cmp              ecx, 7
                                                                                        je    .Lx304_53
                        cmp              edx, 7
                                                                                        je    .Lx304_53
                        cmp              ecx, 6
                                                                                        jne   .Lx304_50
                        cmp              edx, 6
                                                                                        jne   .Lx304_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx304_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx304_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx304_51
                                                                                        jmp   .Lx304_52
.Lx304_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx304_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx304_53
.Lx304_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx304_54
.Lx304_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx304_54
.Lx304_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx304_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n296_op11_α
                                                                                        jmp   n295_var_ref_α
n294_op11_β:
                                                                                        jmp   n296_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n297_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n296_op11_α:
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
                                                                                        je    proc_run$2F1_ω
                                                                                        jmp   proc_run$2F1_ω
n296_op11_β:
                                                                                        jmp   proc_run$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n297_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx309_21
.Lx309_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx309_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx309_1
                        lea              rcx, [rip + .Lx309_3]
                        lea              rdx, [rip + .Lx309_4]
                                                                                        jmp   rax
.Lx309_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx309_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx309_2
.Lx309_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx309_2
.Lx309_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx309_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx309_2
.Lx309_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx309_2
.Lx309_1:
                        call             rt_faildescr@PLT
.Lx309_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n296_op11_α
                                                                                        jmp   n298_suspend_α
n297_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n298_suspend_α:
                        lea              rax, [rip + n298_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_run$2F1_γ
n298_suspend_β:
                                                                                        jmp   n297_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F1_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_run$2F1_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F1_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_e_not$2F0_α
proc_e_not$2F0_α:
                        .global          proc_e_not$2F0_α
                        .global          proc_e_not$2F0_β
                        .global          proc_e_not$2F0_γ
                        .global          proc_e_not$2F0_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_e_not$2F0_α_body:
                        lea              rax, [rip + n315_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx316_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx316_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx316_101
.Lx316_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx316_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_e_not$2F0_ω
                                                                                        jmp   n313_call_proc_staged_α
n312_op11_β:
                                                                                        jmp   proc_e_not$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n313_call_proc_staged_α:
                        call             proc_g_b$2F0_dcα
                                                                                        jmp   .Lx318_2
.Lx318_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n315_suspend_α
                                                                                        jmp   n314_op11_α
n313_call_proc_staged_β:
                                                                                        jmp   n315_suspend_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "g_b/0"
#-----------------------------------------------------------------------------------------------------------------------
n314_op11_α:
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
                                                                                        je    proc_e_not$2F0_ω
                                                                                        jmp   proc_e_not$2F0_ω
n314_op11_β:
                                                                                        jmp   proc_e_not$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_suspend_α:
                        lea              rax, [rip + n315_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_e_not$2F0_γ
n315_suspend_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_e_not$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_e_not$2F0_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_e_not$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_e_not$2F0_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_e_not$2F0_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_expand$2F0_α
proc_test_expand$2F0_α:
                        .global          proc_test_expand$2F0_α
                        .global          proc_test_expand$2F0_β
                        .global          proc_test_expand$2F0_γ
                        .global          proc_test_expand$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_expand$2F0_α_body:
                        lea              rax, [rip + n329_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n322_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx330_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx330_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx330_101
.Lx330_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx330_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_expand$2F0_ω
                                                                                        jmp   n323_lit_string_α
n322_op11_β:
                                                                                        jmp   proc_test_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n324_lit_string_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n325_lit_string_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n326_op11_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n326_op11_α:
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
                                                                                        je    n328_op11_α
                                                                                        jmp   n327_call_proc_staged_α
n326_op11_β:
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n327_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx336_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx336_21
.Lx336_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx336_21:
                        mov              rdi, qword ptr [rip + .Lx336_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx336_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx336_3]
                        lea              rdx, [rip + .Lx336_4]
                                                                                        jmp   rax
.Lx336_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx336_2
.Lx336_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx336_2
.Lx336_1:
                        call             rt_faildescr@PLT
.Lx336_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n328_op11_α
                                                                                        jmp   n329_suspend_α
n327_call_proc_staged_β:
                                                                                        jmp   n328_op11_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
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
                                                                                        je    proc_test_expand$2F0_ω
                                                                                        jmp   proc_test_expand$2F0_ω
n328_op11_β:
                                                                                        jmp   proc_test_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_suspend_α:
                        lea              rax, [rip + n329_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_expand$2F0_γ
n329_suspend_β:
                                                                                        jmp   n327_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_expand$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_expand$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_expand$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_expand$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_expand$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_goal_expansion$2F2_α
proc_goal_expansion$2F2_α:
                        .global          proc_goal_expansion$2F2_α
                        .global          proc_goal_expansion$2F2_β
                        .global          proc_goal_expansion$2F2_γ
                        .global          proc_goal_expansion$2F2_ω
                        sub              rsp, 1072
                        mov              [rsp + 1048], rcx
                        mov              [rsp + 1056], rdx
                        mov              [rsp + 1064], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1008
                        mov              edx, 1040
                        call             rt_jmp_frame_lexprep2@PLT
proc_goal_expansion$2F2_α_body:
                        lea              rax, [rip + n350_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
#-----------------------------------------------------------------------------------------------------------------------
n340_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx374_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx374_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx374_101
.Lx374_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx374_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_goal_expansion$2F2_ω
                                                                                        jmp   n341_var_ref_α
n340_op11_β:
                                                                                        jmp   proc_goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n342_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n343_op11_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "g_b"
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              rsi, qword ptr [rip + .Lx378_2]
                                                                                        jmp   .Lx378_3
.Lx378_2:
                        .quad            .Lx378_2_s
.Lx378_2_s:
                        .string          "g_b"
.Lx378_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n344_var_ref_α
n343_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n346_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    proc_goal_expansion$2F2_ω
                                                                                        jmp   n347_var_ref_α
n345_op11_β:
                                                                                        jmp   proc_goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n348_op11_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "g_c"
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n349_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n348_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              rsi, qword ptr [rip + .Lx385_2]
                                                                                        jmp   .Lx385_3
.Lx385_2:
                        .quad            .Lx385_2_s
.Lx385_2_s:
                        .string          "g_c"
.Lx385_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n350_suspend_α
n348_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n351_op11_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n350_suspend_α:
                        lea              rax, [rip + n350_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_goal_expansion$2F2_γ
n350_suspend_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              rsi, qword ptr [rip + .Lx389_2]
                                                                                        jmp   .Lx389_3
.Lx389_2:
                        .quad            .Lx389_2_s
.Lx389_2_s:
                        .string          "foo"
.Lx389_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n353_op11_α
                                                                                        jmp   n352_var_ref_α
n351_op11_β:
                                                                                        jmp   n353_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n353_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    proc_goal_expansion$2F2_ω
                                                                                        jmp   n355_var_ref_α
n353_op11_β:
                                                                                        jmp   proc_goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n356_op11_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n357_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n356_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              rsi, qword ptr [rip + .Lx396_2]
                                                                                        jmp   .Lx396_3
.Lx396_2:
                        .quad            .Lx396_2_s
.Lx396_2_s:
                        .string          "bar"
.Lx396_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n353_op11_α
                                                                                        jmp   n358_suspend_α
n356_op11_β:
                                                                                        jmp   n353_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n359_lit_string_α
.Lx397_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n358_suspend_α:
                        lea              rax, [rip + n358_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_goal_expansion$2F2_γ
n358_suspend_β:
                                                                                        jmp   n353_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n360_op11_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "onetime"
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n362_op11_α
                                                                                        jmp   n361_var_ref_α
n360_op11_β:
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n362_op11_α:
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
                                                                                        je    proc_goal_expansion$2F2_ω
                                                                                        jmp   proc_goal_expansion$2F2_ω
n362_op11_β:
                                                                                        jmp   proc_goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n364_var_ref_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "onetime"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n365_op11_α:
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
                                                                                        je    n362_op11_α
                                                                                        jmp   n366_op11_α
n365_op11_β:
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx409_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx409_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx409_41
                        cmp              esi, 1
                                                                                        jne   .Lx409_55
                        mov              r8, rax
                                                                                        jmp   .Lx409_40
.Lx409_55:
                        cmp              esi, 2
                                                                                        jne   .Lx409_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx409_41
                        mov              r8, rax
                                                                                        jmp   .Lx409_40
.Lx409_56:
                        cmp              eax, 13
                                                                                        jne   .Lx409_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx409_41
                        cmp              rax, r8
                                                                                        je    .Lx409_41
                        mov              r8, rax
                                                                                        jmp   .Lx409_40
.Lx409_41:
                        lea              r9, [rbp + 352]
.Lx409_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx409_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx409_43
                        cmp              esi, 1
                                                                                        jne   .Lx409_57
                        mov              r9, rax
                                                                                        jmp   .Lx409_42
.Lx409_57:
                        cmp              esi, 2
                                                                                        jne   .Lx409_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx409_43
                        mov              r9, rax
                                                                                        jmp   .Lx409_42
.Lx409_58:
                        cmp              eax, 13
                                                                                        jne   .Lx409_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx409_43
                        cmp              rax, r9
                                                                                        je    .Lx409_43
                        mov              r9, rax
                                                                                        jmp   .Lx409_42
.Lx409_43:
                        cmp              r8, r9
                                                                                        je    .Lx409_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx409_44
                        cmp              eax, 99
                                                                                        je    .Lx409_44
                        cmp              eax, 13
                                                                                        jne   .Lx409_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx409_44
                                                                                        jmp   .Lx409_45
.Lx409_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx409_53
                        cmp              eax, 99
                                                                                        je    .Lx409_53
                        cmp              eax, 13
                                                                                        jne   .Lx409_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx409_53
                                                                                        jmp   .Lx409_46
.Lx409_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx409_53
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
                                                                                        jmp   .Lx409_51
.Lx409_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx409_47
                        cmp              eax, 99
                                                                                        je    .Lx409_47
                        cmp              eax, 13
                                                                                        jne   .Lx409_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx409_47
                                                                                        jmp   .Lx409_48
.Lx409_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx409_53
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
                                                                                        jmp   .Lx409_51
.Lx409_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx409_49
                        cmp              edx, 14
                                                                                        je    .Lx409_53
                                                                                        jmp   .Lx409_52
.Lx409_49:
                        cmp              edx, 14
                                                                                        je    .Lx409_52
                        cmp              ecx, 7
                                                                                        je    .Lx409_53
                        cmp              edx, 7
                                                                                        je    .Lx409_53
                        cmp              ecx, 6
                                                                                        jne   .Lx409_50
                        cmp              edx, 6
                                                                                        jne   .Lx409_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx409_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx409_51
                                                                                        jmp   .Lx409_52
.Lx409_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx409_53
.Lx409_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx409_54
.Lx409_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx409_54
.Lx409_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx409_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n362_op11_α
                                                                                        jmp   n367_var_ref_α
n366_op11_β:
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n369_var_ref_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "->"
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n371_op11_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n371_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n362_op11_α
                                                                                        jmp   n372_op11_α
n371_op11_β:
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n372_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx417_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx417_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        cmp              esi, 1
                                                                                        jne   .Lx417_55
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_55:
                        cmp              esi, 2
                                                                                        jne   .Lx417_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_56:
                        cmp              eax, 13
                                                                                        jne   .Lx417_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        cmp              rax, r8
                                                                                        je    .Lx417_41
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_41:
                        lea              r9, [rbp + 160]
.Lx417_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx417_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        cmp              esi, 1
                                                                                        jne   .Lx417_57
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_57:
                        cmp              esi, 2
                                                                                        jne   .Lx417_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_58:
                        cmp              eax, 13
                                                                                        jne   .Lx417_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        cmp              rax, r9
                                                                                        je    .Lx417_43
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_43:
                        cmp              r8, r9
                                                                                        je    .Lx417_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_44
                        cmp              eax, 99
                                                                                        je    .Lx417_44
                        cmp              eax, 13
                                                                                        jne   .Lx417_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx417_44
                                                                                        jmp   .Lx417_45
.Lx417_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_53
                        cmp              eax, 99
                                                                                        je    .Lx417_53
                        cmp              eax, 13
                                                                                        jne   .Lx417_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx417_53
                                                                                        jmp   .Lx417_46
.Lx417_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx417_53
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
                                                                                        jmp   .Lx417_51
.Lx417_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_47
                        cmp              eax, 99
                                                                                        je    .Lx417_47
                        cmp              eax, 13
                                                                                        jne   .Lx417_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx417_47
                                                                                        jmp   .Lx417_48
.Lx417_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx417_53
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
                                                                                        jmp   .Lx417_51
.Lx417_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx417_49
                        cmp              edx, 14
                                                                                        je    .Lx417_53
                                                                                        jmp   .Lx417_52
.Lx417_49:
                        cmp              edx, 14
                                                                                        je    .Lx417_52
                        cmp              ecx, 7
                                                                                        je    .Lx417_53
                        cmp              edx, 7
                                                                                        je    .Lx417_53
                        cmp              ecx, 6
                                                                                        jne   .Lx417_50
                        cmp              edx, 6
                                                                                        jne   .Lx417_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx417_51
                                                                                        jmp   .Lx417_52
.Lx417_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx417_53
.Lx417_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx417_54
.Lx417_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx417_54
.Lx417_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx417_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n362_op11_α
                                                                                        jmp   n373_suspend_α
n372_op11_β:
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n373_suspend_α:
                        lea              rax, [rip + n373_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_goal_expansion$2F2_γ
n373_suspend_β:
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_goal_expansion$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_goal_expansion$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1008]
#-----------------------------------------------------------------------------------------------------------------------
proc_goal_expansion$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_goal_expansion$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1048]
                        mov              rbp, [rbp + 1064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_goal_expansion$2F2_ω:
                        mov              rax, [rbp + 1056]
                        lea              rsp, [rbp + 1072]
                        mov              rbp, [rbp + 1064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 4704
                        mov              [rsp + 4680], rcx
                        mov              [rsp + 4688], rdx
                        mov              [rsp + 4696], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4608
                        mov              edx, 4672
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n480_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx574_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx574_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx574_101
.Lx574_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx574_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n421_var_ref_α
n420_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n422_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n423_op11_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n423_op11_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4552], rax
                        lea              rdi, [rbp + 4544]
                        mov              rsi, qword ptr [rip + .Lx578_2]
                                                                                        jmp   .Lx578_3
.Lx578_2:
                        .quad            .Lx578_2_s
.Lx578_2_s:
                        .string          "expand"
.Lx578_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              eax, 99
                                                                                        je    n425_op11_α
                                                                                        jmp   n424_var_ref_α
n423_op11_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n426_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3992], rax
                        lea              rdi, [rbp + 3984]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n427_var_ref_α
n425_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:
                        mov              qword ptr [rbp + 4512], 1
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n428_op11_α
.Lx582_0:
                        .quad            .Lx582_0_s
.Lx582_0_s:
                        .string          "cond_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_op11_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4472], rax
                        lea              rdi, [rbp + 4464]
                        mov              rsi, qword ptr [rip + .Lx585_2]
                                                                                        jmp   .Lx585_3
.Lx585_2:
                        .quad            .Lx585_2_s
.Lx585_2_s:
                        .string          "cond_dcg"
.Lx585_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                        cmp              eax, 99
                                                                                        je    n425_op11_α
                                                                                        jmp   n430_var_ref_α
n428_op11_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rbp + 3952], 1
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n431_op11_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n432_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n431_op11_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3904]
                        mov              rsi, qword ptr [rip + .Lx589_2]
                                                                                        jmp   .Lx589_3
.Lx589_2:
                        .quad            .Lx589_2_s
.Lx589_2_s:
                        .string          "expand"
.Lx589_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n433_var_ref_α
n431_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n435_op11_α
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3176], rax
                        lea              rdi, [rbp + 3168]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n437_var_ref_α
n434_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_op11_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              rsi, qword ptr [rip + .Lx594_2]
                                                                                        jmp   .Lx594_3
.Lx594_2:
                        .quad            .Lx594_2_s
.Lx594_2_s:
                        .string          "true"
.Lx594_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              eax, 99
                                                                                        je    n425_op11_α
                                                                                        jmp   n438_var_ref_α
n435_op11_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n439_op11_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n440_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n441_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n439_op11_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                        lea              rdi, [rbp + 3824]
                        mov              rsi, qword ptr [rip + .Lx600_2]
                                                                                        jmp   .Lx600_3
.Lx600_2:
                        .quad            .Lx600_2_s
.Lx600_2_s:
                        .string          "make_dcg"
.Lx600_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n442_var_ref_α
n439_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:
                        mov              qword ptr [rbp + 3136], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n443_op11_α
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:
                        mov              qword ptr [rbp + 4352], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n444_lit_string_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   n445_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n443_op11_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3096], rax
                        lea              rdi, [rbp + 3088]
                        mov              rsi, qword ptr [rip + .Lx605_2]
                                                                                        jmp   .Lx605_3
.Lx605_2:
                        .quad            .Lx605_2_s
.Lx605_2_s:
                        .string          "expand"
.Lx605_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n447_op11_α
                                                                                        jmp   n446_var_ref_α
n443_op11_β:
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:
                        mov              qword ptr [rbp + 4272], 1
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n448_lit_string_α
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
                        .string          "current_predicate"
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:
                        mov              qword ptr [rbp + 3792], 1
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n449_var_ref_α
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n450_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n447_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n451_var_ref_α
n447_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:
                        mov              qword ptr [rbp + 4192], 1
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n452_lit_string_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n453_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n454_op11_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "chained_term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n455_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:
                        mov              qword ptr [rbp + 4080], 1
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n456_lit_integer_α
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "no_a"
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 3696], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n457_var_ref_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n454_op11_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              rsi, qword ptr [rip + .Lx619_2]
                                                                                        jmp   .Lx619_3
.Lx619_2:
                        .quad            .Lx619_2_s
.Lx619_2_s:
                        .string          "chained_term_expansion"
.Lx619_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n447_op11_α
                                                                                        jmp   n458_var_ref_α
n454_op11_β:
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n459_op11_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_integer_α:
                        mov              qword ptr [rbp + 4096], 6
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n460_op11_α
.Lx621_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4640]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n461_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n462_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n459_op11_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2496]
                        mov              rsi, qword ptr [rip + .Lx626_2]
                                                                                        jmp   .Lx626_3
.Lx626_2:
                        .quad            .Lx626_2_s
.Lx626_2_s:
                        .string          "expand"
.Lx626_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n464_op11_α
                                                                                        jmp   n463_var_ref_α
n459_op11_β:
                                                                                        jmp   n464_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n460_op11_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4136], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4152], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4168], rax
                        lea              rdi, [rbp + 4128]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n465_op11_α
n460_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n461_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4656]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n466_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n467_var_ref_α
.Lx630_0:
                        .quad            .Lx630_0_s
.Lx630_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n468_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n464_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n469_var_ref_α
n464_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n465_op11_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4232], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4248], rax
                        lea              rdi, [rbp + 4224]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n470_op11_α
n465_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n466_op11_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3672], rax
                        lea              rdi, [rbp + 3632]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n471_op11_α
n466_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n472_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n473_op11_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          "meta_arg"
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n474_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4312], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4328], rax
                        lea              rdi, [rbp + 4304]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n425_op11_α
                                                                                        jmp   n475_op11_α
n470_op11_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n471_op11_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3752], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3768], rax
                        lea              rdi, [rbp + 3728]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n476_op11_α
n471_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:
                        mov              qword ptr [rbp + 2880], 1
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n477_op11_α
.Lx643_0:
                        .quad            .Lx643_0_s
.Lx643_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n473_op11_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2416]
                        mov              rsi, qword ptr [rip + .Lx644_2]
                                                                                        jmp   .Lx644_3
.Lx644_2:
                        .quad            .Lx644_2_s
.Lx644_2_s:
                        .string          "meta_arg"
.Lx644_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n464_op11_α
                                                                                        jmp   n478_var_ref_α
n473_op11_β:
                                                                                        jmp   n464_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n479_op11_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n475_op11_α:
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4056], rax
                        lea              rdi, [rbp + 4032]
                        lea              r8, [rbp + 4032]
.Lx646_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx646_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_41
                        cmp              esi, 1
                                                                                        jne   .Lx646_55
                        mov              r8, rax
                                                                                        jmp   .Lx646_40
.Lx646_55:
                        cmp              esi, 2
                                                                                        jne   .Lx646_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx646_41
                        mov              r8, rax
                                                                                        jmp   .Lx646_40
.Lx646_56:
                        cmp              eax, 13
                                                                                        jne   .Lx646_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_41
                        cmp              rax, r8
                                                                                        je    .Lx646_41
                        mov              r8, rax
                                                                                        jmp   .Lx646_40
.Lx646_41:
                        lea              r9, [rbp + 4048]
.Lx646_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx646_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_43
                        cmp              esi, 1
                                                                                        jne   .Lx646_57
                        mov              r9, rax
                                                                                        jmp   .Lx646_42
.Lx646_57:
                        cmp              esi, 2
                                                                                        jne   .Lx646_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx646_43
                        mov              r9, rax
                                                                                        jmp   .Lx646_42
.Lx646_58:
                        cmp              eax, 13
                                                                                        jne   .Lx646_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_43
                        cmp              rax, r9
                                                                                        je    .Lx646_43
                        mov              r9, rax
                                                                                        jmp   .Lx646_42
.Lx646_43:
                        cmp              r8, r9
                                                                                        je    .Lx646_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx646_44
                        cmp              eax, 99
                                                                                        je    .Lx646_44
                        cmp              eax, 13
                                                                                        jne   .Lx646_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx646_44
                                                                                        jmp   .Lx646_45
.Lx646_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx646_53
                        cmp              eax, 99
                                                                                        je    .Lx646_53
                        cmp              eax, 13
                                                                                        jne   .Lx646_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx646_53
                                                                                        jmp   .Lx646_46
.Lx646_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx646_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx646_53
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
                                                                                        jmp   .Lx646_51
.Lx646_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx646_47
                        cmp              eax, 99
                                                                                        je    .Lx646_47
                        cmp              eax, 13
                                                                                        jne   .Lx646_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx646_47
                                                                                        jmp   .Lx646_48
.Lx646_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx646_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx646_53
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
                                                                                        jmp   .Lx646_51
.Lx646_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx646_49
                        cmp              edx, 14
                                                                                        je    .Lx646_53
                                                                                        jmp   .Lx646_52
.Lx646_49:
                        cmp              edx, 14
                                                                                        je    .Lx646_52
                        cmp              ecx, 7
                                                                                        je    .Lx646_53
                        cmp              edx, 7
                                                                                        je    .Lx646_53
                        cmp              ecx, 6
                                                                                        jne   .Lx646_50
                        cmp              edx, 6
                                                                                        jne   .Lx646_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx646_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx646_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx646_51
                                                                                        jmp   .Lx646_52
.Lx646_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx646_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx646_53
.Lx646_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx646_54
.Lx646_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx646_54
.Lx646_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx646_54:
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    n425_op11_α
                                                                                        jmp   n480_suspend_α
n475_op11_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n476_op11_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3544], rax
                        lea              rdi, [rbp + 3520]
                        lea              r8, [rbp + 3520]
.Lx647_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx647_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        cmp              esi, 1
                                                                                        jne   .Lx647_55
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_55:
                        cmp              esi, 2
                                                                                        jne   .Lx647_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_56:
                        cmp              eax, 13
                                                                                        jne   .Lx647_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        cmp              rax, r8
                                                                                        je    .Lx647_41
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_41:
                        lea              r9, [rbp + 3536]
.Lx647_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx647_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        cmp              esi, 1
                                                                                        jne   .Lx647_57
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_57:
                        cmp              esi, 2
                                                                                        jne   .Lx647_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_58:
                        cmp              eax, 13
                                                                                        jne   .Lx647_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        cmp              rax, r9
                                                                                        je    .Lx647_43
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_43:
                        cmp              r8, r9
                                                                                        je    .Lx647_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_44
                        cmp              eax, 99
                                                                                        je    .Lx647_44
                        cmp              eax, 13
                                                                                        jne   .Lx647_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx647_44
                                                                                        jmp   .Lx647_45
.Lx647_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_53
                        cmp              eax, 99
                                                                                        je    .Lx647_53
                        cmp              eax, 13
                                                                                        jne   .Lx647_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx647_53
                                                                                        jmp   .Lx647_46
.Lx647_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx647_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx647_53
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
                                                                                        jmp   .Lx647_51
.Lx647_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_47
                        cmp              eax, 99
                                                                                        je    .Lx647_47
                        cmp              eax, 13
                                                                                        jne   .Lx647_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx647_47
                                                                                        jmp   .Lx647_48
.Lx647_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx647_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx647_53
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
                                                                                        jmp   .Lx647_51
.Lx647_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx647_49
                        cmp              edx, 14
                                                                                        je    .Lx647_53
                                                                                        jmp   .Lx647_52
.Lx647_49:
                        cmp              edx, 14
                                                                                        je    .Lx647_52
                        cmp              ecx, 7
                                                                                        je    .Lx647_53
                        cmp              edx, 7
                                                                                        je    .Lx647_53
                        cmp              ecx, 6
                                                                                        jne   .Lx647_50
                        cmp              edx, 6
                                                                                        jne   .Lx647_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx647_51
                                                                                        jmp   .Lx647_52
.Lx647_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx647_53
.Lx647_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx647_54
.Lx647_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx647_54
.Lx647_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx647_54:
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n481_var_ref_α
n476_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n447_op11_α
                                                                                        jmp   n482_op11_α
n477_op11_β:
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n483_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              rsi, qword ptr [rip + .Lx651_2]
                                                                                        jmp   .Lx651_3
.Lx651_2:
                        .quad            .Lx651_2_s
.Lx651_2_s:
                        .string          "expand"
.Lx651_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n485_op11_α
                                                                                        jmp   n484_var_ref_α
n479_op11_β:
                                                                                        jmp   n485_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n480_suspend_α:
                        lea              rax, [rip + n480_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n480_suspend_β:
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n486_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n482_op11_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2840], rax
                        lea              rdi, [rbp + 2816]
                        lea              r8, [rbp + 2816]
.Lx656_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx656_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx656_41
                        cmp              esi, 1
                                                                                        jne   .Lx656_55
                        mov              r8, rax
                                                                                        jmp   .Lx656_40
.Lx656_55:
                        cmp              esi, 2
                                                                                        jne   .Lx656_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx656_41
                        mov              r8, rax
                                                                                        jmp   .Lx656_40
.Lx656_56:
                        cmp              eax, 13
                                                                                        jne   .Lx656_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx656_41
                        cmp              rax, r8
                                                                                        je    .Lx656_41
                        mov              r8, rax
                                                                                        jmp   .Lx656_40
.Lx656_41:
                        lea              r9, [rbp + 2832]
.Lx656_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx656_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx656_43
                        cmp              esi, 1
                                                                                        jne   .Lx656_57
                        mov              r9, rax
                                                                                        jmp   .Lx656_42
.Lx656_57:
                        cmp              esi, 2
                                                                                        jne   .Lx656_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx656_43
                        mov              r9, rax
                                                                                        jmp   .Lx656_42
.Lx656_58:
                        cmp              eax, 13
                                                                                        jne   .Lx656_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx656_43
                        cmp              rax, r9
                                                                                        je    .Lx656_43
                        mov              r9, rax
                                                                                        jmp   .Lx656_42
.Lx656_43:
                        cmp              r8, r9
                                                                                        je    .Lx656_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx656_44
                        cmp              eax, 99
                                                                                        je    .Lx656_44
                        cmp              eax, 13
                                                                                        jne   .Lx656_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx656_44
                                                                                        jmp   .Lx656_45
.Lx656_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx656_53
                        cmp              eax, 99
                                                                                        je    .Lx656_53
                        cmp              eax, 13
                                                                                        jne   .Lx656_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx656_53
                                                                                        jmp   .Lx656_46
.Lx656_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx656_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx656_53
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
                                                                                        jmp   .Lx656_51
.Lx656_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx656_47
                        cmp              eax, 99
                                                                                        je    .Lx656_47
                        cmp              eax, 13
                                                                                        jne   .Lx656_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx656_47
                                                                                        jmp   .Lx656_48
.Lx656_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx656_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx656_53
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
                                                                                        jmp   .Lx656_51
.Lx656_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx656_49
                        cmp              edx, 14
                                                                                        je    .Lx656_53
                                                                                        jmp   .Lx656_52
.Lx656_49:
                        cmp              edx, 14
                                                                                        je    .Lx656_52
                        cmp              ecx, 7
                                                                                        je    .Lx656_53
                        cmp              edx, 7
                                                                                        je    .Lx656_53
                        cmp              ecx, 6
                                                                                        jne   .Lx656_50
                        cmp              edx, 6
                                                                                        jne   .Lx656_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx656_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx656_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx656_51
                                                                                        jmp   .Lx656_52
.Lx656_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx656_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx656_53
.Lx656_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx656_54
.Lx656_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx656_54
.Lx656_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx656_54:
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    n447_op11_α
                                                                                        jmp   n487_var_ref_α
n482_op11_β:
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n488_lit_string_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n489_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n485_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n490_var_ref_α
n485_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n491_lit_string_α
.Lx661_0:
                        .quad            .Lx661_0_s
.Lx661_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n493_lit_string_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n494_op11_α
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          "goal_expansion_local_pred"
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n496_var_ref_α
.Lx668_0:
                        .quad            .Lx668_0_s
.Lx668_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n497_lit_string_α
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n498_op11_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n494_op11_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1936]
                        mov              rsi, qword ptr [rip + .Lx671_2]
                                                                                        jmp   .Lx671_3
.Lx671_2:
                        .quad            .Lx671_2_s
.Lx671_2_s:
                        .string          "goal_expansion_local_pred"
.Lx671_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n485_op11_α
                                                                                        jmp   n499_var_ref_α
n494_op11_β:
                                                                                        jmp   n485_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n500_op11_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4640]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   n501_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n502_var_ref_α
.Lx675_0:
                        .quad            .Lx675_0_s
.Lx675_0_s:
                        .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n464_op11_α
                                                                                        jmp   n503_op11_α
n498_op11_β:
                                                                                        jmp   n464_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n504_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        mov              rsi, qword ptr [rip + .Lx679_2]
                                                                                        jmp   .Lx679_3
.Lx679_2:
                        .quad            .Lx679_2_s
.Lx679_2_s:
                        .string          "expand"
.Lx679_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n506_op11_α
                                                                                        jmp   n505_var_ref_α
n500_op11_β:
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4656]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n507_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n508_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n503_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2248], rax
                        lea              rdi, [rbp + 2224]
                        lea              r8, [rbp + 2224]
.Lx684_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx684_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx684_41
                        cmp              esi, 1
                                                                                        jne   .Lx684_55
                        mov              r8, rax
                                                                                        jmp   .Lx684_40
.Lx684_55:
                        cmp              esi, 2
                                                                                        jne   .Lx684_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx684_41
                        mov              r8, rax
                                                                                        jmp   .Lx684_40
.Lx684_56:
                        cmp              eax, 13
                                                                                        jne   .Lx684_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx684_41
                        cmp              rax, r8
                                                                                        je    .Lx684_41
                        mov              r8, rax
                                                                                        jmp   .Lx684_40
.Lx684_41:
                        lea              r9, [rbp + 2240]
.Lx684_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx684_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx684_43
                        cmp              esi, 1
                                                                                        jne   .Lx684_57
                        mov              r9, rax
                                                                                        jmp   .Lx684_42
.Lx684_57:
                        cmp              esi, 2
                                                                                        jne   .Lx684_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx684_43
                        mov              r9, rax
                                                                                        jmp   .Lx684_42
.Lx684_58:
                        cmp              eax, 13
                                                                                        jne   .Lx684_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx684_43
                        cmp              rax, r9
                                                                                        je    .Lx684_43
                        mov              r9, rax
                                                                                        jmp   .Lx684_42
.Lx684_43:
                        cmp              r8, r9
                                                                                        je    .Lx684_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx684_44
                        cmp              eax, 99
                                                                                        je    .Lx684_44
                        cmp              eax, 13
                                                                                        jne   .Lx684_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx684_44
                                                                                        jmp   .Lx684_45
.Lx684_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx684_53
                        cmp              eax, 99
                                                                                        je    .Lx684_53
                        cmp              eax, 13
                                                                                        jne   .Lx684_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx684_53
                                                                                        jmp   .Lx684_46
.Lx684_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx684_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx684_53
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
                                                                                        jmp   .Lx684_51
.Lx684_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx684_47
                        cmp              eax, 99
                                                                                        je    .Lx684_47
                        cmp              eax, 13
                                                                                        jne   .Lx684_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx684_47
                                                                                        jmp   .Lx684_48
.Lx684_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx684_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx684_53
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
                                                                                        jmp   .Lx684_51
.Lx684_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx684_49
                        cmp              edx, 14
                                                                                        je    .Lx684_53
                                                                                        jmp   .Lx684_52
.Lx684_49:
                        cmp              edx, 14
                                                                                        je    .Lx684_52
                        cmp              ecx, 7
                                                                                        je    .Lx684_53
                        cmp              edx, 7
                                                                                        je    .Lx684_53
                        cmp              ecx, 6
                                                                                        jne   .Lx684_50
                        cmp              edx, 6
                                                                                        jne   .Lx684_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx684_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx684_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx684_51
                                                                                        jmp   .Lx684_52
.Lx684_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx684_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx684_53
.Lx684_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx684_54
.Lx684_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx684_54
.Lx684_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx684_54:
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n464_op11_α
                                                                                        jmp   n509_var_ref_α
n503_op11_β:
                                                                                        jmp   n464_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n510_op11_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n511_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n506_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n512_var_ref_α
n506_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n507_op11_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3312]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n513_var_ref_α
n507_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n508_op11_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2720]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n447_op11_α
                                                                                        jmp   n514_op11_α
n508_op11_β:
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n510_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              rsi, qword ptr [rip + .Lx693_2]
                                                                                        jmp   .Lx693_3
.Lx693_2:
                        .quad            .Lx693_2_s
.Lx693_2_s:
                        .string          "[]"
.Lx693_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n485_op11_α
                                                                                        jmp   n516_var_ref_α
n510_op11_β:
                                                                                        jmp   n485_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n517_op11_α
.Lx694_0:
                        .quad            .Lx694_0_s
.Lx694_0_s:
                        .string          "expand_once"
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n518_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   n519_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n514_op11_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2624]
                        lea              r8, [rbp + 2624]
.Lx699_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx699_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx699_41
                        cmp              esi, 1
                                                                                        jne   .Lx699_55
                        mov              r8, rax
                                                                                        jmp   .Lx699_40
.Lx699_55:
                        cmp              esi, 2
                                                                                        jne   .Lx699_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx699_41
                        mov              r8, rax
                                                                                        jmp   .Lx699_40
.Lx699_56:
                        cmp              eax, 13
                                                                                        jne   .Lx699_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx699_41
                        cmp              rax, r8
                                                                                        je    .Lx699_41
                        mov              r8, rax
                                                                                        jmp   .Lx699_40
.Lx699_41:
                        lea              r9, [rbp + 2640]
.Lx699_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx699_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx699_43
                        cmp              esi, 1
                                                                                        jne   .Lx699_57
                        mov              r9, rax
                                                                                        jmp   .Lx699_42
.Lx699_57:
                        cmp              esi, 2
                                                                                        jne   .Lx699_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx699_43
                        mov              r9, rax
                                                                                        jmp   .Lx699_42
.Lx699_58:
                        cmp              eax, 13
                                                                                        jne   .Lx699_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx699_43
                        cmp              rax, r9
                                                                                        je    .Lx699_43
                        mov              r9, rax
                                                                                        jmp   .Lx699_42
.Lx699_43:
                        cmp              r8, r9
                                                                                        je    .Lx699_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx699_44
                        cmp              eax, 99
                                                                                        je    .Lx699_44
                        cmp              eax, 13
                                                                                        jne   .Lx699_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx699_44
                                                                                        jmp   .Lx699_45
.Lx699_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx699_53
                        cmp              eax, 99
                                                                                        je    .Lx699_53
                        cmp              eax, 13
                                                                                        jne   .Lx699_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx699_53
                                                                                        jmp   .Lx699_46
.Lx699_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx699_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx699_53
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
                                                                                        jmp   .Lx699_51
.Lx699_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx699_47
                        cmp              eax, 99
                                                                                        je    .Lx699_47
                        cmp              eax, 13
                                                                                        jne   .Lx699_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx699_47
                                                                                        jmp   .Lx699_48
.Lx699_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx699_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx699_53
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
                                                                                        jmp   .Lx699_51
.Lx699_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx699_49
                        cmp              edx, 14
                                                                                        je    .Lx699_53
                                                                                        jmp   .Lx699_52
.Lx699_49:
                        cmp              edx, 14
                                                                                        je    .Lx699_52
                        cmp              ecx, 7
                                                                                        je    .Lx699_53
                        cmp              edx, 7
                                                                                        je    .Lx699_53
                        cmp              ecx, 6
                                                                                        jne   .Lx699_50
                        cmp              edx, 6
                                                                                        jne   .Lx699_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx699_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx699_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx699_51
                                                                                        jmp   .Lx699_52
.Lx699_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx699_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx699_53
.Lx699_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx699_54
.Lx699_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx699_54
.Lx699_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx699_54:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n447_op11_α
                                                                                        jmp   n520_suspend_α
n514_op11_β:
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n521_op11_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "e_not"
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n522_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n517_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        mov              rsi, qword ptr [rip + .Lx703_2]
                                                                                        jmp   .Lx703_3
.Lx703_2:
                        .quad            .Lx703_2_s
.Lx703_2_s:
                        .string          "expand_once"
.Lx703_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n506_op11_α
                                                                                        jmp   n523_var_ref_α
n517_op11_β:
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n524_op11_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n519_op11_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n525_op11_α
n519_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n520_suspend_α:
                        lea              rax, [rip + n520_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n520_suspend_β:
                                                                                        jmp   n447_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n521_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2144]
                        mov              rsi, qword ptr [rip + .Lx708_2]
                                                                                        jmp   .Lx708_3
.Lx708_2:
                        .quad            .Lx708_2_s
.Lx708_2_s:
                        .string          "e_not"
.Lx708_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n464_op11_α
                                                                                        jmp   n526_suspend_α
n521_op11_β:
                                                                                        jmp   n464_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n527_op11_α
.Lx709_0:
                        .quad            .Lx709_0_s
.Lx709_0_s:
                        .string          "test_foo_bar"
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n528_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              rsi, qword ptr [rip + .Lx712_2]
                                                                                        jmp   .Lx712_3
.Lx712_2:
                        .quad            .Lx712_2_s
.Lx712_2_s:
                        .string          "expand"
.Lx712_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n530_op11_α
                                                                                        jmp   n529_var_ref_α
n524_op11_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n525_op11_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3216]
                        lea              r8, [rbp + 3216]
.Lx713_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx713_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx713_41
                        cmp              esi, 1
                                                                                        jne   .Lx713_55
                        mov              r8, rax
                                                                                        jmp   .Lx713_40
.Lx713_55:
                        cmp              esi, 2
                                                                                        jne   .Lx713_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx713_41
                        mov              r8, rax
                                                                                        jmp   .Lx713_40
.Lx713_56:
                        cmp              eax, 13
                                                                                        jne   .Lx713_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx713_41
                        cmp              rax, r8
                                                                                        je    .Lx713_41
                        mov              r8, rax
                                                                                        jmp   .Lx713_40
.Lx713_41:
                        lea              r9, [rbp + 3232]
.Lx713_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx713_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx713_43
                        cmp              esi, 1
                                                                                        jne   .Lx713_57
                        mov              r9, rax
                                                                                        jmp   .Lx713_42
.Lx713_57:
                        cmp              esi, 2
                                                                                        jne   .Lx713_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx713_43
                        mov              r9, rax
                                                                                        jmp   .Lx713_42
.Lx713_58:
                        cmp              eax, 13
                                                                                        jne   .Lx713_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx713_43
                        cmp              rax, r9
                                                                                        je    .Lx713_43
                        mov              r9, rax
                                                                                        jmp   .Lx713_42
.Lx713_43:
                        cmp              r8, r9
                                                                                        je    .Lx713_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx713_44
                        cmp              eax, 99
                                                                                        je    .Lx713_44
                        cmp              eax, 13
                                                                                        jne   .Lx713_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx713_44
                                                                                        jmp   .Lx713_45
.Lx713_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx713_53
                        cmp              eax, 99
                                                                                        je    .Lx713_53
                        cmp              eax, 13
                                                                                        jne   .Lx713_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx713_53
                                                                                        jmp   .Lx713_46
.Lx713_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx713_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx713_53
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
                                                                                        jmp   .Lx713_51
.Lx713_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx713_47
                        cmp              eax, 99
                                                                                        je    .Lx713_47
                        cmp              eax, 13
                                                                                        jne   .Lx713_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx713_47
                                                                                        jmp   .Lx713_48
.Lx713_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx713_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx713_53
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
                                                                                        jmp   .Lx713_51
.Lx713_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx713_49
                        cmp              edx, 14
                                                                                        je    .Lx713_53
                                                                                        jmp   .Lx713_52
.Lx713_49:
                        cmp              edx, 14
                                                                                        je    .Lx713_52
                        cmp              ecx, 7
                                                                                        je    .Lx713_53
                        cmp              edx, 7
                                                                                        je    .Lx713_53
                        cmp              ecx, 6
                                                                                        jne   .Lx713_50
                        cmp              edx, 6
                                                                                        jne   .Lx713_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx713_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx713_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx713_51
                                                                                        jmp   .Lx713_52
.Lx713_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx713_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx713_53
.Lx713_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx713_54
.Lx713_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx713_54
.Lx713_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx713_54:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n531_suspend_α
n525_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n526_suspend_α:
                        lea              rax, [rip + n526_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n526_suspend_β:
                                                                                        jmp   n464_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n527_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1776]
                        mov              rsi, qword ptr [rip + .Lx716_2]
                                                                                        jmp   .Lx716_3
.Lx716_2:
                        .quad            .Lx716_2_s
.Lx716_2_s:
                        .string          "test_foo_bar"
.Lx716_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n485_op11_α
                                                                                        jmp   n532_suspend_α
n527_op11_β:
                                                                                        jmp   n485_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n533_lit_string_α
.Lx717_0:
                        .quad            .Lx717_0_s
.Lx717_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n534_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n530_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n535_var_ref_α
n530_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n531_suspend_α:
                        lea              rax, [rip + n531_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n531_suspend_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n532_suspend_α:
                        lea              rax, [rip + n532_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n532_suspend_β:
                                                                                        jmp   n485_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n536_var_ref_α
.Lx725_0:
                        .quad            .Lx725_0_s
.Lx725_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n537_op11_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n538_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n539_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n537_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx731_2]
                                                                                        jmp   .Lx731_3
.Lx731_2:
                        .quad            .Lx731_2_s
.Lx731_2_s:
                        .string          "ssu_body"
.Lx731_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n530_op11_α
                                                                                        jmp   n540_var_ref_α
n537_op11_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx732_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n541_op11_α
.Lx732_0:
                        .quad            .Lx732_0_s
.Lx732_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n542_lit_integer_α
.Lx733_0:
                        .quad            .Lx733_0_s
.Lx733_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n543_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n541_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              rsi, qword ptr [rip + .Lx736_2]
                                                                                        jmp   .Lx736_3
.Lx736_2:
                        .quad            .Lx736_2_s
.Lx736_2_s:
                        .string          "expand"
.Lx736_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n545_op11_α
                                                                                        jmp   n544_var_ref_α
n541_op11_β:
                                                                                        jmp   n545_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n546_lit_string_α
.Lx737_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n543_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx738_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n547_op11_α
.Lx738_0:
                        .quad            .Lx738_0_s
.Lx738_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n548_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n545_op11_α:
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
n545_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n549_lit_integer_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n547_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              rsi, qword ptr [rip + .Lx743_2]
                                                                                        jmp   .Lx743_3
.Lx743_2:
                        .quad            .Lx743_2_s
.Lx743_2_s:
                        .string          "true"
.Lx743_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n530_op11_α
                                                                                        jmp   n550_var_ref_α
n547_op11_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n551_op11_α
.Lx744_0:
                        .quad            .Lx744_0_s
.Lx744_0_s:
                        .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n552_lit_string_α
.Lx745_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n550_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n553_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n551_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx748_2]
                                                                                        jmp   .Lx748_3
.Lx748_2:
                        .quad            .Lx748_2_s
.Lx748_2_s:
                        .string          "ssu_guard"
.Lx748_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n545_op11_α
                                                                                        jmp   n554_var_ref_α
n551_op11_β:
                                                                                        jmp   n545_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx749_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n555_op11_α
.Lx749_0:
                        .quad            .Lx749_0_s
.Lx749_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n556_op11_α
.Lx750_0:
                        .quad            .Lx750_0_s
.Lx750_0_s:
                        .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n557_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n555_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n558_op11_α
n555_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n556_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lx754_2]
                                                                                        jmp   .Lx754_3
.Lx754_2:
                        .quad            .Lx754_2_s
.Lx754_2_s:
                        .string          "ssu_body"
.Lx754_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n530_op11_α
                                                                                        jmp   n559_suspend_α
n556_op11_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n560_op11_α
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n558_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n561_op11_α
n558_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n559_suspend_α:
                        lea              rax, [rip + n559_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n559_suspend_β:
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n560_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx759_2]
                                                                                        jmp   .Lx759_3
.Lx759_2:
                        .quad            .Lx759_2_s
.Lx759_2_s:
                        .string          "true"
.Lx759_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n545_op11_α
                                                                                        jmp   n562_var_ref_α
n560_op11_β:
                                                                                        jmp   n545_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n561_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n563_op11_α
n561_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n564_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n563_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n506_op11_α
                                                                                        jmp   n565_op11_α
n563_op11_β:
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n566_op11_α
.Lx764_0:
                        .quad            .Lx764_0_s
.Lx764_0_s:
                        .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n565_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx765_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx765_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx765_41
                        cmp              esi, 1
                                                                                        jne   .Lx765_55
                        mov              r8, rax
                                                                                        jmp   .Lx765_40
.Lx765_55:
                        cmp              esi, 2
                                                                                        jne   .Lx765_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx765_41
                        mov              r8, rax
                                                                                        jmp   .Lx765_40
.Lx765_56:
                        cmp              eax, 13
                                                                                        jne   .Lx765_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx765_41
                        cmp              rax, r8
                                                                                        je    .Lx765_41
                        mov              r8, rax
                                                                                        jmp   .Lx765_40
.Lx765_41:
                        lea              r9, [rbp + 1088]
.Lx765_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx765_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx765_43
                        cmp              esi, 1
                                                                                        jne   .Lx765_57
                        mov              r9, rax
                                                                                        jmp   .Lx765_42
.Lx765_57:
                        cmp              esi, 2
                                                                                        jne   .Lx765_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx765_43
                        mov              r9, rax
                                                                                        jmp   .Lx765_42
.Lx765_58:
                        cmp              eax, 13
                                                                                        jne   .Lx765_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx765_43
                        cmp              rax, r9
                                                                                        je    .Lx765_43
                        mov              r9, rax
                                                                                        jmp   .Lx765_42
.Lx765_43:
                        cmp              r8, r9
                                                                                        je    .Lx765_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx765_44
                        cmp              eax, 99
                                                                                        je    .Lx765_44
                        cmp              eax, 13
                                                                                        jne   .Lx765_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx765_44
                                                                                        jmp   .Lx765_45
.Lx765_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx765_53
                        cmp              eax, 99
                                                                                        je    .Lx765_53
                        cmp              eax, 13
                                                                                        jne   .Lx765_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx765_53
                                                                                        jmp   .Lx765_46
.Lx765_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx765_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx765_53
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
                                                                                        jmp   .Lx765_51
.Lx765_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx765_47
                        cmp              eax, 99
                                                                                        je    .Lx765_47
                        cmp              eax, 13
                                                                                        jne   .Lx765_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx765_47
                                                                                        jmp   .Lx765_48
.Lx765_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx765_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx765_53
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
                                                                                        jmp   .Lx765_51
.Lx765_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx765_49
                        cmp              edx, 14
                                                                                        je    .Lx765_53
                                                                                        jmp   .Lx765_52
.Lx765_49:
                        cmp              edx, 14
                                                                                        je    .Lx765_52
                        cmp              ecx, 7
                                                                                        je    .Lx765_53
                        cmp              edx, 7
                                                                                        je    .Lx765_53
                        cmp              ecx, 6
                                                                                        jne   .Lx765_50
                        cmp              edx, 6
                                                                                        jne   .Lx765_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx765_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx765_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx765_51
                                                                                        jmp   .Lx765_52
.Lx765_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx765_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx765_53
.Lx765_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx765_54
.Lx765_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx765_54
.Lx765_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx765_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n506_op11_α
                                                                                        jmp   n567_var_ref_α
n565_op11_β:
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n566_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              rsi, qword ptr [rip + .Lx766_2]
                                                                                        jmp   .Lx766_3
.Lx766_2:
                        .quad            .Lx766_2_s
.Lx766_2_s:
                        .string          "ssu_guard"
.Lx766_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n545_op11_α
                                                                                        jmp   n568_suspend_α
n566_op11_β:
                                                                                        jmp   n545_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n569_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n568_suspend_α:
                        lea              rax, [rip + n568_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n568_suspend_β:
                                                                                        jmp   n545_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n570_var_ref_α
.Lx771_0:
                        .quad            .Lx771_0_s
.Lx771_0_s:
                        .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n571_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n506_op11_α
                                                                                        jmp   n572_op11_α
n571_op11_β:
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n572_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx775_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx775_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        cmp              esi, 1
                                                                                        jne   .Lx775_55
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_55:
                        cmp              esi, 2
                                                                                        jne   .Lx775_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_56:
                        cmp              eax, 13
                                                                                        jne   .Lx775_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        cmp              rax, r8
                                                                                        je    .Lx775_41
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_41:
                        lea              r9, [rbp + 928]
.Lx775_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx775_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        cmp              esi, 1
                                                                                        jne   .Lx775_57
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_57:
                        cmp              esi, 2
                                                                                        jne   .Lx775_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_58:
                        cmp              eax, 13
                                                                                        jne   .Lx775_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        cmp              rax, r9
                                                                                        je    .Lx775_43
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_43:
                        cmp              r8, r9
                                                                                        je    .Lx775_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_44
                        cmp              eax, 99
                                                                                        je    .Lx775_44
                        cmp              eax, 13
                                                                                        jne   .Lx775_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx775_44
                                                                                        jmp   .Lx775_45
.Lx775_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_53
                        cmp              eax, 99
                                                                                        je    .Lx775_53
                        cmp              eax, 13
                                                                                        jne   .Lx775_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx775_53
                                                                                        jmp   .Lx775_46
.Lx775_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx775_53
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
                                                                                        jmp   .Lx775_51
.Lx775_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_47
                        cmp              eax, 99
                                                                                        je    .Lx775_47
                        cmp              eax, 13
                                                                                        jne   .Lx775_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx775_47
                                                                                        jmp   .Lx775_48
.Lx775_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx775_53
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
                                                                                        jmp   .Lx775_51
.Lx775_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx775_49
                        cmp              edx, 14
                                                                                        je    .Lx775_53
                                                                                        jmp   .Lx775_52
.Lx775_49:
                        cmp              edx, 14
                                                                                        je    .Lx775_52
                        cmp              ecx, 7
                                                                                        je    .Lx775_53
                        cmp              edx, 7
                                                                                        je    .Lx775_53
                        cmp              ecx, 6
                                                                                        jne   .Lx775_50
                        cmp              edx, 6
                                                                                        jne   .Lx775_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx775_51
                                                                                        jmp   .Lx775_52
.Lx775_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx775_53
.Lx775_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx775_54
.Lx775_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx775_54
.Lx775_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx775_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n506_op11_α
                                                                                        jmp   n573_suspend_α
n572_op11_β:
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n573_suspend_α:
                        lea              rax, [rip + n573_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n573_suspend_β:
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 4608]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_test$2F4_res]
                        push             rax
                        mov              rax, [rbp + 4680]
                        mov              rbp, [rbp + 4696]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 4688]
                        lea              rsp, [rbp + 4704]
                        mov              rbp, [rbp + 4696]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ssu_body$2F0_α
proc_ssu_body$2F0_α:
                        .global          proc_ssu_body$2F0_α
                        .global          proc_ssu_body$2F0_β
                        .global          proc_ssu_body$2F0_γ
                        .global          proc_ssu_body$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_ssu_body$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n778_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx782_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx782_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx782_101
.Lx782_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx782_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_ssu_body$2F0_ω
                                                                                        jmp   n779_move_label_α
n778_op11_β:
                                                                                        jmp   proc_ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n779_move_label_α:
                        lea              rax, [rip + n780_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_ssu_body$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n780_op11_α:
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
                                                                                        je    proc_ssu_body$2F0_ω
                                                                                        jmp   proc_ssu_body$2F0_ω
n780_op11_β:
                                                                                        jmp   proc_ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n781_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n781_disjunction_β:
                                                                                        jmp   proc_ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_β:
                                                                                        jmp   n781_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx788_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx788_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ssu_body$2F0_α_body
.Lx788_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx788_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_term_expansion$2F2_α
proc_term_expansion$2F2_α:
                        .global          proc_term_expansion$2F2_α
                        .global          proc_term_expansion$2F2_β
                        .global          proc_term_expansion$2F2_γ
                        .global          proc_term_expansion$2F2_ω
                        sub              rsp, 656
                        mov              [rsp + 632], rcx
                        mov              [rsp + 640], rdx
                        mov              [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 624
                        call             rt_jmp_frame_lexprep2@PLT
proc_term_expansion$2F2_α_body:
                        lea              rax, [rip + n799_suspend_β]
                        mov              qword ptr [rbp + 608], rax
#-----------------------------------------------------------------------------------------------------------------------
n789_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx809_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx809_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx809_101
.Lx809_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx809_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_term_expansion$2F2_ω
                                                                                        jmp   n790_var_ref_α
n789_op11_β:
                                                                                        jmp   proc_term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n791_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n792_op11_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          "a2b"
#-----------------------------------------------------------------------------------------------------------------------
n792_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lx813_2]
                                                                                        jmp   .Lx813_3
.Lx813_2:
                        .quad            .Lx813_2_s
.Lx813_2_s:
                        .string          "a2b"
.Lx813_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n794_op11_α
                                                                                        jmp   n793_var_ref_α
n792_op11_β:
                                                                                        jmp   n794_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n793_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n795_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n794_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_term_expansion$2F2_ω
                                                                                        jmp   n796_var_ref_α
n794_op11_β:
                                                                                        jmp   proc_term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n797_op11_α
.Lx817_0:
                        .quad            .Lx817_0_s
.Lx817_0_s:
                        .string          "b2c"
#-----------------------------------------------------------------------------------------------------------------------
n796_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n798_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n797_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              rsi, qword ptr [rip + .Lx820_2]
                                                                                        jmp   .Lx820_3
.Lx820_2:
                        .quad            .Lx820_2_s
.Lx820_2_s:
                        .string          "b2c"
.Lx820_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n794_op11_α
                                                                                        jmp   n799_suspend_α
n797_op11_β:
                                                                                        jmp   n794_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n800_op11_α
.Lx821_0:
                        .quad            .Lx821_0_s
.Lx821_0_s:
                        .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n799_suspend_α:
                        lea              rax, [rip + n799_suspend_β]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term_expansion$2F2_γ
n799_suspend_β:
                                                                                        jmp   n794_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n800_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx824_2]
                                                                                        jmp   .Lx824_3
.Lx824_2:
                        .quad            .Lx824_2_s
.Lx824_2_s:
                        .string          "make_dcg"
.Lx824_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n802_op11_α
                                                                                        jmp   n801_var_ref_α
n800_op11_β:
                                                                                        jmp   n802_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n803_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n802_op11_α:
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
                                                                                        je    proc_term_expansion$2F2_ω
                                                                                        jmp   proc_term_expansion$2F2_ω
n802_op11_β:
                                                                                        jmp   proc_term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n804_lit_string_α
.Lx828_0:
                        .quad            .Lx828_0_s
.Lx828_0_s:
                        .string          "-->"
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n805_lit_string_α
.Lx829_0:
                        .quad            .Lx829_0_s
.Lx829_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n805_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n806_op11_α
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n806_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n802_op11_α
                                                                                        jmp   n807_op11_α
n806_op11_β:
                                                                                        jmp   n802_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n807_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx832_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx832_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx832_41
                        cmp              esi, 1
                                                                                        jne   .Lx832_55
                        mov              r8, rax
                                                                                        jmp   .Lx832_40
.Lx832_55:
                        cmp              esi, 2
                                                                                        jne   .Lx832_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx832_41
                        mov              r8, rax
                                                                                        jmp   .Lx832_40
.Lx832_56:
                        cmp              eax, 13
                                                                                        jne   .Lx832_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx832_41
                        cmp              rax, r8
                                                                                        je    .Lx832_41
                        mov              r8, rax
                                                                                        jmp   .Lx832_40
.Lx832_41:
                        lea              r9, [rbp + 160]
.Lx832_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx832_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx832_43
                        cmp              esi, 1
                                                                                        jne   .Lx832_57
                        mov              r9, rax
                                                                                        jmp   .Lx832_42
.Lx832_57:
                        cmp              esi, 2
                                                                                        jne   .Lx832_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx832_43
                        mov              r9, rax
                                                                                        jmp   .Lx832_42
.Lx832_58:
                        cmp              eax, 13
                                                                                        jne   .Lx832_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx832_43
                        cmp              rax, r9
                                                                                        je    .Lx832_43
                        mov              r9, rax
                                                                                        jmp   .Lx832_42
.Lx832_43:
                        cmp              r8, r9
                                                                                        je    .Lx832_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx832_44
                        cmp              eax, 99
                                                                                        je    .Lx832_44
                        cmp              eax, 13
                                                                                        jne   .Lx832_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx832_44
                                                                                        jmp   .Lx832_45
.Lx832_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx832_53
                        cmp              eax, 99
                                                                                        je    .Lx832_53
                        cmp              eax, 13
                                                                                        jne   .Lx832_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx832_53
                                                                                        jmp   .Lx832_46
.Lx832_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx832_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx832_53
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
                                                                                        jmp   .Lx832_51
.Lx832_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx832_47
                        cmp              eax, 99
                                                                                        je    .Lx832_47
                        cmp              eax, 13
                                                                                        jne   .Lx832_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx832_47
                                                                                        jmp   .Lx832_48
.Lx832_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx832_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx832_53
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
                                                                                        jmp   .Lx832_51
.Lx832_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx832_49
                        cmp              edx, 14
                                                                                        je    .Lx832_53
                                                                                        jmp   .Lx832_52
.Lx832_49:
                        cmp              edx, 14
                                                                                        je    .Lx832_52
                        cmp              ecx, 7
                                                                                        je    .Lx832_53
                        cmp              edx, 7
                                                                                        je    .Lx832_53
                        cmp              ecx, 6
                                                                                        jne   .Lx832_50
                        cmp              edx, 6
                                                                                        jne   .Lx832_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx832_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx832_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx832_51
                                                                                        jmp   .Lx832_52
.Lx832_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx832_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx832_53
.Lx832_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx832_54
.Lx832_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx832_54
.Lx832_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx832_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n802_op11_α
                                                                                        jmp   n808_suspend_α
n807_op11_β:
                                                                                        jmp   n802_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n808_suspend_α:
                        lea              rax, [rip + n808_suspend_β]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term_expansion$2F2_γ
n808_suspend_β:
                                                                                        jmp   n802_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_term_expansion$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_term_expansion$2F2_β:
                                                                                        jmp   qword ptr [rbp + 608]
#-----------------------------------------------------------------------------------------------------------------------
proc_term_expansion$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_term_expansion$2F2_res]
                        push             rax
                        mov              rax, [rbp + 632]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_term_expansion$2F2_ω:
                        mov              rax, [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
                        .global          proc_$disj0$2F1_α
                        .global          proc_$disj0$2F1_β
                        .global          proc_$disj0$2F1_γ
                        .global          proc_$disj0$2F1_ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n850_suspend_β]
                        mov              qword ptr [rbp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n835_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx854_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx854_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx854_101
.Lx854_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx854_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n836_var_ref_α
n835_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n836_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n837_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n837_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n838_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n838_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx859_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx859_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx859_41
                        cmp              esi, 1
                                                                                        jne   .Lx859_55
                        mov              r8, rax
                                                                                        jmp   .Lx859_40
.Lx859_55:
                        cmp              esi, 2
                                                                                        jne   .Lx859_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx859_41
                        mov              r8, rax
                                                                                        jmp   .Lx859_40
.Lx859_56:
                        cmp              eax, 13
                                                                                        jne   .Lx859_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx859_41
                        cmp              rax, r8
                                                                                        je    .Lx859_41
                        mov              r8, rax
                                                                                        jmp   .Lx859_40
.Lx859_41:
                        lea              r9, [rbp + 512]
.Lx859_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx859_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx859_43
                        cmp              esi, 1
                                                                                        jne   .Lx859_57
                        mov              r9, rax
                                                                                        jmp   .Lx859_42
.Lx859_57:
                        cmp              esi, 2
                                                                                        jne   .Lx859_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx859_43
                        mov              r9, rax
                                                                                        jmp   .Lx859_42
.Lx859_58:
                        cmp              eax, 13
                                                                                        jne   .Lx859_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx859_43
                        cmp              rax, r9
                                                                                        je    .Lx859_43
                        mov              r9, rax
                                                                                        jmp   .Lx859_42
.Lx859_43:
                        cmp              r8, r9
                                                                                        je    .Lx859_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx859_44
                        cmp              eax, 99
                                                                                        je    .Lx859_44
                        cmp              eax, 13
                                                                                        jne   .Lx859_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx859_44
                                                                                        jmp   .Lx859_45
.Lx859_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx859_53
                        cmp              eax, 99
                                                                                        je    .Lx859_53
                        cmp              eax, 13
                                                                                        jne   .Lx859_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx859_53
                                                                                        jmp   .Lx859_46
.Lx859_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx859_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx859_53
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
                                                                                        jmp   .Lx859_51
.Lx859_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx859_47
                        cmp              eax, 99
                                                                                        je    .Lx859_47
                        cmp              eax, 13
                                                                                        jne   .Lx859_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx859_47
                                                                                        jmp   .Lx859_48
.Lx859_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx859_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx859_53
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
                                                                                        jmp   .Lx859_51
.Lx859_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx859_49
                        cmp              edx, 14
                                                                                        je    .Lx859_53
                                                                                        jmp   .Lx859_52
.Lx859_49:
                        cmp              edx, 14
                                                                                        je    .Lx859_52
                        cmp              ecx, 7
                                                                                        je    .Lx859_53
                        cmp              edx, 7
                                                                                        je    .Lx859_53
                        cmp              ecx, 6
                                                                                        jne   .Lx859_50
                        cmp              edx, 6
                                                                                        jne   .Lx859_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx859_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx859_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx859_51
                                                                                        jmp   .Lx859_52
.Lx859_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx859_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx859_53
.Lx859_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx859_54
.Lx859_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx859_54
.Lx859_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx859_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n840_op11_α
                                                                                        jmp   n839_lit_string_α
n838_op11_β:
                                                                                        jmp   n840_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n841_var_ref_α
.Lx860_0:
                        .quad            .Lx860_0_s
.Lx860_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n840_op11_α:
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
                                                                                        jmp   n842_var_ref_α
n840_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n841_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n843_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n842_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n844_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n843_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n845_op11_α
.Lx866_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n844_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n846_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n845_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n840_op11_α
                                                                                        jmp   n847_call_proc_staged_α
n845_op11_β:
                                                                                        jmp   n840_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n846_op11_α:
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
.Lx870_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx870_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx870_41
                        cmp              esi, 1
                                                                                        jne   .Lx870_55
                        mov              r8, rax
                                                                                        jmp   .Lx870_40
.Lx870_55:
                        cmp              esi, 2
                                                                                        jne   .Lx870_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx870_41
                        mov              r8, rax
                                                                                        jmp   .Lx870_40
.Lx870_56:
                        cmp              eax, 13
                                                                                        jne   .Lx870_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx870_41
                        cmp              rax, r8
                                                                                        je    .Lx870_41
                        mov              r8, rax
                                                                                        jmp   .Lx870_40
.Lx870_41:
                        lea              r9, [rbp + 224]
.Lx870_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx870_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx870_43
                        cmp              esi, 1
                                                                                        jne   .Lx870_57
                        mov              r9, rax
                                                                                        jmp   .Lx870_42
.Lx870_57:
                        cmp              esi, 2
                                                                                        jne   .Lx870_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx870_43
                        mov              r9, rax
                                                                                        jmp   .Lx870_42
.Lx870_58:
                        cmp              eax, 13
                                                                                        jne   .Lx870_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx870_43
                        cmp              rax, r9
                                                                                        je    .Lx870_43
                        mov              r9, rax
                                                                                        jmp   .Lx870_42
.Lx870_43:
                        cmp              r8, r9
                                                                                        je    .Lx870_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx870_44
                        cmp              eax, 99
                                                                                        je    .Lx870_44
                        cmp              eax, 13
                                                                                        jne   .Lx870_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx870_44
                                                                                        jmp   .Lx870_45
.Lx870_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx870_53
                        cmp              eax, 99
                                                                                        je    .Lx870_53
                        cmp              eax, 13
                                                                                        jne   .Lx870_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx870_53
                                                                                        jmp   .Lx870_46
.Lx870_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx870_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx870_53
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
                                                                                        jmp   .Lx870_51
.Lx870_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx870_47
                        cmp              eax, 99
                                                                                        je    .Lx870_47
                        cmp              eax, 13
                                                                                        jne   .Lx870_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx870_47
                                                                                        jmp   .Lx870_48
.Lx870_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx870_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx870_53
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
                                                                                        jmp   .Lx870_51
.Lx870_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx870_49
                        cmp              edx, 14
                                                                                        je    .Lx870_53
                                                                                        jmp   .Lx870_52
.Lx870_49:
                        cmp              edx, 14
                                                                                        je    .Lx870_52
                        cmp              ecx, 7
                                                                                        je    .Lx870_53
                        cmp              edx, 7
                                                                                        je    .Lx870_53
                        cmp              ecx, 6
                                                                                        jne   .Lx870_50
                        cmp              edx, 6
                                                                                        jne   .Lx870_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx870_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx870_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx870_51
                                                                                        jmp   .Lx870_52
.Lx870_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx870_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx870_53
.Lx870_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx870_54
.Lx870_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx870_54
.Lx870_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx870_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n849_op11_α
                                                                                        jmp   n848_var_ref_α
n846_op11_β:
                                                                                        jmp   n849_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n847_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx872_20
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx872_21
.Lx872_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx872_21:
                        mov              rdi, qword ptr [rip + .Lx872_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx872_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx872_3]
                        lea              rdx, [rip + .Lx872_4]
                                                                                        jmp   rax
.Lx872_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx872_2
.Lx872_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx872_2
.Lx872_1:
                        call             rt_faildescr@PLT
.Lx872_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n840_op11_α
                                                                                        jmp   n850_suspend_α
n847_call_proc_staged_β:
                                                                                        jmp   n840_op11_α
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "onetime/1"
#-----------------------------------------------------------------------------------------------------------------------
n848_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n851_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n849_op11_α:
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
n849_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n850_suspend_α:
                        lea              rax, [rip + n850_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n850_suspend_β:
                                                                                        jmp   n847_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n851_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n852_op11_α
.Lx878_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n852_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n849_op11_α
                                                                                        jmp   n853_suspend_α
n852_op11_β:
                                                                                        jmp   n849_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n853_suspend_α:
                        lea              rax, [rip + n853_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n853_suspend_β:
                                                                                        jmp   n849_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 560]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 600]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_foo_bar$2F0_α
proc_test_foo_bar$2F0_α:
                        .global          proc_test_foo_bar$2F0_α
                        .global          proc_test_foo_bar$2F0_β
                        .global          proc_test_foo_bar$2F0_γ
                        .global          proc_test_foo_bar$2F0_ω
                        sub              rsp, 208
                        mov              [rsp + 184], rcx
                        mov              [rsp + 192], rdx
                        mov              [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 160
                        mov              edx, 176
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_foo_bar$2F0_α_body:
                        lea              rax, [rip + n885_suspend_β]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n882_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx887_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx887_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx887_101
.Lx887_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx887_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_foo_bar$2F0_ω
                                                                                        jmp   n883_lit_string_α
n882_op11_β:
                                                                                        jmp   proc_test_foo_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n884_call_proc_staged_α
.Lx888_0:
                        .quad            .Lx888_0_s
.Lx888_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n884_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx890_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx890_21
.Lx890_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx890_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx890_1
                        lea              rcx, [rip + .Lx890_3]
                        lea              rdx, [rip + .Lx890_4]
                                                                                        jmp   rax
.Lx890_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx890_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx890_2
.Lx890_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx890_2
.Lx890_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx890_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx890_2
.Lx890_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx890_2
.Lx890_1:
                        call             rt_faildescr@PLT
.Lx890_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n886_op11_α
                                                                                        jmp   n885_suspend_α
n884_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx890_0:
                        .quad            .Lx890_0_s
.Lx890_0_s:
                        .string          "run/1"
#-----------------------------------------------------------------------------------------------------------------------
n885_suspend_α:
                        lea              rax, [rip + n885_suspend_β]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_foo_bar$2F0_γ
n885_suspend_β:
                                                                                        jmp   n884_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n886_op11_α:
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
                                                                                        je    proc_test_foo_bar$2F0_ω
                                                                                        jmp   proc_test_foo_bar$2F0_ω
n886_op11_β:
                                                                                        jmp   proc_test_foo_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test_foo_bar$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_foo_bar$2F0_β:
                                                                                        jmp   qword ptr [rbp + 160]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_foo_bar$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_foo_bar$2F0_res]
                        push             rax
                        mov              rax, [rbp + 184]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_foo_bar$2F0_ω:
                        mov              rax, [rbp + 192]
                        lea              rsp, [rbp + 208]
                        mov              rbp, [rbp + 200]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_b$2F0_α
proc_g_b$2F0_α:
                        .global          proc_g_b$2F0_α
                        .global          proc_g_b$2F0_β
                        .global          proc_g_b$2F0_γ
                        .global          proc_g_b$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_b$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n894_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx898_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx898_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx898_101
.Lx898_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx898_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_b$2F0_ω
                                                                                        jmp   n895_move_label_α
n894_op11_β:
                                                                                        jmp   proc_g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n895_move_label_α:
                        lea              rax, [rip + n896_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_g_b$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n896_op11_α:
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
                                                                                        je    proc_g_b$2F0_ω
                                                                                        jmp   proc_g_b$2F0_ω
n896_op11_β:
                                                                                        jmp   proc_g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n897_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n897_disjunction_β:
                                                                                        jmp   proc_g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_β:
                                                                                        jmp   n897_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx904_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx904_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_g_b$2F0_α_body
.Lx904_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx904_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$3A$2F2_α
proc_$3A$2F2_α:
                        .global          proc_$3A$2F2_α
                        .global          proc_$3A$2F2_β
                        .global          proc_$3A$2F2_γ
                        .global          proc_$3A$2F2_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_$3A$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n905_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx918_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx918_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx918_101
.Lx918_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx918_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   n906_var_ref_α
n905_op11_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n906_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n907_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n907_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n908_op11_α
.Lx921_0:
                        .quad            .Lx921_0_s
.Lx921_0_s:
                        .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n908_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx922_2]
                                                                                        jmp   .Lx922_3
.Lx922_2:
                        .quad            .Lx922_2_s
.Lx922_2_s:
                        .string          "user"
.Lx922_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n910_op11_α
                                                                                        jmp   n909_var_ref_α
n908_op11_β:
                                                                                        jmp   n910_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n909_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n911_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n910_op11_α:
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
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   proc_$3A$2F2_ω
n910_op11_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx926_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n912_lit_string_α
.Lx926_0:
                        .quad            .Lx926_0_s
.Lx926_0_s:
                        .string          "term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n912_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n913_lit_string_α
.Lx927_0:
                        .quad            .Lx927_0_s
.Lx927_0_s:
                        .string          "b2c"
#-----------------------------------------------------------------------------------------------------------------------
n913_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n914_op11_α
.Lx928_0:
                        .quad            .Lx928_0_s
.Lx928_0_s:
                        .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n914_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n910_op11_α
                                                                                        jmp   n915_op11_α
n914_op11_β:
                                                                                        jmp   n910_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n915_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        lea              r8, [rbp + 160]
.Lx930_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx930_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx930_41
                        cmp              esi, 1
                                                                                        jne   .Lx930_55
                        mov              r8, rax
                                                                                        jmp   .Lx930_40
.Lx930_55:
                        cmp              esi, 2
                                                                                        jne   .Lx930_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx930_41
                        mov              r8, rax
                                                                                        jmp   .Lx930_40
.Lx930_56:
                        cmp              eax, 13
                                                                                        jne   .Lx930_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx930_41
                        cmp              rax, r8
                                                                                        je    .Lx930_41
                        mov              r8, rax
                                                                                        jmp   .Lx930_40
.Lx930_41:
                        lea              r9, [rbp + 176]
.Lx930_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx930_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx930_43
                        cmp              esi, 1
                                                                                        jne   .Lx930_57
                        mov              r9, rax
                                                                                        jmp   .Lx930_42
.Lx930_57:
                        cmp              esi, 2
                                                                                        jne   .Lx930_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx930_43
                        mov              r9, rax
                                                                                        jmp   .Lx930_42
.Lx930_58:
                        cmp              eax, 13
                                                                                        jne   .Lx930_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx930_43
                        cmp              rax, r9
                                                                                        je    .Lx930_43
                        mov              r9, rax
                                                                                        jmp   .Lx930_42
.Lx930_43:
                        cmp              r8, r9
                                                                                        je    .Lx930_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx930_44
                        cmp              eax, 99
                                                                                        je    .Lx930_44
                        cmp              eax, 13
                                                                                        jne   .Lx930_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx930_44
                                                                                        jmp   .Lx930_45
.Lx930_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx930_53
                        cmp              eax, 99
                                                                                        je    .Lx930_53
                        cmp              eax, 13
                                                                                        jne   .Lx930_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx930_53
                                                                                        jmp   .Lx930_46
.Lx930_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx930_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx930_53
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
                                                                                        jmp   .Lx930_51
.Lx930_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx930_47
                        cmp              eax, 99
                                                                                        je    .Lx930_47
                        cmp              eax, 13
                                                                                        jne   .Lx930_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx930_47
                                                                                        jmp   .Lx930_48
.Lx930_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx930_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx930_53
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
                                                                                        jmp   .Lx930_51
.Lx930_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx930_49
                        cmp              edx, 14
                                                                                        je    .Lx930_53
                                                                                        jmp   .Lx930_52
.Lx930_49:
                        cmp              edx, 14
                                                                                        je    .Lx930_52
                        cmp              ecx, 7
                                                                                        je    .Lx930_53
                        cmp              edx, 7
                                                                                        je    .Lx930_53
                        cmp              ecx, 6
                                                                                        jne   .Lx930_50
                        cmp              edx, 6
                                                                                        jne   .Lx930_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx930_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx930_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx930_51
                                                                                        jmp   .Lx930_52
.Lx930_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx930_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx930_53
.Lx930_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx930_54
.Lx930_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx930_54
.Lx930_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx930_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n910_op11_α
                                                                                        jmp   n916_move_label_α
n915_op11_β:
                                                                                        jmp   n910_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n916_move_label_α:
                        lea              rax, [rip + n910_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_$3A$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n917_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n917_disjunction_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_β:
                                                                                        jmp   n917_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 424]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_dcα:
                        pop              r11
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 416], r11
                        lea              rax, [rip + .Lx935_2]
                        mov              qword ptr [rbp + 424], rax
                        lea              rax, [rip + .Lx935_3]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 416
                        mov              edx, 416
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$3A$2F2_α_body
.Lx935_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx935_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_a2b$2F0_α
proc_a2b$2F0_α:
                        .global          proc_a2b$2F0_α
                        .global          proc_a2b$2F0_β
                        .global          proc_a2b$2F0_γ
                        .global          proc_a2b$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_a2b$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n936_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx940_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx940_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx940_101
.Lx940_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx940_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_a2b$2F0_ω
                                                                                        jmp   n937_move_label_α
n936_op11_β:
                                                                                        jmp   proc_a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n937_move_label_α:
                        lea              rax, [rip + n938_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_a2b$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n938_op11_α:
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
                                                                                        je    proc_a2b$2F0_ω
                                                                                        jmp   proc_a2b$2F0_ω
n938_op11_β:
                                                                                        jmp   proc_a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n939_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n939_disjunction_β:
                                                                                        jmp   proc_a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_β:
                                                                                        jmp   n939_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx946_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx946_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_a2b$2F0_α_body
.Lx946_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx946_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$2C$2F2_α
proc_$2C$2F2_α:
                        .global          proc_$2C$2F2_α
                        .global          proc_$2C$2F2_β
                        .global          proc_$2C$2F2_γ
                        .global          proc_$2C$2F2_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_$2C$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n947_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx957_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx957_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx957_101
.Lx957_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx957_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n948_var_ref_α
n947_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n948_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n949_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n949_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n950_op11_α
.Lx960_0:
                        .quad            .Lx960_0_s
.Lx960_0_s:
                        .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n950_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              rsi, qword ptr [rip + .Lx961_2]
                                                                                        jmp   .Lx961_3
.Lx961_2:
                        .quad            .Lx961_2_s
.Lx961_2_s:
                        .string          "ssu_guard"
.Lx961_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n952_op11_α
                                                                                        jmp   n951_var_ref_α
n950_op11_β:
                                                                                        jmp   n952_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n951_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n953_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n952_op11_α:
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
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   proc_$2C$2F2_ω
n952_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n953_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx965_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n954_op11_α
.Lx965_0:
                        .quad            .Lx965_0_s
.Lx965_0_s:
                        .string          "g_b"
#-----------------------------------------------------------------------------------------------------------------------
n954_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx966_2]
                                                                                        jmp   .Lx966_3
.Lx966_2:
                        .quad            .Lx966_2_s
.Lx966_2_s:
                        .string          "g_b"
.Lx966_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n952_op11_α
                                                                                        jmp   n955_move_label_α
n954_op11_β:
                                                                                        jmp   n952_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n955_move_label_α:
                        lea              rax, [rip + n952_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_$2C$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n956_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n956_disjunction_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_β:
                                                                                        jmp   n956_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 312]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 304], r11
                        lea              rax, [rip + .Lx971_2]
                        mov              qword ptr [rbp + 312], rax
                        lea              rax, [rip + .Lx971_3]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 304
                        mov              edx, 304
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$2C$2F2_α_body
.Lx971_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx971_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_one$2F1_α
proc_one$2F1_α:
                        .global          proc_one$2F1_α
                        .global          proc_one$2F1_β
                        .global          proc_one$2F1_γ
                        .global          proc_one$2F1_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_one$2F1_α_body:
                        lea              rax, [rip + n979_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n972_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx980_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx980_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx980_101
.Lx980_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx980_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_one$2F1_ω
                                                                                        jmp   n973_var_ref_α
n972_op11_β:
                                                                                        jmp   proc_one$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n973_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n974_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n974_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n975_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n975_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx985_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx985_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx985_41
                        cmp              esi, 1
                                                                                        jne   .Lx985_55
                        mov              r8, rax
                                                                                        jmp   .Lx985_40
.Lx985_55:
                        cmp              esi, 2
                                                                                        jne   .Lx985_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx985_41
                        mov              r8, rax
                                                                                        jmp   .Lx985_40
.Lx985_56:
                        cmp              eax, 13
                                                                                        jne   .Lx985_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx985_41
                        cmp              rax, r8
                                                                                        je    .Lx985_41
                        mov              r8, rax
                                                                                        jmp   .Lx985_40
.Lx985_41:
                        lea              r9, [rbp + 208]
.Lx985_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx985_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx985_43
                        cmp              esi, 1
                                                                                        jne   .Lx985_57
                        mov              r9, rax
                                                                                        jmp   .Lx985_42
.Lx985_57:
                        cmp              esi, 2
                                                                                        jne   .Lx985_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx985_43
                        mov              r9, rax
                                                                                        jmp   .Lx985_42
.Lx985_58:
                        cmp              eax, 13
                                                                                        jne   .Lx985_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx985_43
                        cmp              rax, r9
                                                                                        je    .Lx985_43
                        mov              r9, rax
                                                                                        jmp   .Lx985_42
.Lx985_43:
                        cmp              r8, r9
                                                                                        je    .Lx985_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx985_44
                        cmp              eax, 99
                                                                                        je    .Lx985_44
                        cmp              eax, 13
                                                                                        jne   .Lx985_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx985_44
                                                                                        jmp   .Lx985_45
.Lx985_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx985_53
                        cmp              eax, 99
                                                                                        je    .Lx985_53
                        cmp              eax, 13
                                                                                        jne   .Lx985_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx985_53
                                                                                        jmp   .Lx985_46
.Lx985_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx985_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx985_53
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
                                                                                        jmp   .Lx985_51
.Lx985_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx985_47
                        cmp              eax, 99
                                                                                        je    .Lx985_47
                        cmp              eax, 13
                                                                                        jne   .Lx985_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx985_47
                                                                                        jmp   .Lx985_48
.Lx985_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx985_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx985_53
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
                                                                                        jmp   .Lx985_51
.Lx985_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx985_49
                        cmp              edx, 14
                                                                                        je    .Lx985_53
                                                                                        jmp   .Lx985_52
.Lx985_49:
                        cmp              edx, 14
                                                                                        je    .Lx985_52
                        cmp              ecx, 7
                                                                                        je    .Lx985_53
                        cmp              edx, 7
                                                                                        je    .Lx985_53
                        cmp              ecx, 6
                                                                                        jne   .Lx985_50
                        cmp              edx, 6
                                                                                        jne   .Lx985_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx985_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx985_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx985_51
                                                                                        jmp   .Lx985_52
.Lx985_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx985_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx985_53
.Lx985_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx985_54
.Lx985_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx985_54
.Lx985_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx985_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n977_op11_α
                                                                                        jmp   n976_var_ref_α
n975_op11_β:
                                                                                        jmp   n977_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n976_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n978_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n977_op11_α:
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
                                                                                        je    proc_one$2F1_ω
                                                                                        jmp   proc_one$2F1_ω
n977_op11_β:
                                                                                        jmp   proc_one$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n978_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx990_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx990_21
.Lx990_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx990_21:
                        mov              edi, 13
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx990_1
                        lea              rcx, [rip + .Lx990_3]
                        lea              rdx, [rip + .Lx990_4]
                                                                                        jmp   rax
.Lx990_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx990_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx990_2
.Lx990_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx990_2
.Lx990_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx990_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx990_2
.Lx990_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx990_2
.Lx990_1:
                        call             rt_faildescr@PLT
.Lx990_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n977_op11_α
                                                                                        jmp   n979_suspend_α
n978_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx990_0:
                        .quad            .Lx990_0_s
.Lx990_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n979_suspend_α:
                        lea              rax, [rip + n979_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_one$2F1_γ
n979_suspend_β:
                                                                                        jmp   n978_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_one$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_one$2F1_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_one$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_one$2F1_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_one$2F1_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_make_dcg$2F0_α
proc_make_dcg$2F0_α:
                        .global          proc_make_dcg$2F0_α
                        .global          proc_make_dcg$2F0_β
                        .global          proc_make_dcg$2F0_γ
                        .global          proc_make_dcg$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_make_dcg$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n993_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx997_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx997_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx997_101
.Lx997_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx997_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_make_dcg$2F0_ω
                                                                                        jmp   n994_move_label_α
n993_op11_β:
                                                                                        jmp   proc_make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n994_move_label_α:
                        lea              rax, [rip + n995_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_make_dcg$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n995_op11_α:
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
                                                                                        je    proc_make_dcg$2F0_ω
                                                                                        jmp   proc_make_dcg$2F0_ω
n995_op11_β:
                                                                                        jmp   proc_make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n996_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n996_disjunction_β:
                                                                                        jmp   proc_make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_β:
                                                                                        jmp   n996_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx1003_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx1003_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_make_dcg$2F0_α_body
.Lx1003_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1003_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_6$2F0_α
proc_pj_dir_6$2F0_α:
                        .global          proc_pj_dir_6$2F0_α
                        .global          proc_pj_dir_6$2F0_β
                        .global          proc_pj_dir_6$2F0_γ
                        .global          proc_pj_dir_6$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n1007_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1004_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1009_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1009_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1009_101
.Lx1009_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1009_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   n1005_lit_string_α
n1004_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1005_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1010_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1006_call_proc_staged_α
.Lx1010_0:
                        .quad            .Lx1010_0_s
.Lx1010_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n1006_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1012_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1012_21
.Lx1012_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx1012_21:
                        mov              rdi, qword ptr [rip + .Lx1012_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1012_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1012_3]
                        lea              rdx, [rip + .Lx1012_4]
                                                                                        jmp   rax
.Lx1012_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1012_2
.Lx1012_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1012_2
.Lx1012_1:
                        call             rt_faildescr@PLT
.Lx1012_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1008_op11_α
                                                                                        jmp   n1007_suspend_α
n1006_call_proc_staged_β:
                                                                                        jmp   n1008_op11_α
.Lx1012_0:
                        .quad            .Lx1012_0_s
.Lx1012_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1007_suspend_α:
                        lea              rax, [rip + n1007_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_6$2F0_γ
n1007_suspend_β:
                                                                                        jmp   n1006_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1008_op11_α:
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
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   proc_pj_dir_6$2F0_ω
n1008_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_6$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n1022_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1016_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1023_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1023_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1023_101
.Lx1023_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1023_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n1017_lit_string_α
n1016_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1017_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1018_lit_integer_α
.Lx1024_0:
                        .quad            .Lx1024_0_s
.Lx1024_0_s:
                        .string          "run"
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx1025_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1019_op11_α
.Lx1025_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1019_op11_α:
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
                                                                                        je    n1021_op11_α
                                                                                        jmp   n1020_call_proc_staged_α
n1019_op11_β:
                                                                                        jmp   n1021_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1020_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1028_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1028_21
.Lx1028_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1028_21:
                        mov              rdi, qword ptr [rip + .Lx1028_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1028_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1028_3]
                        lea              rdx, [rip + .Lx1028_4]
                                                                                        jmp   rax
.Lx1028_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1028_2
.Lx1028_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1028_2
.Lx1028_1:
                        call             rt_faildescr@PLT
.Lx1028_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1021_op11_α
                                                                                        jmp   n1022_suspend_α
n1020_call_proc_staged_β:
                                                                                        jmp   n1021_op11_α
.Lx1028_0:
                        .quad            .Lx1028_0_s
.Lx1028_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n1021_op11_α:
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
n1021_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1022_suspend_α:
                        lea              rax, [rip + n1022_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n1022_suspend_β:
                                                                                        jmp   n1020_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_bar$2F0_α
proc_bar$2F0_α:
                        .global          proc_bar$2F0_α
                        .global          proc_bar$2F0_β
                        .global          proc_bar$2F0_γ
                        .global          proc_bar$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_bar$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1032_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1036_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1036_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1036_101
.Lx1036_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1036_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_bar$2F0_ω
                                                                                        jmp   n1033_move_label_α
n1032_op11_β:
                                                                                        jmp   proc_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1033_move_label_α:
                        lea              rax, [rip + n1034_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_bar$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n1034_op11_α:
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
                                                                                        je    proc_bar$2F0_ω
                                                                                        jmp   proc_bar$2F0_ω
n1034_op11_β:
                                                                                        jmp   proc_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1035_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n1035_disjunction_β:
                                                                                        jmp   proc_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_β:
                                                                                        jmp   n1035_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx1042_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx1042_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_bar$2F0_α_body
.Lx1042_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1042_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n1062_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n1043_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1063_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1063_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1063_101
.Lx1063_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1063_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n1044_lit_string_α
n1043_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1044_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1045_lit_string_α
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n1045_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1046_lit_string_α
.Lx1065_0:
                        .quad            .Lx1065_0_s
.Lx1065_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx1066_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1047_lit_string_α
.Lx1066_0:
                        .quad            .Lx1066_0_s
.Lx1066_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1047_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1067_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1048_lit_string_α
.Lx1067_0:
                        .quad            .Lx1067_0_s
.Lx1067_0_s:
                        .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n1048_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1049_op11_α
.Lx1068_0:
                        .quad            .Lx1068_0_s
.Lx1068_0_s:
                        .string          "term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1049_op11_α:
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
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n1050_lit_integer_α
n1049_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1051_op11_α
.Lx1070_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1051_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n1052_lit_string_α
n1051_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1052_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx1072_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1053_lit_string_α
.Lx1072_0:
                        .quad            .Lx1072_0_s
.Lx1072_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1053_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1054_lit_string_α
.Lx1073_0:
                        .quad            .Lx1073_0_s
.Lx1073_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1054_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1055_lit_string_α
.Lx1074_0:
                        .quad            .Lx1074_0_s
.Lx1074_0_s:
                        .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n1055_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx1075_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1056_op11_α
.Lx1075_0:
                        .quad            .Lx1075_0_s
.Lx1075_0_s:
                        .string          "goal_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1056_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n1057_lit_integer_α
n1056_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1057_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1058_op11_α
.Lx1077_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1058_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n1059_op11_α
n1058_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1059_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n1061_op11_α
                                                                                        jmp   n1060_call_proc_staged_α
n1059_op11_β:
                                                                                        jmp   n1061_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1081_20
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1081_21
.Lx1081_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx1081_21:
                        mov              rdi, qword ptr [rip + .Lx1081_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1081_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1081_3]
                        lea              rdx, [rip + .Lx1081_4]
                                                                                        jmp   rax
.Lx1081_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1081_2
.Lx1081_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1081_2
.Lx1081_1:
                        call             rt_faildescr@PLT
.Lx1081_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1061_op11_α
                                                                                        jmp   n1062_suspend_α
n1060_call_proc_staged_β:
                                                                                        jmp   n1061_op11_α
.Lx1081_0:
                        .quad            .Lx1081_0_s
.Lx1081_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n1061_op11_α:
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
n1061_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1062_suspend_α:
                        lea              rax, [rip + n1062_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n1062_suspend_β:
                                                                                        jmp   n1060_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
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
                        lea              rax, [rip + n1096_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n1085_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1097_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1097_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1097_101
.Lx1097_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1097_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n1086_lit_string_α
n1085_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1086_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1098_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1087_lit_string_α
.Lx1098_0:
                        .quad            .Lx1098_0_s
.Lx1098_0_s:
                        .string          "test_expand"
#-----------------------------------------------------------------------------------------------------------------------
n1087_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx1099_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1088_lit_string_α
.Lx1099_0:
                        .quad            .Lx1099_0_s
.Lx1099_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1088_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1089_lit_string_α
.Lx1100_0:
                        .quad            .Lx1100_0_s
.Lx1100_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1089_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1090_lit_integer_α
.Lx1101_0:
                        .quad            .Lx1101_0_s
.Lx1101_0_s:
                        .string          "test_expand"
#-----------------------------------------------------------------------------------------------------------------------
n1090_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1102_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1091_op11_α
.Lx1102_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1091_op11_α:
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
                                                                                        jmp   n1092_lit_string_α
n1091_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1092_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1093_op11_α
.Lx1104_0:
                        .quad            .Lx1104_0_s
.Lx1104_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1093_op11_α:
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
                                                                                        je    n1095_op11_α
                                                                                        jmp   n1094_call_proc_staged_α
n1093_op11_β:
                                                                                        jmp   n1095_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1094_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1107_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1107_21
.Lx1107_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1107_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1107_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1107_23
.Lx1107_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx1107_23:
                        mov              rdi, qword ptr [rip + .Lx1107_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1107_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1107_3]
                        lea              rdx, [rip + .Lx1107_4]
                                                                                        jmp   rax
.Lx1107_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1107_2
.Lx1107_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1107_2
.Lx1107_1:
                        call             rt_faildescr@PLT
.Lx1107_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1095_op11_α
                                                                                        jmp   n1096_suspend_α
n1094_call_proc_staged_β:
                                                                                        jmp   n1095_op11_α
.Lx1107_0:
                        .quad            .Lx1107_0_s
.Lx1107_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n1095_op11_α:
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
n1095_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1096_suspend_α:
                        lea              rax, [rip + n1096_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n1096_suspend_β:
                                                                                        jmp   n1094_call_proc_staged_β
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
                        .globl           proc_g_c$2F0_α
proc_g_c$2F0_α:
                        .global          proc_g_c$2F0_α
                        .global          proc_g_c$2F0_β
                        .global          proc_g_c$2F0_γ
                        .global          proc_g_c$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_c$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1111_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1115_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1115_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1115_101
.Lx1115_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1115_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_c$2F0_ω
                                                                                        jmp   n1112_move_label_α
n1111_op11_β:
                                                                                        jmp   proc_g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1112_move_label_α:
                        lea              rax, [rip + n1113_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_g_c$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n1113_op11_α:
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
                                                                                        je    proc_g_c$2F0_ω
                                                                                        jmp   proc_g_c$2F0_ω
n1113_op11_β:
                                                                                        jmp   proc_g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1114_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n1114_disjunction_β:
                                                                                        jmp   proc_g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_β:
                                                                                        jmp   n1114_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx1121_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx1121_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_g_c$2F0_α_body
.Lx1121_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1121_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        lea              rax, [rip + n1125_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1122_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1127_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1127_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1127_101
.Lx1127_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1127_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n1123_lit_string_α
n1122_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1123_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1124_call_proc_staged_α
.Lx1128_0:
                        .quad            .Lx1128_0_s
.Lx1128_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n1124_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1130_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1130_21
.Lx1130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx1130_21:
                        mov              rdi, qword ptr [rip + .Lx1130_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1130_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1130_3]
                        lea              rdx, [rip + .Lx1130_4]
                                                                                        jmp   rax
.Lx1130_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1130_2
.Lx1130_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1130_2
.Lx1130_1:
                        call             rt_faildescr@PLT
.Lx1130_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1126_op11_α
                                                                                        jmp   n1125_suspend_α
n1124_call_proc_staged_β:
                                                                                        jmp   n1126_op11_α
.Lx1130_0:
                        .quad            .Lx1130_0_s
.Lx1130_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1125_suspend_α:
                        lea              rax, [rip + n1125_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n1125_suspend_β:
                                                                                        jmp   n1124_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1126_op11_α:
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
n1126_op11_β:
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
                        lea              rax, [rip + n1141_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n1134_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1142_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1142_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1142_101
.Lx1142_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1142_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n1135_lit_string_α
n1134_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1135_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx1143_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1136_lit_string_α
.Lx1143_0:
                        .quad            .Lx1143_0_s
.Lx1143_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1136_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1137_lit_integer_α
.Lx1144_0:
                        .quad            .Lx1144_0_s
.Lx1144_0_s:
                        .string          "goal_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1137_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1138_op11_α
.Lx1145_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1138_op11_α:
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
                                                                                        je    n1140_op11_α
                                                                                        jmp   n1139_call_proc_staged_α
n1138_op11_β:
                                                                                        jmp   n1140_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1139_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1148_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1148_21
.Lx1148_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx1148_21:
                        mov              rdi, qword ptr [rip + .Lx1148_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1148_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1148_3]
                        lea              rdx, [rip + .Lx1148_4]
                                                                                        jmp   rax
.Lx1148_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1148_2
.Lx1148_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1148_2
.Lx1148_1:
                        call             rt_faildescr@PLT
.Lx1148_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1140_op11_α
                                                                                        jmp   n1141_suspend_α
n1139_call_proc_staged_β:
                                                                                        jmp   n1140_op11_α
.Lx1148_0:
                        .quad            .Lx1148_0_s
.Lx1148_0_s:
                        .string          "discontiguous/1"
#-----------------------------------------------------------------------------------------------------------------------
n1140_op11_α:
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
n1140_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1141_suspend_α:
                        lea              rax, [rip + n1141_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n1141_suspend_β:
                                                                                        jmp   n1139_call_proc_staged_β
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
                        lea              rax, [rip + n1158_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1152_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1159_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1159_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1159_101
.Lx1159_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1159_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n1153_lit_string_α
n1152_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1153_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1160_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1154_lit_string_α
.Lx1160_0:
                        .quad            .Lx1160_0_s
.Lx1160_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1154_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1155_op11_α
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1155_op11_α:
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
                                                                                        je    n1157_op11_α
                                                                                        jmp   n1156_call_proc_staged_α
n1155_op11_β:
                                                                                        jmp   n1157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1156_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1164_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1164_21
.Lx1164_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1164_21:
                        mov              rdi, qword ptr [rip + .Lx1164_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1164_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1164_3]
                        lea              rdx, [rip + .Lx1164_4]
                                                                                        jmp   rax
.Lx1164_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1164_2
.Lx1164_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1164_2
.Lx1164_1:
                        call             rt_faildescr@PLT
.Lx1164_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1157_op11_α
                                                                                        jmp   n1158_suspend_α
n1156_call_proc_staged_β:
                                                                                        jmp   n1157_op11_α
.Lx1164_0:
                        .quad            .Lx1164_0_s
.Lx1164_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1157_op11_α:
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
n1157_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1158_suspend_α:
                        lea              rax, [rip + n1158_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n1158_suspend_β:
                                                                                        jmp   n1156_call_proc_staged_β
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
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "true/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_true$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_true$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_test$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "clause/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_clause$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "current_predicate/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_current_predicate$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3088
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "run/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_run$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "e_not/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_e_not$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "test_expand/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_test_expand$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "goal_expansion/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_goal_expansion$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1040
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 4672
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "ssu_body/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_ssu_body$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_ssu_body$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "term_expansion/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_term_expansion$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 624
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "$disj0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_$disj0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "test_foo_bar/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_test_foo_bar$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "g_b/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_g_b$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_g_b$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          ":/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_$3A$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_$3A$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "a2b/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_a2b$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_a2b$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          ",/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_$2C$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_$2C$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "one/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_one$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "make_dcg/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_make_dcg$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_make_dcg$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "pj_dir_6/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_pj_dir_6$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname23:      .string          "bar/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname23]
                        lea              rsi, [rip + proc_bar$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname23]
                        lea              rsi, [rip + proc_bar$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname24:      .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname24]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname24]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname24]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname24]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname24]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname25:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname25]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname25]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname25]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname25]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname25]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname26:      .string          "g_c/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname26]
                        lea              rsi, [rip + proc_g_c$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname26]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname26]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname26]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname26]
                        lea              rsi, [rip + proc_g_c$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname27:      .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname27]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname27]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname27]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname27]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname27]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname28:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname28]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname28]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname28]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname28]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname28]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname29:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname29]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname29]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname29]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname29]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname29]
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
n1168_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx1170_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n1169_call_proc_staged_α
.Lx1170_0:
                        .quad            .Lx1170_0_s
.Lx1170_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n1169_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1172_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1172_21
.Lx1172_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx1172_21:
                        mov              rdi, qword ptr [rip + .Lx1172_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1172_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1172_3]
                        lea              rdx, [rip + .Lx1172_4]
                                                                                        jmp   rax
.Lx1172_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1172_2
.Lx1172_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1172_2
.Lx1172_1:
                        call             rt_faildescr@PLT
.Lx1172_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n1169_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1172_0:
                        .quad            .Lx1172_0_s
.Lx1172_0_s:
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
