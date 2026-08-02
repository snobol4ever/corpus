                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_true$2F0_α
proc_true$2F0_α:
proc_true$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx4_101
.Lx4_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx4_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx4_240
                        add              rsp, 32
                                                                                        jmp   proc_true$2F0_ω
.Lx4_240:
                                                                                        jmp   n1_move_label_α
n0_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_move_label_α:
                        lea              rax, [rip + n3_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_true$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n2_disjunction_β:
                                                                                        jmp   proc_true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_true$2F0_ω
                                                                                        jmp   proc_true$2F0_ω
n3_call_builtin_prolog_β:
                                                                                        jmp   proc_true$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_true$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx10_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx10_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_true$2F0_α_body
.Lx10_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx10_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
proc_test$2F1_α_body:
                        lea              rax, [rip + n16_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx18_101
.Lx18_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx18_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx18_240
                        add              rsp, 32
                                                                                        jmp   proc_test$2F1_ω
.Lx18_240:
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        add              rsp, 32
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
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 25
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n14_call_builtin_prolog_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "goal_expansion_local_pred"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx22_240
                        add              rsp, 32
                                                                                        jmp   n17_call_builtin_prolog_α
.Lx22_240:
                                                                                        jmp   n15_call_proc_staged_α
n14_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 14                                        # idx
                        mov              esi, 0                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx24_240
                        add              rsp, 32
                                                                                        jmp   n17_call_builtin_prolog_α
.Lx24_240:
                                                                                        jmp   n16_suspend_α
n15_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "test_foo_bar/0"
#-----------------------------------------------------------------------------------------------------------------------
n16_suspend_α:
                        lea              rax, [rip + n16_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 32
                                                                                        jmp   proc_test$2F1_γ
n16_suspend_β:
                                                                                        jmp   n15_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   proc_test$2F1_ω
n17_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_clause$2F2_α
proc_clause$2F2_α:
proc_clause$2F2_α_body:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        lea              rdi, [rip + .Lbynamegenfn14]                   # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 96]                                # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx36_240
                        add              rsp, 32
                                                                                        jmp   proc_clause$2F2_ω
.Lx36_240:
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
                        add              rsp, 32
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_predicate$2F1_α
proc_current_predicate$2F1_α:
proc_current_predicate$2F1_α_body:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
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
                        lea              rdi, [rip + .Lbynamegenfn17]                   # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        lea              rcx, [rbp + 64]                                # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx44_240
                        add              rsp, 16
                                                                                        jmp   proc_current_predicate$2F1_ω
.Lx44_240:
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
                        add              rsp, 16
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_current_predicate$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
proc_test$2F2_α_body:
                        lea              rax, [rip + n59_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        sub              rsp, 928
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
                        mov              eax, 3
                                                                                        jmp   .Lx146_101
.Lx146_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx146_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx146_240
                        add              rsp, 928
                                                                                        jmp   proc_test$2F2_ω
.Lx146_240:
                                                                                        jmp   n48_var_ref_α
n47_call_builtin_prolog_β:
                        add              rsp, 928
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
                        mov              qword ptr [rbp + 3008], 2                      # result
                        mov              dword ptr [rbp + 3012], 8
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n50_call_builtin_prolog_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "cond_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n60_call_builtin_prolog_α
                                                                                        jmp   n51_var_ref_α
n50_call_builtin_prolog_β:
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 2928], 2                      # result
                        mov              dword ptr [rbp + 2932], 4
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n53_call_builtin_prolog_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2880]
                        mov              rsi, qword ptr [rip + .Lx154_2]
                                                                                        jmp   .Lx154_3
.Lx154_2:
                        .quad            .Lx154_2_s
.Lx154_2_s:
                        .string          "true"
.Lx154_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 104
                                                                                        je    n60_call_builtin_prolog_α
                                                                                        jmp   n54_lit_string_α
n53_call_builtin_prolog_β:
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 2848], 2                      # result
                        mov              dword ptr [rbp + 2852], 2
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n55_lit_string_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 2736], 2                      # result
                        mov              dword ptr [rbp + 2740], 4
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n56_lit_integer_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "no_a"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 3                      # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n57_call_builtin_prolog_α
.Lx157_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx158_240
                        add              rsp, 928
                                                                                        jmp   n59_suspend_α
.Lx158_240:
                                                                                        jmp   n58_call_proc_staged_α
n57_call_builtin_prolog_β:
                        add              rsp, 928
                                                                                        jmp   n59_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_proc_staged_α:
                        mov              qword ptr [rbp + 2704], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_20
                        mov              rax, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx160_21
.Lx160_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2768]                    # v
                        mov              rdx, qword ptr [rbp + 2776]                    # v
                        call             rt_arg_stage@PLT
.Lx160_21:
                        mov              edi, 3                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx160_1
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4]
                                                                                        jmp   rax
.Lx160_3:
                        mov              qword ptr [rbp + 2712], rsp
                        mov              rax, qword ptr [rbp + 2704]
                        test             rax, rax
                                                                                        jne   .Lx160_5
                        mov              qword ptr [rbp + 2704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_4:
                        mov              rax, qword ptr [rbp + 2704]
                        test             rax, rax
                                                                                        jne   .Lx160_6
                        mov              qword ptr [rbp + 2704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_1:
                        call             rt_faildescr@PLT
.Lx160_2:
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx160_240
                        add              rsp, 928
                                                                                        jmp   n59_suspend_α
.Lx160_240:
                                                                                        jmp   n60_call_builtin_prolog_α
n58_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2712]
                                                                                        jmp   qword ptr [rsp]
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "current_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n59_suspend_α:
                        lea              rax, [rip + n59_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n59_suspend_β:
                                                                                        jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx163_240
                        add              rsp, 928
                                                                                        jmp   proc_test$2F2_ω
.Lx163_240:
                                                                                        jmp   n61_var_ref_α
n60_call_builtin_prolog_β:
                        add              rsp, 928
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 2608], 2                      # result
                        mov              dword ptr [rbp + 2612], 8
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n63_call_builtin_prolog_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2560]
                        mov              rsi, qword ptr [rip + .Lx167_2]
                                                                                        jmp   .Lx167_3
.Lx167_2:
                        .quad            .Lx167_2_s
.Lx167_2_s:
                        .string          "make_dcg"
.Lx167_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx167_240
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
.Lx167_240:
                                                                                        jmp   n64_var_ref_α
n63_call_builtin_prolog_β:
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 2528], 2                      # result
                        mov              dword ptr [rbp + 2532], 2
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n66_var_ref_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 2432], 2                      # result
                        mov              dword ptr [rbp + 2436], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n68_var_ref_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n69_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx178_240
                        add              rsp, 928
                                                                                        jmp   proc_test$2F2_ω
.Lx178_240:
                                                                                        jmp   n71_call_builtin_prolog_α
n70_call_builtin_prolog_β:
                        add              rsp, 928
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx179_240
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
.Lx179_240:
                                                                                        jmp   n72_call_builtin_prolog_α
n71_call_builtin_prolog_β:
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
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
.Lx180_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx180_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx180_41
                        cmp              esi, 1
                                                                                        jne   .Lx180_55
                        mov              r8, rax
                                                                                        jmp   .Lx180_40
.Lx180_55:
                        cmp              esi, 2
                                                                                        jne   .Lx180_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx180_41
                        mov              r8, rax
                                                                                        jmp   .Lx180_40
.Lx180_56:
                        cmp              eax, 72
                                                                                        jne   .Lx180_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx180_41
                        cmp              rax, r8
                                                                                        je    .Lx180_41
                        mov              r8, rax
                                                                                        jmp   .Lx180_40
.Lx180_41:
                        lea              r9, [rbp + 2272]
.Lx180_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx180_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx180_43
                        cmp              esi, 1
                                                                                        jne   .Lx180_57
                        mov              r9, rax
                                                                                        jmp   .Lx180_42
.Lx180_57:
                        cmp              esi, 2
                                                                                        jne   .Lx180_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx180_43
                        mov              r9, rax
                                                                                        jmp   .Lx180_42
.Lx180_58:
                        cmp              eax, 72
                                                                                        jne   .Lx180_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx180_43
                        cmp              rax, r9
                                                                                        je    .Lx180_43
                        mov              r9, rax
                                                                                        jmp   .Lx180_42
.Lx180_43:
                        cmp              r8, r9
                                                                                        je    .Lx180_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx180_44
                        cmp              eax, 104
                                                                                        je    .Lx180_44
                        cmp              eax, 72
                                                                                        jne   .Lx180_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx180_44
                                                                                        jmp   .Lx180_45
.Lx180_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx180_53
                        cmp              eax, 104
                                                                                        je    .Lx180_53
                        cmp              eax, 72
                                                                                        jne   .Lx180_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx180_53
                                                                                        jmp   .Lx180_46
.Lx180_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx180_53
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
                                                                                        jmp   .Lx180_51
.Lx180_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx180_47
                        cmp              eax, 104
                                                                                        je    .Lx180_47
                        cmp              eax, 72
                                                                                        jne   .Lx180_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx180_47
                                                                                        jmp   .Lx180_48
.Lx180_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx180_53
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
                                                                                        jmp   .Lx180_51
.Lx180_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx180_49
                        cmp              edx, 80
                                                                                        je    .Lx180_53
                                                                                        jmp   .Lx180_52
.Lx180_49:
                        cmp              edx, 80
                                                                                        je    .Lx180_52
                        cmp              ecx, 5
                                                                                        je    .Lx180_53
                        cmp              edx, 5
                                                                                        je    .Lx180_53
                        cmp              ecx, 3
                                                                                        jne   .Lx180_50
                        cmp              edx, 3
                                                                                        jne   .Lx180_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx180_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx180_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx180_51
                                                                                        jmp   .Lx180_52
.Lx180_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx180_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx180_53
.Lx180_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx180_54
.Lx180_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx180_54
.Lx180_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx180_54:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx180_240
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
.Lx180_240:
                                                                                        jmp   n73_lit_string_α
n72_call_builtin_prolog_β:
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 2208], 2                      # result
                        mov              dword ptr [rbp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n74_var_ref_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx186_240
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
.Lx186_240:
                                                                                        jmp   n77_var_ref_α
n76_call_builtin_prolog_β:
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n78_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_proc_staged_α:
                        mov              qword ptr [rbp + 2064], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx190_20
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx190_21
.Lx190_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2128]                    # v
                        mov              rdx, qword ptr [rbp + 2136]                    # v
                        call             rt_arg_stage@PLT
.Lx190_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx190_22
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx190_23
.Lx190_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2224]                    # v
                        mov              rdx, qword ptr [rbp + 2232]                    # v
                        call             rt_arg_stage@PLT
.Lx190_23:
                        mov              edi, 2                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx190_1
                        lea              rcx, [rip + .Lx190_3]
                        lea              rdx, [rip + .Lx190_4]
                                                                                        jmp   rax
.Lx190_3:
                        mov              qword ptr [rbp + 2072], rsp
                        mov              rax, qword ptr [rbp + 2064]
                        test             rax, rax
                                                                                        jne   .Lx190_5
                        mov              qword ptr [rbp + 2064], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx190_2
.Lx190_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx190_2
.Lx190_4:
                        mov              rax, qword ptr [rbp + 2064]
                        test             rax, rax
                                                                                        jne   .Lx190_6
                        mov              qword ptr [rbp + 2064], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx190_2
.Lx190_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx190_2
.Lx190_1:
                        call             rt_faildescr@PLT
.Lx190_2:
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx190_240
                        add              rsp, 928
                                                                                        jmp   n80_call_builtin_prolog_α
.Lx190_240:
                                                                                        jmp   n79_suspend_α
n78_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2072]
                                                                                        jmp   qword ptr [rsp]
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n79_suspend_α:
                        lea              rax, [rip + n79_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 928
                                                                                        jmp   proc_test$2F2_γ
n79_suspend_β:
                                                                                        jmp   n78_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n81_var_ref_α
n80_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 1968], 2                      # result
                        mov              dword ptr [rbp + 1972], 22
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n83_call_builtin_prolog_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "chained_term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              rsi, qword ptr [rip + .Lx197_2]
                                                                                        jmp   .Lx197_3
.Lx197_2:
                        .quad            .Lx197_2_s
.Lx197_2_s:
                        .string          "chained_term_expansion"
.Lx197_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    n94_call_builtin_prolog_α
                                                                                        jmp   n84_var_ref_α
n83_call_builtin_prolog_β:
                                                                                        jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1888], 2                      # result
                        mov              dword ptr [rbp + 1892], 2
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n86_var_ref_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 1792], 2                      # result
                        mov              dword ptr [rbp + 1796], 4
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n88_call_builtin_prolog_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n94_call_builtin_prolog_α
                                                                                        jmp   n89_call_builtin_prolog_α
n88_call_builtin_prolog_β:
                                                                                        jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
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
.Lx205_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx205_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_41
                        cmp              esi, 1
                                                                                        jne   .Lx205_55
                        mov              r8, rax
                                                                                        jmp   .Lx205_40
.Lx205_55:
                        cmp              esi, 2
                                                                                        jne   .Lx205_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_41
                        mov              r8, rax
                                                                                        jmp   .Lx205_40
.Lx205_56:
                        cmp              eax, 72
                                                                                        jne   .Lx205_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_41
                        cmp              rax, r8
                                                                                        je    .Lx205_41
                        mov              r8, rax
                                                                                        jmp   .Lx205_40
.Lx205_41:
                        lea              r9, [rbp + 1744]
.Lx205_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx205_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_43
                        cmp              esi, 1
                                                                                        jne   .Lx205_57
                        mov              r9, rax
                                                                                        jmp   .Lx205_42
.Lx205_57:
                        cmp              esi, 2
                                                                                        jne   .Lx205_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx205_43
                        mov              r9, rax
                                                                                        jmp   .Lx205_42
.Lx205_58:
                        cmp              eax, 72
                                                                                        jne   .Lx205_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_43
                        cmp              rax, r9
                                                                                        je    .Lx205_43
                        mov              r9, rax
                                                                                        jmp   .Lx205_42
.Lx205_43:
                        cmp              r8, r9
                                                                                        je    .Lx205_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_44
                        cmp              eax, 104
                                                                                        je    .Lx205_44
                        cmp              eax, 72
                                                                                        jne   .Lx205_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx205_44
                                                                                        jmp   .Lx205_45
.Lx205_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_53
                        cmp              eax, 104
                                                                                        je    .Lx205_53
                        cmp              eax, 72
                                                                                        jne   .Lx205_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx205_53
                                                                                        jmp   .Lx205_46
.Lx205_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx205_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx205_53
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
                                                                                        jmp   .Lx205_51
.Lx205_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_47
                        cmp              eax, 104
                                                                                        je    .Lx205_47
                        cmp              eax, 72
                                                                                        jne   .Lx205_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx205_47
                                                                                        jmp   .Lx205_48
.Lx205_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx205_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx205_53
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
                                                                                        jmp   .Lx205_51
.Lx205_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx205_49
                        cmp              edx, 80
                                                                                        je    .Lx205_53
                                                                                        jmp   .Lx205_52
.Lx205_49:
                        cmp              edx, 80
                                                                                        je    .Lx205_52
                        cmp              ecx, 5
                                                                                        je    .Lx205_53
                        cmp              edx, 5
                                                                                        je    .Lx205_53
                        cmp              ecx, 3
                                                                                        jne   .Lx205_50
                        cmp              edx, 3
                                                                                        jne   .Lx205_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx205_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx205_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx205_51
                                                                                        jmp   .Lx205_52
.Lx205_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx205_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx205_53
.Lx205_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx205_54
.Lx205_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx205_54
.Lx205_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx205_54:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n94_call_builtin_prolog_α
                                                                                        jmp   n90_lit_string_α
n89_call_builtin_prolog_β:
                                                                                        jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], 7
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n91_var_ref_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n92_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α:
                        mov              qword ptr [rbp + 1648], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_20
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx210_21
.Lx210_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1680]                    # v
                        mov              rdx, qword ptr [rbp + 1688]                    # v
                        call             rt_arg_stage@PLT
.Lx210_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_22
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx210_23
.Lx210_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1696]                    # v
                        mov              rdx, qword ptr [rbp + 1704]                    # v
                        call             rt_arg_stage@PLT
.Lx210_23:
                        mov              edi, 2                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx210_1
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4]
                                                                                        jmp   rax
.Lx210_3:
                        mov              qword ptr [rbp + 1656], rsp
                        mov              rax, qword ptr [rbp + 1648]
                        test             rax, rax
                                                                                        jne   .Lx210_5
                        mov              qword ptr [rbp + 1648], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_4:
                        mov              rax, qword ptr [rbp + 1648]
                        test             rax, rax
                                                                                        jne   .Lx210_6
                        mov              qword ptr [rbp + 1648], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_1:
                        call             rt_faildescr@PLT
.Lx210_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 104
                                                                                        je    n94_call_builtin_prolog_α
                                                                                        jmp   n93_suspend_α
n92_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1656]
                                                                                        jmp   qword ptr [rsp]
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n93_suspend_α:
                        lea              rax, [rip + n93_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n93_suspend_β:
                                                                                        jmp   n92_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n95_var_ref_α
n94_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 8
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n97_call_builtin_prolog_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "meta_arg"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              rsi, qword ptr [rip + .Lx217_2]
                                                                                        jmp   .Lx217_3
.Lx217_2:
                        .quad            .Lx217_2_s
.Lx217_2_s:
                        .string          "meta_arg"
.Lx217_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n106_call_builtin_prolog_α
                                                                                        jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                                                                                        jmp   n106_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n100_lit_string_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 1376], 2                      # result
                        mov              dword ptr [rbp + 1380], 4
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n101_lit_string_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 2
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n102_call_builtin_prolog_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n106_call_builtin_prolog_α
                                                                                        jmp   n103_call_builtin_prolog_α
n102_call_builtin_prolog_β:
                                                                                        jmp   n106_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
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
.Lx224_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx224_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx224_41
                        cmp              esi, 1
                                                                                        jne   .Lx224_55
                        mov              r8, rax
                                                                                        jmp   .Lx224_40
.Lx224_55:
                        cmp              esi, 2
                                                                                        jne   .Lx224_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx224_41
                        mov              r8, rax
                                                                                        jmp   .Lx224_40
.Lx224_56:
                        cmp              eax, 72
                                                                                        jne   .Lx224_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx224_41
                        cmp              rax, r8
                                                                                        je    .Lx224_41
                        mov              r8, rax
                                                                                        jmp   .Lx224_40
.Lx224_41:
                        lea              r9, [rbp + 1328]
.Lx224_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx224_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx224_43
                        cmp              esi, 1
                                                                                        jne   .Lx224_57
                        mov              r9, rax
                                                                                        jmp   .Lx224_42
.Lx224_57:
                        cmp              esi, 2
                                                                                        jne   .Lx224_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx224_43
                        mov              r9, rax
                                                                                        jmp   .Lx224_42
.Lx224_58:
                        cmp              eax, 72
                                                                                        jne   .Lx224_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx224_43
                        cmp              rax, r9
                                                                                        je    .Lx224_43
                        mov              r9, rax
                                                                                        jmp   .Lx224_42
.Lx224_43:
                        cmp              r8, r9
                                                                                        je    .Lx224_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx224_44
                        cmp              eax, 104
                                                                                        je    .Lx224_44
                        cmp              eax, 72
                                                                                        jne   .Lx224_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx224_44
                                                                                        jmp   .Lx224_45
.Lx224_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx224_53
                        cmp              eax, 104
                                                                                        je    .Lx224_53
                        cmp              eax, 72
                                                                                        jne   .Lx224_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx224_53
                                                                                        jmp   .Lx224_46
.Lx224_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx224_53
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
                                                                                        jmp   .Lx224_51
.Lx224_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx224_47
                        cmp              eax, 104
                                                                                        je    .Lx224_47
                        cmp              eax, 72
                                                                                        jne   .Lx224_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx224_47
                                                                                        jmp   .Lx224_48
.Lx224_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx224_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx224_53
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
                                                                                        jmp   .Lx224_51
.Lx224_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx224_49
                        cmp              edx, 80
                                                                                        je    .Lx224_53
                                                                                        jmp   .Lx224_52
.Lx224_49:
                        cmp              edx, 80
                                                                                        je    .Lx224_52
                        cmp              ecx, 5
                                                                                        je    .Lx224_53
                        cmp              edx, 5
                                                                                        je    .Lx224_53
                        cmp              ecx, 3
                                                                                        jne   .Lx224_50
                        cmp              edx, 3
                                                                                        jne   .Lx224_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx224_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx224_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx224_51
                                                                                        jmp   .Lx224_52
.Lx224_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx224_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx224_53
.Lx224_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx224_54
.Lx224_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx224_54
.Lx224_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx224_54:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n106_call_builtin_prolog_α
                                                                                        jmp   n104_call_proc_staged_α
n103_call_builtin_prolog_β:
                                                                                        jmp   n106_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              edi, 7                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx226_1
                        lea              rcx, [rip + .Lx226_3]
                        lea              rdx, [rip + .Lx226_4]
                                                                                        jmp   rax
.Lx226_3:
                        mov              qword ptr [rbp + 1272], rsp
                        mov              rax, qword ptr [rbp + 1264]
                        test             rax, rax
                                                                                        jne   .Lx226_5
                        mov              qword ptr [rbp + 1264], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx226_2
.Lx226_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx226_2
.Lx226_4:
                        mov              rax, qword ptr [rbp + 1264]
                        test             rax, rax
                                                                                        jne   .Lx226_6
                        mov              qword ptr [rbp + 1264], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx226_2
.Lx226_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx226_2
.Lx226_1:
                        call             rt_faildescr@PLT
.Lx226_2:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n106_call_builtin_prolog_α
                                                                                        jmp   n105_suspend_α
n104_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1272]
                                                                                        jmp   qword ptr [rsp]
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "e_not/0"
#-----------------------------------------------------------------------------------------------------------------------
n105_suspend_α:
                        lea              rax, [rip + n105_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n105_suspend_β:
                                                                                        jmp   n104_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n107_var_ref_α
n106_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 11
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n109_call_builtin_prolog_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "expand_once"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              rsi, qword ptr [rip + .Lx233_2]
                                                                                        jmp   .Lx233_3
.Lx233_2:
                        .quad            .Lx233_2_s
.Lx233_2_s:
                        .string          "expand_once"
.Lx233_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 104
                                                                                        je    n127_call_builtin_prolog_α
                                                                                        jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                                        jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 3
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n112_lit_string_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 2
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n113_var_ref_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n115_lit_integer_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n116_lit_string_α
.Lx241_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n117_lit_integer_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 736], 3                       # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n118_lit_string_α
.Lx243_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 2
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n119_call_builtin_prolog_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n120_call_builtin_prolog_α
n119_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n121_call_builtin_prolog_α
n120_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n122_call_builtin_prolog_α
n121_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n127_call_builtin_prolog_α
                                                                                        jmp   n123_call_builtin_prolog_α
n122_call_builtin_prolog_β:
                                                                                        jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
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
.Lx249_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx249_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        cmp              esi, 1
                                                                                        jne   .Lx249_55
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_55:
                        cmp              esi, 2
                                                                                        jne   .Lx249_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_56:
                        cmp              eax, 72
                                                                                        jne   .Lx249_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        cmp              rax, r8
                                                                                        je    .Lx249_41
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_41:
                        lea              r9, [rbp + 672]
.Lx249_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx249_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        cmp              esi, 1
                                                                                        jne   .Lx249_57
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_57:
                        cmp              esi, 2
                                                                                        jne   .Lx249_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_58:
                        cmp              eax, 72
                                                                                        jne   .Lx249_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        cmp              rax, r9
                                                                                        je    .Lx249_43
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_43:
                        cmp              r8, r9
                                                                                        je    .Lx249_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_44
                        cmp              eax, 104
                                                                                        je    .Lx249_44
                        cmp              eax, 72
                                                                                        jne   .Lx249_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx249_44
                                                                                        jmp   .Lx249_45
.Lx249_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_53
                        cmp              eax, 104
                                                                                        je    .Lx249_53
                        cmp              eax, 72
                                                                                        jne   .Lx249_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx249_53
                                                                                        jmp   .Lx249_46
.Lx249_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx249_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx249_53
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
                                                                                        jmp   .Lx249_51
.Lx249_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_47
                        cmp              eax, 104
                                                                                        je    .Lx249_47
                        cmp              eax, 72
                                                                                        jne   .Lx249_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx249_47
                                                                                        jmp   .Lx249_48
.Lx249_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx249_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx249_53
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
                                                                                        jmp   .Lx249_51
.Lx249_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx249_49
                        cmp              edx, 80
                                                                                        je    .Lx249_53
                                                                                        jmp   .Lx249_52
.Lx249_49:
                        cmp              edx, 80
                                                                                        je    .Lx249_52
                        cmp              ecx, 5
                                                                                        je    .Lx249_53
                        cmp              edx, 5
                                                                                        je    .Lx249_53
                        cmp              ecx, 3
                                                                                        jne   .Lx249_50
                        cmp              edx, 3
                                                                                        jne   .Lx249_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx249_51
                                                                                        jmp   .Lx249_52
.Lx249_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx249_53
.Lx249_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx249_54
.Lx249_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx249_54
.Lx249_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx249_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n127_call_builtin_prolog_α
                                                                                        jmp   n124_var_ref_α
n123_call_builtin_prolog_β:
                                                                                        jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n125_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx253_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx253_21
.Lx253_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 624]                     # v
                        mov              rdx, qword ptr [rbp + 632]                     # v
                        call             rt_arg_stage@PLT
.Lx253_21:
                        mov              edi, 19                                        # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx253_1
                        lea              rcx, [rip + .Lx253_3]
                        lea              rdx, [rip + .Lx253_4]
                                                                                        jmp   rax
.Lx253_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx253_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx253_2
.Lx253_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx253_2
.Lx253_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx253_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx253_2
.Lx253_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx253_2
.Lx253_1:
                        call             rt_faildescr@PLT
.Lx253_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n127_call_builtin_prolog_α
                                                                                        jmp   n126_suspend_α
n125_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "one/1"
#-----------------------------------------------------------------------------------------------------------------------
n126_suspend_α:
                        lea              rax, [rip + n126_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n126_suspend_β:
                                                                                        jmp   n125_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 8
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n130_call_builtin_prolog_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              rsi, qword ptr [rip + .Lx260_2]
                                                                                        jmp   .Lx260_3
.Lx260_2:
                        .quad            .Lx260_2_s
.Lx260_2_s:
                        .string          "ssu_body"
.Lx260_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_prolog_α
                                                                                        jmp   n131_var_ref_α
n130_call_builtin_prolog_β:
                                                                                        jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 4
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n133_call_builtin_prolog_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx264_2]
                                                                                        jmp   .Lx264_3
.Lx264_2:
                        .quad            .Lx264_2_s
.Lx264_2_s:
                        .string          "true"
.Lx264_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_prolog_α
                                                                                        jmp   n134_call_proc_staged_α
n133_call_builtin_prolog_β:
                                                                                        jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        call             proc_ssu_body$2F0_dcα
                                                                                        jmp   .Lx266_2
.Lx266_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n136_call_builtin_prolog_α
                                                                                        jmp   n135_suspend_α
n134_call_proc_staged_β:
                                                                                        jmp   n136_call_builtin_prolog_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "ssu_body/0"
#-----------------------------------------------------------------------------------------------------------------------
n135_suspend_α:
                        lea              rax, [rip + n135_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n135_suspend_β:
                                                                                        jmp   n134_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 9
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n139_call_builtin_prolog_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              rsi, qword ptr [rip + .Lx273_2]
                                                                                        jmp   .Lx273_3
.Lx273_2:
                        .quad            .Lx273_2_s
.Lx273_2_s:
                        .string          "ssu_guard"
.Lx273_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n145_call_builtin_prolog_α
                                                                                        jmp   n140_var_ref_α
n139_call_builtin_prolog_β:
                                                                                        jmp   n145_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 4
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n142_call_builtin_prolog_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx277_2]
                                                                                        jmp   .Lx277_3
.Lx277_2:
                        .quad            .Lx277_2_s
.Lx277_2_s:
                        .string          "true"
.Lx277_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n145_call_builtin_prolog_α
                                                                                        jmp   n143_call_proc_staged_α
n142_call_builtin_prolog_β:
                                                                                        jmp   n145_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx279_0]                # name
                        mov              esi, 0                                         # nargs
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
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n145_call_builtin_prolog_α
                                                                                        jmp   n144_suspend_α
n143_call_proc_staged_β:
                                                                                        jmp   n145_call_builtin_prolog_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "ssu_guard/0"
#-----------------------------------------------------------------------------------------------------------------------
n144_suspend_α:
                        lea              rax, [rip + n144_suspend_β]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n144_suspend_β:
                                                                                        jmp   n143_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n145_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 3024]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$call$2F1_α
proc_$call$2F1_α:
proc_$call$2F1_α_body:
                        lea              rax, [rip + n285_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
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
                        lea              rdi, [rip + .Lbynamegenfn119]                  # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        lea              rcx, [rbp + 64]                                # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx288_240
                        add              rsp, 16
                                                                                        jmp   proc_$call$2F1_ω
.Lx288_240:
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
                        add              rsp, 16
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_run$2F1_α
proc_run$2F1_α:
proc_run$2F1_α_body:
                        lea              rax, [rip + n297_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_prolog_α:
                        sub              rsp, 96
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
                        mov              eax, 3
                                                                                        jmp   .Lx299_101
.Lx299_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx299_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx299_240
                        add              rsp, 96
                                                                                        jmp   proc_run$2F1_ω
.Lx299_240:
                                                                                        jmp   n292_var_ref_α
n291_call_builtin_prolog_β:
                        add              rsp, 96
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
                                                                                        jmp   n294_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n294_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx304_44
                        cmp              eax, 72
                                                                                        jne   .Lx304_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx304_44
                                                                                        jmp   .Lx304_45
.Lx304_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx304_53
                        cmp              eax, 104
                                                                                        je    .Lx304_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx304_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx304_49
                        cmp              edx, 80
                                                                                        je    .Lx304_53
                                                                                        jmp   .Lx304_52
.Lx304_49:
                        cmp              edx, 80
                                                                                        je    .Lx304_52
                        cmp              ecx, 5
                                                                                        je    .Lx304_53
                        cmp              edx, 5
                                                                                        je    .Lx304_53
                        cmp              ecx, 3
                                                                                        jne   .Lx304_50
                        cmp              edx, 3
                                                                                        jne   .Lx304_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx304_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx304_54
.Lx304_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx304_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx304_240
                        add              rsp, 96
                                                                                        jmp   n298_call_builtin_prolog_α
.Lx304_240:
                                                                                        jmp   n295_var_ref_α
n294_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n298_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n296_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n296_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx308_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx308_21
.Lx308_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx308_21:
                        mov              edi, 5                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx308_1
                        lea              rcx, [rip + .Lx308_3]
                        lea              rdx, [rip + .Lx308_4]
                                                                                        jmp   rax
.Lx308_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx308_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx308_2
.Lx308_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx308_2
.Lx308_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx308_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx308_2
.Lx308_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx308_2
.Lx308_1:
                        call             rt_faildescr@PLT
.Lx308_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx308_240
                        add              rsp, 96
                                                                                        jmp   n298_call_builtin_prolog_α
.Lx308_240:
                                                                                        jmp   n297_suspend_α
n296_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n297_suspend_α:
                        lea              rax, [rip + n297_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_run$2F1_γ
n297_suspend_β:
                                                                                        jmp   n296_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_run$2F1_ω
                                                                                        jmp   proc_run$2F1_ω
n298_call_builtin_prolog_β:
                                                                                        jmp   proc_run$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F1_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_e_not$2F0_α
proc_e_not$2F0_α:
proc_e_not$2F0_α_body:
                        lea              rax, [rip + n314_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_prolog_α:
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
                        mov              eax, 3
                                                                                        jmp   .Lx316_101
.Lx316_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx316_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_e_not$2F0_ω
                                                                                        jmp   n313_call_proc_staged_α
n312_call_builtin_prolog_β:
                                                                                        jmp   proc_e_not$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n313_call_proc_staged_α:
                        call             proc_g_b$2F0_dcα
                                                                                        jmp   .Lx318_2
.Lx318_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n314_suspend_α
                                                                                        jmp   n315_call_builtin_prolog_α
n313_call_proc_staged_β:
                                                                                        jmp   n314_suspend_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "g_b/0"
#-----------------------------------------------------------------------------------------------------------------------
n314_suspend_α:
                        lea              rax, [rip + n314_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_e_not$2F0_γ
n314_suspend_β:
                                                                                        jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_e_not$2F0_ω
                                                                                        jmp   proc_e_not$2F0_ω
n315_call_builtin_prolog_β:
                                                                                        jmp   proc_e_not$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_e_not$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_e_not$2F0_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_e_not$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_e_not$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_expand$2F0_α
proc_test_expand$2F0_α:
proc_test_expand$2F0_α_body:
                        lea              rax, [rip + n328_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
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
                        mov              eax, 3
                                                                                        jmp   .Lx330_101
.Lx330_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx330_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx330_240
                        add              rsp, 128
                                                                                        jmp   proc_test_expand$2F0_ω
.Lx330_240:
                                                                                        jmp   n323_lit_string_α
n322_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   proc_test_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n324_lit_string_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 6
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n325_lit_string_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n326_call_builtin_prolog_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx334_240
                        add              rsp, 128
                                                                                        jmp   n329_call_builtin_prolog_α
.Lx334_240:
                                                                                        jmp   n327_call_proc_staged_α
n326_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   n329_call_builtin_prolog_α
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx336_21:
                        mov              rdi, qword ptr [rip + .Lx336_0]                # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx336_240
                        add              rsp, 128
                                                                                        jmp   n329_call_builtin_prolog_α
.Lx336_240:
                                                                                        jmp   n328_suspend_α
n327_call_proc_staged_β:
                                                                                        jmp   n329_call_builtin_prolog_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n328_suspend_α:
                        lea              rax, [rip + n328_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 128
                                                                                        jmp   proc_test_expand$2F0_γ
n328_suspend_β:
                                                                                        jmp   n327_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_test_expand$2F0_ω
                                                                                        jmp   proc_test_expand$2F0_ω
n329_call_builtin_prolog_β:
                                                                                        jmp   proc_test_expand$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test_expand$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_expand$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_expand$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test_expand$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_goal_expansion$2F2_α
proc_goal_expansion$2F2_α:
proc_goal_expansion$2F2_α_body:
                        lea              rax, [rip + n347_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
                        sub              rsp, 112
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
                        mov              eax, 3
                                                                                        jmp   .Lx374_101
.Lx374_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx374_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx374_240
                        add              rsp, 112
                                                                                        jmp   proc_goal_expansion$2F2_ω
.Lx374_240:
                                                                                        jmp   n341_var_ref_α
n340_call_builtin_prolog_β:
                        add              rsp, 112
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
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 3
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n343_call_builtin_prolog_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "g_b"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n348_call_builtin_prolog_α
                                                                                        jmp   n344_var_ref_α
n343_call_builtin_prolog_β:
                                                                                        jmp   n348_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n345_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:
                        mov              qword ptr [rbp + 912], 2                       # result
                        mov              dword ptr [rbp + 916], 3
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n346_call_builtin_prolog_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "g_c"
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              rsi, qword ptr [rip + .Lx382_2]
                                                                                        jmp   .Lx382_3
.Lx382_2:
                        .quad            .Lx382_2_s
.Lx382_2_s:
                        .string          "g_c"
.Lx382_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n348_call_builtin_prolog_α
                                                                                        jmp   n347_suspend_α
n346_call_builtin_prolog_β:
                                                                                        jmp   n348_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n347_suspend_α:
                        lea              rax, [rip + n347_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_goal_expansion$2F2_γ
n347_suspend_β:
                                                                                        jmp   n348_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    proc_goal_expansion$2F2_ω
                                                                                        jmp   n349_var_ref_α
n348_call_builtin_prolog_β:
                                                                                        jmp   proc_goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n350_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 3
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n351_call_builtin_prolog_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n356_call_builtin_prolog_α
                                                                                        jmp   n352_var_ref_α
n351_call_builtin_prolog_β:
                                                                                        jmp   n356_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n353_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 3
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n354_call_builtin_prolog_α
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              rsi, qword ptr [rip + .Lx393_2]
                                                                                        jmp   .Lx393_3
.Lx393_2:
                        .quad            .Lx393_2_s
.Lx393_2_s:
                        .string          "bar"
.Lx393_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n356_call_builtin_prolog_α
                                                                                        jmp   n355_suspend_α
n354_call_builtin_prolog_β:
                                                                                        jmp   n356_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n355_suspend_α:
                        lea              rax, [rip + n355_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_goal_expansion$2F2_γ
n355_suspend_β:
                                                                                        jmp   n356_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    proc_goal_expansion$2F2_ω
                                                                                        jmp   n357_var_ref_α
n356_call_builtin_prolog_β:
                                                                                        jmp   proc_goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n358_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n359_lit_string_α
.Lx399_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 7
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n360_call_builtin_prolog_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "onetime"
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n373_call_builtin_prolog_α
                                                                                        jmp   n361_var_ref_α
n360_call_builtin_prolog_β:
                                                                                        jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 7
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n363_var_ref_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "onetime"
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n364_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n373_call_builtin_prolog_α
                                                                                        jmp   n365_call_builtin_prolog_α
n364_call_builtin_prolog_β:
                                                                                        jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_prolog_α:
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
.Lx408_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx408_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        cmp              esi, 1
                                                                                        jne   .Lx408_55
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_55:
                        cmp              esi, 2
                                                                                        jne   .Lx408_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_56:
                        cmp              eax, 72
                                                                                        jne   .Lx408_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        cmp              rax, r8
                                                                                        je    .Lx408_41
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_41:
                        lea              r9, [rbp + 352]
.Lx408_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx408_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        cmp              esi, 1
                                                                                        jne   .Lx408_57
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_57:
                        cmp              esi, 2
                                                                                        jne   .Lx408_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_58:
                        cmp              eax, 72
                                                                                        jne   .Lx408_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        cmp              rax, r9
                                                                                        je    .Lx408_43
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_43:
                        cmp              r8, r9
                                                                                        je    .Lx408_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_44
                        cmp              eax, 104
                                                                                        je    .Lx408_44
                        cmp              eax, 72
                                                                                        jne   .Lx408_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx408_44
                                                                                        jmp   .Lx408_45
.Lx408_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_53
                        cmp              eax, 104
                                                                                        je    .Lx408_53
                        cmp              eax, 72
                                                                                        jne   .Lx408_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx408_53
                                                                                        jmp   .Lx408_46
.Lx408_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx408_53
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
                                                                                        jmp   .Lx408_51
.Lx408_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_47
                        cmp              eax, 104
                                                                                        je    .Lx408_47
                        cmp              eax, 72
                                                                                        jne   .Lx408_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx408_47
                                                                                        jmp   .Lx408_48
.Lx408_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx408_53
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
                                                                                        jmp   .Lx408_51
.Lx408_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx408_49
                        cmp              edx, 80
                                                                                        je    .Lx408_53
                                                                                        jmp   .Lx408_52
.Lx408_49:
                        cmp              edx, 80
                                                                                        je    .Lx408_52
                        cmp              ecx, 5
                                                                                        je    .Lx408_53
                        cmp              edx, 5
                                                                                        je    .Lx408_53
                        cmp              ecx, 3
                                                                                        jne   .Lx408_50
                        cmp              edx, 3
                                                                                        jne   .Lx408_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx408_51
                                                                                        jmp   .Lx408_52
.Lx408_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx408_53
.Lx408_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx408_54
.Lx408_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx408_54
.Lx408_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx408_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n373_call_builtin_prolog_α
                                                                                        jmp   n366_var_ref_α
n365_call_builtin_prolog_β:
                                                                                        jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n367_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n368_var_ref_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "->"
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n369_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 4
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n370_call_builtin_prolog_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n373_call_builtin_prolog_α
                                                                                        jmp   n371_call_builtin_prolog_α
n370_call_builtin_prolog_β:
                                                                                        jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_prolog_α:
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
.Lx416_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx416_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_41
                        cmp              esi, 1
                                                                                        jne   .Lx416_55
                        mov              r8, rax
                                                                                        jmp   .Lx416_40
.Lx416_55:
                        cmp              esi, 2
                                                                                        jne   .Lx416_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_41
                        mov              r8, rax
                                                                                        jmp   .Lx416_40
.Lx416_56:
                        cmp              eax, 72
                                                                                        jne   .Lx416_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_41
                        cmp              rax, r8
                                                                                        je    .Lx416_41
                        mov              r8, rax
                                                                                        jmp   .Lx416_40
.Lx416_41:
                        lea              r9, [rbp + 160]
.Lx416_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx416_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_43
                        cmp              esi, 1
                                                                                        jne   .Lx416_57
                        mov              r9, rax
                                                                                        jmp   .Lx416_42
.Lx416_57:
                        cmp              esi, 2
                                                                                        jne   .Lx416_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_43
                        mov              r9, rax
                                                                                        jmp   .Lx416_42
.Lx416_58:
                        cmp              eax, 72
                                                                                        jne   .Lx416_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_43
                        cmp              rax, r9
                                                                                        je    .Lx416_43
                        mov              r9, rax
                                                                                        jmp   .Lx416_42
.Lx416_43:
                        cmp              r8, r9
                                                                                        je    .Lx416_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_44
                        cmp              eax, 104
                                                                                        je    .Lx416_44
                        cmp              eax, 72
                                                                                        jne   .Lx416_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx416_44
                                                                                        jmp   .Lx416_45
.Lx416_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_53
                        cmp              eax, 104
                                                                                        je    .Lx416_53
                        cmp              eax, 72
                                                                                        jne   .Lx416_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx416_53
                                                                                        jmp   .Lx416_46
.Lx416_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx416_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx416_53
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
                                                                                        jmp   .Lx416_51
.Lx416_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_47
                        cmp              eax, 104
                                                                                        je    .Lx416_47
                        cmp              eax, 72
                                                                                        jne   .Lx416_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx416_47
                                                                                        jmp   .Lx416_48
.Lx416_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx416_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx416_53
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
                                                                                        jmp   .Lx416_51
.Lx416_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx416_49
                        cmp              edx, 80
                                                                                        je    .Lx416_53
                                                                                        jmp   .Lx416_52
.Lx416_49:
                        cmp              edx, 80
                                                                                        je    .Lx416_52
                        cmp              ecx, 5
                                                                                        je    .Lx416_53
                        cmp              edx, 5
                                                                                        je    .Lx416_53
                        cmp              ecx, 3
                                                                                        jne   .Lx416_50
                        cmp              edx, 3
                                                                                        jne   .Lx416_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx416_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx416_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx416_51
                                                                                        jmp   .Lx416_52
.Lx416_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx416_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx416_53
.Lx416_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx416_54
.Lx416_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx416_54
.Lx416_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx416_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n373_call_builtin_prolog_α
                                                                                        jmp   n372_suspend_α
n371_call_builtin_prolog_β:
                                                                                        jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n372_suspend_α:
                        lea              rax, [rip + n372_suspend_β]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_goal_expansion$2F2_γ
n372_suspend_β:
                                                                                        jmp   n373_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_goal_expansion$2F2_ω
                                                                                        jmp   proc_goal_expansion$2F2_ω
n373_call_builtin_prolog_β:
                                                                                        jmp   proc_goal_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_goal_expansion$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_goal_expansion$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1008]
#-----------------------------------------------------------------------------------------------------------------------
proc_goal_expansion$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_goal_expansion$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        sub              rsp, 544
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
                        mov              eax, 3
                                                                                        jmp   .Lx574_101
.Lx574_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx574_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx574_240
                        add              rsp, 544
                                                                                        jmp   proc_pj_test$2F4_ω
.Lx574_240:
                                                                                        jmp   n421_var_ref_α
n420_call_builtin_prolog_β:
                        add              rsp, 544
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
                        mov              qword ptr [rbp + 4592], 2                      # result
                        mov              dword ptr [rbp + 4596], 6
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n423_call_builtin_prolog_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n424_var_ref_α
n423_call_builtin_prolog_β:
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n425_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:
                        mov              qword ptr [rbp + 4512], 2                      # result
                        mov              dword ptr [rbp + 4516], 8
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n426_call_builtin_prolog_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "cond_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4472], rax
                        lea              rdi, [rbp + 4464]
                        mov              rsi, qword ptr [rip + .Lx582_2]
                                                                                        jmp   .Lx582_3
.Lx582_2:
                        .quad            .Lx582_2_s
.Lx582_2_s:
                        .string          "cond_dcg"
.Lx582_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n427_var_ref_α
n426_call_builtin_prolog_β:
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n428_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:
                        mov              qword ptr [rbp + 4432], 2                      # result
                        mov              dword ptr [rbp + 4436], 4
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n429_call_builtin_prolog_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              rsi, qword ptr [rip + .Lx586_2]
                                                                                        jmp   .Lx586_3
.Lx586_2:
                        .quad            .Lx586_2_s
.Lx586_2_s:
                        .string          "true"
.Lx586_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n430_var_ref_α
n429_call_builtin_prolog_β:
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n431_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:
                        mov              qword ptr [rbp + 4352], 2                      # result
                        mov              dword ptr [rbp + 4356], 2
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n432_lit_string_α
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "\\+"
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:
                        mov              qword ptr [rbp + 4272], 2                      # result
                        mov              dword ptr [rbp + 4276], 17
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n433_lit_string_α
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          "current_predicate"
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:
                        mov              qword ptr [rbp + 4192], 2                      # result
                        mov              dword ptr [rbp + 4196], 2
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n434_lit_string_α
.Lx591_0:
                        .quad            .Lx591_0_s
.Lx591_0_s:
                        .string          "//"
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_string_α:
                        mov              qword ptr [rbp + 4080], 2                      # result
                        mov              dword ptr [rbp + 4084], 4
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n435_lit_integer_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "no_a"
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:
                        mov              qword ptr [rbp + 4096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n436_call_builtin_prolog_α
.Lx593_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx594_240
                        add              rsp, 544
                                                                                        jmp   proc_pj_test$2F4_ω
.Lx594_240:
                                                                                        jmp   n437_call_builtin_prolog_α
n436_call_builtin_prolog_β:
                        add              rsp, 544
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx595_240
                        add              rsp, 544
                                                                                        jmp   proc_pj_test$2F4_ω
.Lx595_240:
                                                                                        jmp   n438_call_builtin_prolog_α
n437_call_builtin_prolog_β:
                        add              rsp, 544
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n439_call_builtin_prolog_α
n438_call_builtin_prolog_β:
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
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
.Lx597_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx597_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx597_41
                        cmp              esi, 1
                                                                                        jne   .Lx597_55
                        mov              r8, rax
                                                                                        jmp   .Lx597_40
.Lx597_55:
                        cmp              esi, 2
                                                                                        jne   .Lx597_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx597_41
                        mov              r8, rax
                                                                                        jmp   .Lx597_40
.Lx597_56:
                        cmp              eax, 72
                                                                                        jne   .Lx597_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx597_41
                        cmp              rax, r8
                                                                                        je    .Lx597_41
                        mov              r8, rax
                                                                                        jmp   .Lx597_40
.Lx597_41:
                        lea              r9, [rbp + 4048]
.Lx597_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx597_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx597_43
                        cmp              esi, 1
                                                                                        jne   .Lx597_57
                        mov              r9, rax
                                                                                        jmp   .Lx597_42
.Lx597_57:
                        cmp              esi, 2
                                                                                        jne   .Lx597_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx597_43
                        mov              r9, rax
                                                                                        jmp   .Lx597_42
.Lx597_58:
                        cmp              eax, 72
                                                                                        jne   .Lx597_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx597_43
                        cmp              rax, r9
                                                                                        je    .Lx597_43
                        mov              r9, rax
                                                                                        jmp   .Lx597_42
.Lx597_43:
                        cmp              r8, r9
                                                                                        je    .Lx597_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx597_44
                        cmp              eax, 104
                                                                                        je    .Lx597_44
                        cmp              eax, 72
                                                                                        jne   .Lx597_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx597_44
                                                                                        jmp   .Lx597_45
.Lx597_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx597_53
                        cmp              eax, 104
                                                                                        je    .Lx597_53
                        cmp              eax, 72
                                                                                        jne   .Lx597_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx597_53
                                                                                        jmp   .Lx597_46
.Lx597_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx597_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx597_53
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
                                                                                        jmp   .Lx597_51
.Lx597_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx597_47
                        cmp              eax, 104
                                                                                        je    .Lx597_47
                        cmp              eax, 72
                                                                                        jne   .Lx597_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx597_47
                                                                                        jmp   .Lx597_48
.Lx597_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx597_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx597_53
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
                                                                                        jmp   .Lx597_51
.Lx597_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx597_49
                        cmp              edx, 80
                                                                                        je    .Lx597_53
                                                                                        jmp   .Lx597_52
.Lx597_49:
                        cmp              edx, 80
                                                                                        je    .Lx597_52
                        cmp              ecx, 5
                                                                                        je    .Lx597_53
                        cmp              edx, 5
                                                                                        je    .Lx597_53
                        cmp              ecx, 3
                                                                                        jne   .Lx597_50
                        cmp              edx, 3
                                                                                        jne   .Lx597_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx597_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx597_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx597_51
                                                                                        jmp   .Lx597_52
.Lx597_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx597_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx597_53
.Lx597_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx597_54
.Lx597_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx597_54
.Lx597_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx597_54:
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n440_suspend_α
n439_call_builtin_prolog_β:
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_suspend_α:
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 544
                                                                                        jmp   proc_pj_test$2F4_γ
n440_suspend_β:
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3992], rax
                        lea              rdi, [rbp + 3984]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n442_var_ref_α
n441_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n443_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:
                        mov              qword ptr [rbp + 3952], 2                      # result
                        mov              dword ptr [rbp + 3956], 6
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n444_call_builtin_prolog_α
.Lx603_0:
                        .quad            .Lx603_0_s
.Lx603_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3904]
                        mov              rsi, qword ptr [rip + .Lx604_2]
                                                                                        jmp   .Lx604_3
.Lx604_2:
                        .quad            .Lx604_2_s
.Lx604_2_s:
                        .string          "expand"
.Lx604_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              eax, 104
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n445_var_ref_α
n444_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:
                        mov              qword ptr [rbp + 3872], 2                      # result
                        mov              dword ptr [rbp + 3876], 8
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n447_call_builtin_prolog_α
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                        lea              rdi, [rbp + 3824]
                        mov              rsi, qword ptr [rip + .Lx608_2]
                                                                                        jmp   .Lx608_3
.Lx608_2:
                        .quad            .Lx608_2_s
.Lx608_2_s:
                        .string          "make_dcg"
.Lx608_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              eax, 104
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n448_var_ref_α
n447_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   n449_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:
                        mov              qword ptr [rbp + 3792], 2                      # result
                        mov              dword ptr [rbp + 3796], 2
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n450_var_ref_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n451_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:
                        mov              qword ptr [rbp + 3696], 2                      # result
                        mov              dword ptr [rbp + 3700], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n452_var_ref_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4640]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4656]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n455_call_builtin_prolog_α
n454_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n456_call_builtin_prolog_α
n455_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_prolog_α:
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
.Lx621_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx621_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx621_41
                        cmp              esi, 1
                                                                                        jne   .Lx621_55
                        mov              r8, rax
                                                                                        jmp   .Lx621_40
.Lx621_55:
                        cmp              esi, 2
                                                                                        jne   .Lx621_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx621_41
                        mov              r8, rax
                                                                                        jmp   .Lx621_40
.Lx621_56:
                        cmp              eax, 72
                                                                                        jne   .Lx621_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx621_41
                        cmp              rax, r8
                                                                                        je    .Lx621_41
                        mov              r8, rax
                                                                                        jmp   .Lx621_40
.Lx621_41:
                        lea              r9, [rbp + 3536]
.Lx621_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx621_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx621_43
                        cmp              esi, 1
                                                                                        jne   .Lx621_57
                        mov              r9, rax
                                                                                        jmp   .Lx621_42
.Lx621_57:
                        cmp              esi, 2
                                                                                        jne   .Lx621_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx621_43
                        mov              r9, rax
                                                                                        jmp   .Lx621_42
.Lx621_58:
                        cmp              eax, 72
                                                                                        jne   .Lx621_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx621_43
                        cmp              rax, r9
                                                                                        je    .Lx621_43
                        mov              r9, rax
                                                                                        jmp   .Lx621_42
.Lx621_43:
                        cmp              r8, r9
                                                                                        je    .Lx621_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx621_44
                        cmp              eax, 104
                                                                                        je    .Lx621_44
                        cmp              eax, 72
                                                                                        jne   .Lx621_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx621_44
                                                                                        jmp   .Lx621_45
.Lx621_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx621_53
                        cmp              eax, 104
                                                                                        je    .Lx621_53
                        cmp              eax, 72
                                                                                        jne   .Lx621_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx621_53
                                                                                        jmp   .Lx621_46
.Lx621_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx621_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx621_53
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
                                                                                        jmp   .Lx621_51
.Lx621_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx621_47
                        cmp              eax, 104
                                                                                        je    .Lx621_47
                        cmp              eax, 72
                                                                                        jne   .Lx621_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx621_47
                                                                                        jmp   .Lx621_48
.Lx621_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx621_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx621_53
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
                                                                                        jmp   .Lx621_51
.Lx621_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx621_49
                        cmp              edx, 80
                                                                                        je    .Lx621_53
                                                                                        jmp   .Lx621_52
.Lx621_49:
                        cmp              edx, 80
                                                                                        je    .Lx621_52
                        cmp              ecx, 5
                                                                                        je    .Lx621_53
                        cmp              edx, 5
                                                                                        je    .Lx621_53
                        cmp              ecx, 3
                                                                                        jne   .Lx621_50
                        cmp              edx, 3
                                                                                        jne   .Lx621_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx621_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx621_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx621_51
                                                                                        jmp   .Lx621_52
.Lx621_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx621_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx621_53
.Lx621_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx621_54
.Lx621_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx621_54
.Lx621_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx621_54:
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              eax, 104
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n457_var_ref_α
n456_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n458_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:
                        mov              qword ptr [rbp + 3488], 2                      # result
                        mov              dword ptr [rbp + 3492], 6
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n459_lit_string_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:
                        mov              qword ptr [rbp + 3376], 2                      # result
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n460_var_ref_α
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4640]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   n461_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n461_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4656]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n462_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n462_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n463_var_ref_α
n462_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n465_call_builtin_prolog_α
n464_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n465_call_builtin_prolog_α:
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
.Lx634_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx634_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_41
                        cmp              esi, 1
                                                                                        jne   .Lx634_55
                        mov              r8, rax
                                                                                        jmp   .Lx634_40
.Lx634_55:
                        cmp              esi, 2
                                                                                        jne   .Lx634_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx634_41
                        mov              r8, rax
                                                                                        jmp   .Lx634_40
.Lx634_56:
                        cmp              eax, 72
                                                                                        jne   .Lx634_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_41
                        cmp              rax, r8
                                                                                        je    .Lx634_41
                        mov              r8, rax
                                                                                        jmp   .Lx634_40
.Lx634_41:
                        lea              r9, [rbp + 3232]
.Lx634_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx634_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_43
                        cmp              esi, 1
                                                                                        jne   .Lx634_57
                        mov              r9, rax
                                                                                        jmp   .Lx634_42
.Lx634_57:
                        cmp              esi, 2
                                                                                        jne   .Lx634_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx634_43
                        mov              r9, rax
                                                                                        jmp   .Lx634_42
.Lx634_58:
                        cmp              eax, 72
                                                                                        jne   .Lx634_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_43
                        cmp              rax, r9
                                                                                        je    .Lx634_43
                        mov              r9, rax
                                                                                        jmp   .Lx634_42
.Lx634_43:
                        cmp              r8, r9
                                                                                        je    .Lx634_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx634_44
                        cmp              eax, 104
                                                                                        je    .Lx634_44
                        cmp              eax, 72
                                                                                        jne   .Lx634_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx634_44
                                                                                        jmp   .Lx634_45
.Lx634_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx634_53
                        cmp              eax, 104
                                                                                        je    .Lx634_53
                        cmp              eax, 72
                                                                                        jne   .Lx634_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx634_53
                                                                                        jmp   .Lx634_46
.Lx634_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx634_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx634_53
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
                                                                                        jmp   .Lx634_51
.Lx634_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx634_47
                        cmp              eax, 104
                                                                                        je    .Lx634_47
                        cmp              eax, 72
                                                                                        jne   .Lx634_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx634_47
                                                                                        jmp   .Lx634_48
.Lx634_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx634_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx634_53
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
                                                                                        jmp   .Lx634_51
.Lx634_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx634_49
                        cmp              edx, 80
                                                                                        je    .Lx634_53
                                                                                        jmp   .Lx634_52
.Lx634_49:
                        cmp              edx, 80
                                                                                        je    .Lx634_52
                        cmp              ecx, 5
                                                                                        je    .Lx634_53
                        cmp              edx, 5
                                                                                        je    .Lx634_53
                        cmp              ecx, 3
                                                                                        jne   .Lx634_50
                        cmp              edx, 3
                                                                                        jne   .Lx634_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx634_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx634_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx634_51
                                                                                        jmp   .Lx634_52
.Lx634_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx634_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx634_53
.Lx634_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx634_54
.Lx634_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx634_54
.Lx634_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx634_54:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 104
                                                                                        je    n467_call_builtin_prolog_α
                                                                                        jmp   n466_suspend_α
n465_call_builtin_prolog_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n466_suspend_α:
                        lea              rax, [rip + n466_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n466_suspend_β:
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3176], rax
                        lea              rdi, [rbp + 3168]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n468_var_ref_α
n467_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n468_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n469_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:
                        mov              qword ptr [rbp + 3136], 2                      # result
                        mov              dword ptr [rbp + 3140], 6
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n470_call_builtin_prolog_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3096], rax
                        lea              rdi, [rbp + 3088]
                        mov              rsi, qword ptr [rip + .Lx641_2]
                                                                                        jmp   .Lx641_3
.Lx641_2:
                        .quad            .Lx641_2_s
.Lx641_2_s:
                        .string          "expand"
.Lx641_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 104
                                                                                        je    n487_call_builtin_prolog_α
                                                                                        jmp   n471_var_ref_α
n470_call_builtin_prolog_β:
                                                                                        jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n472_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:
                        mov              qword ptr [rbp + 3056], 2                      # result
                        mov              dword ptr [rbp + 3060], 22
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n473_call_builtin_prolog_α
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "chained_term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              rsi, qword ptr [rip + .Lx645_2]
                                                                                        jmp   .Lx645_3
.Lx645_2:
                        .quad            .Lx645_2_s
.Lx645_2_s:
                        .string          "chained_term_expansion"
.Lx645_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 104
                                                                                        je    n487_call_builtin_prolog_α
                                                                                        jmp   n474_var_ref_α
n473_call_builtin_prolog_β:
                                                                                        jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n475_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:
                        mov              qword ptr [rbp + 2976], 2                      # result
                        mov              dword ptr [rbp + 2980], 2
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n476_var_ref_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n477_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:
                        mov              qword ptr [rbp + 2880], 2                      # result
                        mov              dword ptr [rbp + 2884], 4
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n478_call_builtin_prolog_α
.Lx651_0:
                        .quad            .Lx651_0_s
.Lx651_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n478_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n487_call_builtin_prolog_α
                                                                                        jmp   n479_call_builtin_prolog_α
n478_call_builtin_prolog_β:
                                                                                        jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_prolog_α:
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
.Lx653_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx653_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx653_41
                        cmp              esi, 1
                                                                                        jne   .Lx653_55
                        mov              r8, rax
                                                                                        jmp   .Lx653_40
.Lx653_55:
                        cmp              esi, 2
                                                                                        jne   .Lx653_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx653_41
                        mov              r8, rax
                                                                                        jmp   .Lx653_40
.Lx653_56:
                        cmp              eax, 72
                                                                                        jne   .Lx653_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx653_41
                        cmp              rax, r8
                                                                                        je    .Lx653_41
                        mov              r8, rax
                                                                                        jmp   .Lx653_40
.Lx653_41:
                        lea              r9, [rbp + 2832]
.Lx653_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx653_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx653_43
                        cmp              esi, 1
                                                                                        jne   .Lx653_57
                        mov              r9, rax
                                                                                        jmp   .Lx653_42
.Lx653_57:
                        cmp              esi, 2
                                                                                        jne   .Lx653_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx653_43
                        mov              r9, rax
                                                                                        jmp   .Lx653_42
.Lx653_58:
                        cmp              eax, 72
                                                                                        jne   .Lx653_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx653_43
                        cmp              rax, r9
                                                                                        je    .Lx653_43
                        mov              r9, rax
                                                                                        jmp   .Lx653_42
.Lx653_43:
                        cmp              r8, r9
                                                                                        je    .Lx653_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx653_44
                        cmp              eax, 104
                                                                                        je    .Lx653_44
                        cmp              eax, 72
                                                                                        jne   .Lx653_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx653_44
                                                                                        jmp   .Lx653_45
.Lx653_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx653_53
                        cmp              eax, 104
                                                                                        je    .Lx653_53
                        cmp              eax, 72
                                                                                        jne   .Lx653_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx653_53
                                                                                        jmp   .Lx653_46
.Lx653_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx653_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx653_53
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
                                                                                        jmp   .Lx653_51
.Lx653_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx653_47
                        cmp              eax, 104
                                                                                        je    .Lx653_47
                        cmp              eax, 72
                                                                                        jne   .Lx653_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx653_47
                                                                                        jmp   .Lx653_48
.Lx653_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx653_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx653_53
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
                                                                                        jmp   .Lx653_51
.Lx653_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx653_49
                        cmp              edx, 80
                                                                                        je    .Lx653_53
                                                                                        jmp   .Lx653_52
.Lx653_49:
                        cmp              edx, 80
                                                                                        je    .Lx653_52
                        cmp              ecx, 5
                                                                                        je    .Lx653_53
                        cmp              edx, 5
                                                                                        je    .Lx653_53
                        cmp              ecx, 3
                                                                                        jne   .Lx653_50
                        cmp              edx, 3
                                                                                        jne   .Lx653_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx653_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx653_51
                                                                                        jmp   .Lx653_52
.Lx653_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx653_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx653_53
.Lx653_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx653_54
.Lx653_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx653_54
.Lx653_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx653_54:
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 104
                                                                                        je    n487_call_builtin_prolog_α
                                                                                        jmp   n480_var_ref_α
n479_call_builtin_prolog_β:
                                                                                        jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n481_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:
                        mov              qword ptr [rbp + 2784], 2                      # result
                        mov              dword ptr [rbp + 2788], 6
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n482_lit_string_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:
                        mov              qword ptr [rbp + 2672], 2                      # result
                        mov              dword ptr [rbp + 2676], 7
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n483_var_ref_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n484_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n487_call_builtin_prolog_α
                                                                                        jmp   n485_call_builtin_prolog_α
n484_call_builtin_prolog_β:
                                                                                        jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_prolog_α:
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
.Lx661_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx661_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        cmp              esi, 1
                                                                                        jne   .Lx661_55
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_55:
                        cmp              esi, 2
                                                                                        jne   .Lx661_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_56:
                        cmp              eax, 72
                                                                                        jne   .Lx661_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        cmp              rax, r8
                                                                                        je    .Lx661_41
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_41:
                        lea              r9, [rbp + 2640]
.Lx661_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx661_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        cmp              esi, 1
                                                                                        jne   .Lx661_57
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_57:
                        cmp              esi, 2
                                                                                        jne   .Lx661_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_58:
                        cmp              eax, 72
                                                                                        jne   .Lx661_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        cmp              rax, r9
                                                                                        je    .Lx661_43
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_43:
                        cmp              r8, r9
                                                                                        je    .Lx661_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_44
                        cmp              eax, 104
                                                                                        je    .Lx661_44
                        cmp              eax, 72
                                                                                        jne   .Lx661_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx661_44
                                                                                        jmp   .Lx661_45
.Lx661_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_53
                        cmp              eax, 104
                                                                                        je    .Lx661_53
                        cmp              eax, 72
                                                                                        jne   .Lx661_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx661_53
                                                                                        jmp   .Lx661_46
.Lx661_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx661_53
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
                                                                                        jmp   .Lx661_51
.Lx661_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_47
                        cmp              eax, 104
                                                                                        je    .Lx661_47
                        cmp              eax, 72
                                                                                        jne   .Lx661_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx661_47
                                                                                        jmp   .Lx661_48
.Lx661_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx661_53
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
                                                                                        jmp   .Lx661_51
.Lx661_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx661_49
                        cmp              edx, 80
                                                                                        je    .Lx661_53
                                                                                        jmp   .Lx661_52
.Lx661_49:
                        cmp              edx, 80
                                                                                        je    .Lx661_52
                        cmp              ecx, 5
                                                                                        je    .Lx661_53
                        cmp              edx, 5
                                                                                        je    .Lx661_53
                        cmp              ecx, 3
                                                                                        jne   .Lx661_50
                        cmp              edx, 3
                                                                                        jne   .Lx661_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx661_51
                                                                                        jmp   .Lx661_52
.Lx661_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx661_53
.Lx661_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx661_54
.Lx661_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx661_54
.Lx661_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx661_54:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 104
                                                                                        je    n487_call_builtin_prolog_α
                                                                                        jmp   n486_suspend_α
n485_call_builtin_prolog_β:
                                                                                        jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n486_suspend_α:
                        lea              rax, [rip + n486_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n486_suspend_β:
                                                                                        jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n488_var_ref_α
n487_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n489_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:
                        mov              qword ptr [rbp + 2544], 2                      # result
                        mov              dword ptr [rbp + 2548], 6
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n490_call_builtin_prolog_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2496]
                        mov              rsi, qword ptr [rip + .Lx668_2]
                                                                                        jmp   .Lx668_3
.Lx668_2:
                        .quad            .Lx668_2_s
.Lx668_2_s:
                        .string          "expand"
.Lx668_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 104
                                                                                        je    n504_call_builtin_prolog_α
                                                                                        jmp   n491_var_ref_α
n490_call_builtin_prolog_β:
                                                                                        jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 2464], 2                      # result
                        mov              dword ptr [rbp + 2468], 8
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n493_call_builtin_prolog_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "meta_arg"
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2416]
                        mov              rsi, qword ptr [rip + .Lx672_2]
                                                                                        jmp   .Lx672_3
.Lx672_2:
                        .quad            .Lx672_2_s
.Lx672_2_s:
                        .string          "meta_arg"
.Lx672_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 104
                                                                                        je    n504_call_builtin_prolog_α
                                                                                        jmp   n494_var_ref_α
n493_call_builtin_prolog_β:
                                                                                        jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:
                        mov              qword ptr [rbp + 2384], 2                      # result
                        mov              dword ptr [rbp + 2388], 1
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n496_lit_string_α
.Lx675_0:
                        .quad            .Lx675_0_s
.Lx675_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:
                        mov              qword ptr [rbp + 2288], 2                      # result
                        mov              dword ptr [rbp + 2292], 4
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n497_lit_string_α
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 2272], 2                      # result
                        mov              dword ptr [rbp + 2276], 2
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n498_call_builtin_prolog_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n498_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n504_call_builtin_prolog_α
                                                                                        jmp   n499_call_builtin_prolog_α
n498_call_builtin_prolog_β:
                                                                                        jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_builtin_prolog_α:
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
.Lx679_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx679_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx679_41
                        cmp              esi, 1
                                                                                        jne   .Lx679_55
                        mov              r8, rax
                                                                                        jmp   .Lx679_40
.Lx679_55:
                        cmp              esi, 2
                                                                                        jne   .Lx679_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx679_41
                        mov              r8, rax
                                                                                        jmp   .Lx679_40
.Lx679_56:
                        cmp              eax, 72
                                                                                        jne   .Lx679_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx679_41
                        cmp              rax, r8
                                                                                        je    .Lx679_41
                        mov              r8, rax
                                                                                        jmp   .Lx679_40
.Lx679_41:
                        lea              r9, [rbp + 2240]
.Lx679_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx679_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx679_43
                        cmp              esi, 1
                                                                                        jne   .Lx679_57
                        mov              r9, rax
                                                                                        jmp   .Lx679_42
.Lx679_57:
                        cmp              esi, 2
                                                                                        jne   .Lx679_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx679_43
                        mov              r9, rax
                                                                                        jmp   .Lx679_42
.Lx679_58:
                        cmp              eax, 72
                                                                                        jne   .Lx679_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx679_43
                        cmp              rax, r9
                                                                                        je    .Lx679_43
                        mov              r9, rax
                                                                                        jmp   .Lx679_42
.Lx679_43:
                        cmp              r8, r9
                                                                                        je    .Lx679_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx679_44
                        cmp              eax, 104
                                                                                        je    .Lx679_44
                        cmp              eax, 72
                                                                                        jne   .Lx679_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx679_44
                                                                                        jmp   .Lx679_45
.Lx679_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx679_53
                        cmp              eax, 104
                                                                                        je    .Lx679_53
                        cmp              eax, 72
                                                                                        jne   .Lx679_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx679_53
                                                                                        jmp   .Lx679_46
.Lx679_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx679_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx679_53
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
                                                                                        jmp   .Lx679_51
.Lx679_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx679_47
                        cmp              eax, 104
                                                                                        je    .Lx679_47
                        cmp              eax, 72
                                                                                        jne   .Lx679_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx679_47
                                                                                        jmp   .Lx679_48
.Lx679_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx679_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx679_53
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
                                                                                        jmp   .Lx679_51
.Lx679_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx679_49
                        cmp              edx, 80
                                                                                        je    .Lx679_53
                                                                                        jmp   .Lx679_52
.Lx679_49:
                        cmp              edx, 80
                                                                                        je    .Lx679_52
                        cmp              ecx, 5
                                                                                        je    .Lx679_53
                        cmp              edx, 5
                                                                                        je    .Lx679_53
                        cmp              ecx, 3
                                                                                        jne   .Lx679_50
                        cmp              edx, 3
                                                                                        jne   .Lx679_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx679_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx679_51
                                                                                        jmp   .Lx679_52
.Lx679_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx679_53
.Lx679_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx679_54
.Lx679_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx679_54
.Lx679_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx679_54:
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 104
                                                                                        je    n504_call_builtin_prolog_α
                                                                                        jmp   n500_var_ref_α
n499_call_builtin_prolog_β:
                                                                                        jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n501_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 2192], 2                      # result
                        mov              dword ptr [rbp + 2196], 5
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n502_call_builtin_prolog_α
.Lx682_0:
                        .quad            .Lx682_0_s
.Lx682_0_s:
                        .string          "e_not"
#-----------------------------------------------------------------------------------------------------------------------
n502_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2144]
                        mov              rsi, qword ptr [rip + .Lx683_2]
                                                                                        jmp   .Lx683_3
.Lx683_2:
                        .quad            .Lx683_2_s
.Lx683_2_s:
                        .string          "e_not"
.Lx683_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n504_call_builtin_prolog_α
                                                                                        jmp   n503_suspend_α
n502_call_builtin_prolog_β:
                                                                                        jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n503_suspend_α:
                        lea              rax, [rip + n503_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n503_suspend_β:
                                                                                        jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n505_var_ref_α
n504_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n506_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 2064], 2                      # result
                        mov              dword ptr [rbp + 2068], 6
                        mov              rax, qword ptr [rip + .Lx689_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n507_call_builtin_prolog_α
.Lx689_0:
                        .quad            .Lx689_0_s
.Lx689_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              rsi, qword ptr [rip + .Lx690_2]
                                                                                        jmp   .Lx690_3
.Lx690_2:
                        .quad            .Lx690_2_s
.Lx690_2_s:
                        .string          "expand"
.Lx690_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 104
                                                                                        je    n518_call_builtin_prolog_α
                                                                                        jmp   n508_var_ref_α
n507_call_builtin_prolog_β:
                                                                                        jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n509_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:
                        mov              qword ptr [rbp + 1984], 2                      # result
                        mov              dword ptr [rbp + 1988], 25
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n510_call_builtin_prolog_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "goal_expansion_local_pred"
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1936]
                        mov              rsi, qword ptr [rip + .Lx694_2]
                                                                                        jmp   .Lx694_3
.Lx694_2:
                        .quad            .Lx694_2_s
.Lx694_2_s:
                        .string          "goal_expansion_local_pred"
.Lx694_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 104
                                                                                        je    n518_call_builtin_prolog_α
                                                                                        jmp   n511_var_ref_α
n510_call_builtin_prolog_β:
                                                                                        jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n512_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:
                        mov              qword ptr [rbp + 1904], 2                      # result
                        mov              dword ptr [rbp + 1908], 2
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n513_call_builtin_prolog_α
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n513_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              rsi, qword ptr [rip + .Lx698_2]
                                                                                        jmp   .Lx698_3
.Lx698_2:
                        .quad            .Lx698_2_s
.Lx698_2_s:
                        .string          "[]"
.Lx698_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 104
                                                                                        je    n518_call_builtin_prolog_α
                                                                                        jmp   n514_var_ref_α
n513_call_builtin_prolog_β:
                                                                                        jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n515_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:
                        mov              qword ptr [rbp + 1824], 2                      # result
                        mov              dword ptr [rbp + 1828], 12
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n516_call_builtin_prolog_α
.Lx701_0:
                        .quad            .Lx701_0_s
.Lx701_0_s:
                        .string          "test_foo_bar"
#-----------------------------------------------------------------------------------------------------------------------
n516_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1776]
                        mov              rsi, qword ptr [rip + .Lx702_2]
                                                                                        jmp   .Lx702_3
.Lx702_2:
                        .quad            .Lx702_2_s
.Lx702_2_s:
                        .string          "test_foo_bar"
.Lx702_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n518_call_builtin_prolog_α
                                                                                        jmp   n517_suspend_α
n516_call_builtin_prolog_β:
                                                                                        jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n517_suspend_α:
                        lea              rax, [rip + n517_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n517_suspend_β:
                                                                                        jmp   n518_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n518_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n519_var_ref_α
n518_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n520_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:
                        mov              qword ptr [rbp + 1696], 2                      # result
                        mov              dword ptr [rbp + 1700], 6
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n521_call_builtin_prolog_α
.Lx708_0:
                        .quad            .Lx708_0_s
.Lx708_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        mov              rsi, qword ptr [rip + .Lx709_2]
                                                                                        jmp   .Lx709_3
.Lx709_2:
                        .quad            .Lx709_2_s
.Lx709_2_s:
                        .string          "expand"
.Lx709_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 104
                                                                                        je    n545_call_builtin_prolog_α
                                                                                        jmp   n522_var_ref_α
n521_call_builtin_prolog_β:
                                                                                        jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n523_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:
                        mov              qword ptr [rbp + 1616], 2                      # result
                        mov              dword ptr [rbp + 1620], 11
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n524_call_builtin_prolog_α
.Lx712_0:
                        .quad            .Lx712_0_s
.Lx712_0_s:
                        .string          "expand_once"
#-----------------------------------------------------------------------------------------------------------------------
n524_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        mov              rsi, qword ptr [rip + .Lx713_2]
                                                                                        jmp   .Lx713_3
.Lx713_2:
                        .quad            .Lx713_2_s
.Lx713_2_s:
                        .string          "expand_once"
.Lx713_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    n545_call_builtin_prolog_α
                                                                                        jmp   n525_var_ref_α
n524_call_builtin_prolog_β:
                                                                                        jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n526_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_string_α:
                        mov              qword ptr [rbp + 1536], 2                      # result
                        mov              dword ptr [rbp + 1540], 3
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n527_lit_string_α
.Lx716_0:
                        .quad            .Lx716_0_s
.Lx716_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:
                        mov              qword ptr [rbp + 1456], 2                      # result
                        mov              dword ptr [rbp + 1460], 2
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n528_var_ref_α
.Lx717_0:
                        .quad            .Lx717_0_s
.Lx717_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n529_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n530_lit_integer_α
.Lx720_0:
                        .quad            .Lx720_0_s
.Lx720_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n531_lit_string_α
.Lx721_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n532_lit_integer_α
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n533_lit_string_α
.Lx723_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 2
                        mov              rax, qword ptr [rip + .Lx724_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n534_call_builtin_prolog_α
.Lx724_0:
                        .quad            .Lx724_0_s
.Lx724_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n534_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n535_call_builtin_prolog_α
n534_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n535_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n536_call_builtin_prolog_α
n535_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n536_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n537_call_builtin_prolog_α
n536_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n537_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n545_call_builtin_prolog_α
                                                                                        jmp   n538_call_builtin_prolog_α
n537_call_builtin_prolog_β:
                                                                                        jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n538_call_builtin_prolog_α:
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
.Lx729_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx729_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        cmp              esi, 1
                                                                                        jne   .Lx729_55
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_55:
                        cmp              esi, 2
                                                                                        jne   .Lx729_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_56:
                        cmp              eax, 72
                                                                                        jne   .Lx729_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        cmp              rax, r8
                                                                                        je    .Lx729_41
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_41:
                        lea              r9, [rbp + 1088]
.Lx729_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx729_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        cmp              esi, 1
                                                                                        jne   .Lx729_57
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_57:
                        cmp              esi, 2
                                                                                        jne   .Lx729_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_58:
                        cmp              eax, 72
                                                                                        jne   .Lx729_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        cmp              rax, r9
                                                                                        je    .Lx729_43
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_43:
                        cmp              r8, r9
                                                                                        je    .Lx729_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_44
                        cmp              eax, 104
                                                                                        je    .Lx729_44
                        cmp              eax, 72
                                                                                        jne   .Lx729_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx729_44
                                                                                        jmp   .Lx729_45
.Lx729_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_53
                        cmp              eax, 104
                                                                                        je    .Lx729_53
                        cmp              eax, 72
                                                                                        jne   .Lx729_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx729_53
                                                                                        jmp   .Lx729_46
.Lx729_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx729_53
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
                                                                                        jmp   .Lx729_51
.Lx729_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_47
                        cmp              eax, 104
                                                                                        je    .Lx729_47
                        cmp              eax, 72
                                                                                        jne   .Lx729_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx729_47
                                                                                        jmp   .Lx729_48
.Lx729_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx729_53
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
                                                                                        jmp   .Lx729_51
.Lx729_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx729_49
                        cmp              edx, 80
                                                                                        je    .Lx729_53
                                                                                        jmp   .Lx729_52
.Lx729_49:
                        cmp              edx, 80
                                                                                        je    .Lx729_52
                        cmp              ecx, 5
                                                                                        je    .Lx729_53
                        cmp              edx, 5
                                                                                        je    .Lx729_53
                        cmp              ecx, 3
                                                                                        jne   .Lx729_50
                        cmp              edx, 3
                                                                                        jne   .Lx729_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx729_51
                                                                                        jmp   .Lx729_52
.Lx729_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx729_53
.Lx729_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx729_54
.Lx729_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx729_54
.Lx729_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx729_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n545_call_builtin_prolog_α
                                                                                        jmp   n539_var_ref_α
n538_call_builtin_prolog_β:
                                                                                        jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n540_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 3
                        mov              rax, qword ptr [rip + .Lx732_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n541_var_ref_α
.Lx732_0:
                        .quad            .Lx732_0_s
.Lx732_0_s:
                        .string          "one"
#-----------------------------------------------------------------------------------------------------------------------
n541_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4624]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n542_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n545_call_builtin_prolog_α
                                                                                        jmp   n543_call_builtin_prolog_α
n542_call_builtin_prolog_β:
                                                                                        jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n543_call_builtin_prolog_α:
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
.Lx736_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx736_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx736_41
                        cmp              esi, 1
                                                                                        jne   .Lx736_55
                        mov              r8, rax
                                                                                        jmp   .Lx736_40
.Lx736_55:
                        cmp              esi, 2
                                                                                        jne   .Lx736_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx736_41
                        mov              r8, rax
                                                                                        jmp   .Lx736_40
.Lx736_56:
                        cmp              eax, 72
                                                                                        jne   .Lx736_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx736_41
                        cmp              rax, r8
                                                                                        je    .Lx736_41
                        mov              r8, rax
                                                                                        jmp   .Lx736_40
.Lx736_41:
                        lea              r9, [rbp + 928]
.Lx736_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx736_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx736_43
                        cmp              esi, 1
                                                                                        jne   .Lx736_57
                        mov              r9, rax
                                                                                        jmp   .Lx736_42
.Lx736_57:
                        cmp              esi, 2
                                                                                        jne   .Lx736_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx736_43
                        mov              r9, rax
                                                                                        jmp   .Lx736_42
.Lx736_58:
                        cmp              eax, 72
                                                                                        jne   .Lx736_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx736_43
                        cmp              rax, r9
                                                                                        je    .Lx736_43
                        mov              r9, rax
                                                                                        jmp   .Lx736_42
.Lx736_43:
                        cmp              r8, r9
                                                                                        je    .Lx736_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx736_44
                        cmp              eax, 104
                                                                                        je    .Lx736_44
                        cmp              eax, 72
                                                                                        jne   .Lx736_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx736_44
                                                                                        jmp   .Lx736_45
.Lx736_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx736_53
                        cmp              eax, 104
                                                                                        je    .Lx736_53
                        cmp              eax, 72
                                                                                        jne   .Lx736_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx736_53
                                                                                        jmp   .Lx736_46
.Lx736_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx736_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx736_53
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
                                                                                        jmp   .Lx736_51
.Lx736_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx736_47
                        cmp              eax, 104
                                                                                        je    .Lx736_47
                        cmp              eax, 72
                                                                                        jne   .Lx736_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx736_47
                                                                                        jmp   .Lx736_48
.Lx736_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx736_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx736_53
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
                                                                                        jmp   .Lx736_51
.Lx736_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx736_49
                        cmp              edx, 80
                                                                                        je    .Lx736_53
                                                                                        jmp   .Lx736_52
.Lx736_49:
                        cmp              edx, 80
                                                                                        je    .Lx736_52
                        cmp              ecx, 5
                                                                                        je    .Lx736_53
                        cmp              edx, 5
                                                                                        je    .Lx736_53
                        cmp              ecx, 3
                                                                                        jne   .Lx736_50
                        cmp              edx, 3
                                                                                        jne   .Lx736_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx736_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx736_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx736_51
                                                                                        jmp   .Lx736_52
.Lx736_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx736_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx736_53
.Lx736_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx736_54
.Lx736_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx736_54
.Lx736_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx736_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n545_call_builtin_prolog_α
                                                                                        jmp   n544_suspend_α
n543_call_builtin_prolog_β:
                                                                                        jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n544_suspend_α:
                        lea              rax, [rip + n544_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n544_suspend_β:
                                                                                        jmp   n545_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n545_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n546_var_ref_α
n545_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n547_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 6
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n548_call_builtin_prolog_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n548_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              rsi, qword ptr [rip + .Lx743_2]
                                                                                        jmp   .Lx743_3
.Lx743_2:
                        .quad            .Lx743_2_s
.Lx743_2_s:
                        .string          "expand"
.Lx743_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n559_call_builtin_prolog_α
                                                                                        jmp   n549_var_ref_α
n548_call_builtin_prolog_β:
                                                                                        jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n550_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 8
                        mov              rax, qword ptr [rip + .Lx746_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n551_call_builtin_prolog_α
.Lx746_0:
                        .quad            .Lx746_0_s
.Lx746_0_s:
                        .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n551_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx747_2]
                                                                                        jmp   .Lx747_3
.Lx747_2:
                        .quad            .Lx747_2_s
.Lx747_2_s:
                        .string          "ssu_body"
.Lx747_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n559_call_builtin_prolog_α
                                                                                        jmp   n552_var_ref_α
n551_call_builtin_prolog_β:
                                                                                        jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n553_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 4
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n554_call_builtin_prolog_α
.Lx750_0:
                        .quad            .Lx750_0_s
.Lx750_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n554_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              rsi, qword ptr [rip + .Lx751_2]
                                                                                        jmp   .Lx751_3
.Lx751_2:
                        .quad            .Lx751_2_s
.Lx751_2_s:
                        .string          "true"
.Lx751_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n559_call_builtin_prolog_α
                                                                                        jmp   n555_var_ref_α
n554_call_builtin_prolog_β:
                                                                                        jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n556_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 8
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n557_call_builtin_prolog_α
.Lx754_0:
                        .quad            .Lx754_0_s
.Lx754_0_s:
                        .string          "ssu_body"
#-----------------------------------------------------------------------------------------------------------------------
n557_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lx755_2]
                                                                                        jmp   .Lx755_3
.Lx755_2:
                        .quad            .Lx755_2_s
.Lx755_2_s:
                        .string          "ssu_body"
.Lx755_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n559_call_builtin_prolog_α
                                                                                        jmp   n558_suspend_α
n557_call_builtin_prolog_β:
                                                                                        jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n558_suspend_α:
                        lea              rax, [rip + n558_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n558_suspend_β:
                                                                                        jmp   n559_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n559_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n560_var_ref_α
n559_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n561_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 6
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n562_call_builtin_prolog_α
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "expand"
#-----------------------------------------------------------------------------------------------------------------------
n562_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              rsi, qword ptr [rip + .Lx762_2]
                                                                                        jmp   .Lx762_3
.Lx762_2:
                        .quad            .Lx762_2_s
.Lx762_2_s:
                        .string          "expand"
.Lx762_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n573_call_builtin_prolog_α
                                                                                        jmp   n563_var_ref_α
n562_call_builtin_prolog_β:
                                                                                        jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n564_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 9
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n565_call_builtin_prolog_α
.Lx765_0:
                        .quad            .Lx765_0_s
.Lx765_0_s:
                        .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n565_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx766_2]
                                                                                        jmp   .Lx766_3
.Lx766_2:
                        .quad            .Lx766_2_s
.Lx766_2_s:
                        .string          "ssu_guard"
.Lx766_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n573_call_builtin_prolog_α
                                                                                        jmp   n566_var_ref_α
n565_call_builtin_prolog_β:
                                                                                        jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n567_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n567_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 4
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n568_call_builtin_prolog_α
.Lx769_0:
                        .quad            .Lx769_0_s
.Lx769_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n568_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx770_2]
                                                                                        jmp   .Lx770_3
.Lx770_2:
                        .quad            .Lx770_2_s
.Lx770_2_s:
                        .string          "true"
.Lx770_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n573_call_builtin_prolog_α
                                                                                        jmp   n569_var_ref_α
n568_call_builtin_prolog_β:
                                                                                        jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n570_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 9
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n571_call_builtin_prolog_α
.Lx773_0:
                        .quad            .Lx773_0_s
.Lx773_0_s:
                        .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n571_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              rsi, qword ptr [rip + .Lx774_2]
                                                                                        jmp   .Lx774_3
.Lx774_2:
                        .quad            .Lx774_2_s
.Lx774_2_s:
                        .string          "ssu_guard"
.Lx774_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n573_call_builtin_prolog_α
                                                                                        jmp   n572_suspend_α
n571_call_builtin_prolog_β:
                                                                                        jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n572_suspend_α:
                        lea              rax, [rip + n572_suspend_β]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n572_suspend_β:
                                                                                        jmp   n573_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n573_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 4608]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ssu_body$2F0_α
proc_ssu_body$2F0_α:
proc_ssu_body$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n778_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx782_101
.Lx782_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx782_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx782_240
                        add              rsp, 32
                                                                                        jmp   proc_ssu_body$2F0_ω
.Lx782_240:
                                                                                        jmp   n779_move_label_α
n778_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n779_move_label_α:
                        lea              rax, [rip + n781_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_ssu_body$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n780_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n780_disjunction_β:
                                                                                        jmp   proc_ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n781_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_ssu_body$2F0_ω
                                                                                        jmp   proc_ssu_body$2F0_ω
n781_call_builtin_prolog_β:
                                                                                        jmp   proc_ssu_body$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_β:
                                                                                        jmp   n780_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_ssu_body$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx788_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx788_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ssu_body$2F0_α_body
.Lx788_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx788_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_term_expansion$2F2_α
proc_term_expansion$2F2_α:
proc_term_expansion$2F2_α_body:
                        lea              rax, [rip + n796_suspend_β]
                        mov              qword ptr [rbp + 608], rax
#-----------------------------------------------------------------------------------------------------------------------
n789_call_builtin_prolog_α:
                        sub              rsp, 112
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
                        mov              eax, 3
                                                                                        jmp   .Lx809_101
.Lx809_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx809_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx809_240
                        add              rsp, 112
                                                                                        jmp   proc_term_expansion$2F2_ω
.Lx809_240:
                                                                                        jmp   n790_var_ref_α
n789_call_builtin_prolog_β:
                        add              rsp, 112
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
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 3
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n792_call_builtin_prolog_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          "a2b"
#-----------------------------------------------------------------------------------------------------------------------
n792_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n797_call_builtin_prolog_α
                                                                                        jmp   n793_var_ref_α
n792_call_builtin_prolog_β:
                                                                                        jmp   n797_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n793_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n794_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 3
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n795_call_builtin_prolog_α
.Lx816_0:
                        .quad            .Lx816_0_s
.Lx816_0_s:
                        .string          "b2c"
#-----------------------------------------------------------------------------------------------------------------------
n795_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              rsi, qword ptr [rip + .Lx817_2]
                                                                                        jmp   .Lx817_3
.Lx817_2:
                        .quad            .Lx817_2_s
.Lx817_2_s:
                        .string          "b2c"
.Lx817_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n797_call_builtin_prolog_α
                                                                                        jmp   n796_suspend_α
n795_call_builtin_prolog_β:
                                                                                        jmp   n797_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n796_suspend_α:
                        lea              rax, [rip + n796_suspend_β]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_term_expansion$2F2_γ
n796_suspend_β:
                                                                                        jmp   n797_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n797_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    proc_term_expansion$2F2_ω
                                                                                        jmp   n798_var_ref_α
n797_call_builtin_prolog_β:
                                                                                        jmp   proc_term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n799_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n799_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 8
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n800_call_builtin_prolog_α
.Lx823_0:
                        .quad            .Lx823_0_s
.Lx823_0_s:
                        .string          "make_dcg"
#-----------------------------------------------------------------------------------------------------------------------
n800_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n808_call_builtin_prolog_α
                                                                                        jmp   n801_var_ref_α
n800_call_builtin_prolog_β:
                                                                                        jmp   n808_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n802_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 3
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n803_lit_string_α
.Lx827_0:
                        .quad            .Lx827_0_s
.Lx827_0_s:
                        .string          "-->"
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n804_lit_string_α
.Lx828_0:
                        .quad            .Lx828_0_s
.Lx828_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 0
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n805_call_builtin_prolog_α
.Lx829_0:
                        .quad            .Lx829_0_s
.Lx829_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n805_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n808_call_builtin_prolog_α
                                                                                        jmp   n806_call_builtin_prolog_α
n805_call_builtin_prolog_β:
                                                                                        jmp   n808_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n806_call_builtin_prolog_α:
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
.Lx831_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx831_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx831_41
                        cmp              esi, 1
                                                                                        jne   .Lx831_55
                        mov              r8, rax
                                                                                        jmp   .Lx831_40
.Lx831_55:
                        cmp              esi, 2
                                                                                        jne   .Lx831_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx831_41
                        mov              r8, rax
                                                                                        jmp   .Lx831_40
.Lx831_56:
                        cmp              eax, 72
                                                                                        jne   .Lx831_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx831_41
                        cmp              rax, r8
                                                                                        je    .Lx831_41
                        mov              r8, rax
                                                                                        jmp   .Lx831_40
.Lx831_41:
                        lea              r9, [rbp + 160]
.Lx831_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx831_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx831_43
                        cmp              esi, 1
                                                                                        jne   .Lx831_57
                        mov              r9, rax
                                                                                        jmp   .Lx831_42
.Lx831_57:
                        cmp              esi, 2
                                                                                        jne   .Lx831_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx831_43
                        mov              r9, rax
                                                                                        jmp   .Lx831_42
.Lx831_58:
                        cmp              eax, 72
                                                                                        jne   .Lx831_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx831_43
                        cmp              rax, r9
                                                                                        je    .Lx831_43
                        mov              r9, rax
                                                                                        jmp   .Lx831_42
.Lx831_43:
                        cmp              r8, r9
                                                                                        je    .Lx831_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx831_44
                        cmp              eax, 104
                                                                                        je    .Lx831_44
                        cmp              eax, 72
                                                                                        jne   .Lx831_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx831_44
                                                                                        jmp   .Lx831_45
.Lx831_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx831_53
                        cmp              eax, 104
                                                                                        je    .Lx831_53
                        cmp              eax, 72
                                                                                        jne   .Lx831_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx831_53
                                                                                        jmp   .Lx831_46
.Lx831_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx831_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx831_53
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
                                                                                        jmp   .Lx831_51
.Lx831_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx831_47
                        cmp              eax, 104
                                                                                        je    .Lx831_47
                        cmp              eax, 72
                                                                                        jne   .Lx831_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx831_47
                                                                                        jmp   .Lx831_48
.Lx831_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx831_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx831_53
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
                                                                                        jmp   .Lx831_51
.Lx831_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx831_49
                        cmp              edx, 80
                                                                                        je    .Lx831_53
                                                                                        jmp   .Lx831_52
.Lx831_49:
                        cmp              edx, 80
                                                                                        je    .Lx831_52
                        cmp              ecx, 5
                                                                                        je    .Lx831_53
                        cmp              edx, 5
                                                                                        je    .Lx831_53
                        cmp              ecx, 3
                                                                                        jne   .Lx831_50
                        cmp              edx, 3
                                                                                        jne   .Lx831_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx831_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx831_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx831_51
                                                                                        jmp   .Lx831_52
.Lx831_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx831_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx831_53
.Lx831_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx831_54
.Lx831_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx831_54
.Lx831_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx831_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n808_call_builtin_prolog_α
                                                                                        jmp   n807_suspend_α
n806_call_builtin_prolog_β:
                                                                                        jmp   n808_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n807_suspend_α:
                        lea              rax, [rip + n807_suspend_β]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term_expansion$2F2_γ
n807_suspend_β:
                                                                                        jmp   n808_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n808_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_term_expansion$2F2_ω
                                                                                        jmp   proc_term_expansion$2F2_ω
n808_call_builtin_prolog_β:
                                                                                        jmp   proc_term_expansion$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_term_expansion$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_term_expansion$2F2_β:
                                                                                        jmp   qword ptr [rbp + 608]
#-----------------------------------------------------------------------------------------------------------------------
proc_term_expansion$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_term_expansion$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n844_suspend_β]
                        mov              qword ptr [rbp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n835_call_builtin_prolog_α:
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
                        mov              eax, 3
                                                                                        jmp   .Lx854_101
.Lx854_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx854_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx854_240
                        add              rsp, 208
                                                                                        jmp   proc_$disj0$2F1_ω
.Lx854_240:
                                                                                        jmp   n836_var_ref_α
n835_call_builtin_prolog_β:
                        add              rsp, 208
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
                                                                                        jmp   n838_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n838_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx859_44
                        cmp              eax, 72
                                                                                        jne   .Lx859_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx859_44
                                                                                        jmp   .Lx859_45
.Lx859_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx859_53
                        cmp              eax, 104
                                                                                        je    .Lx859_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx859_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx859_49
                        cmp              edx, 80
                                                                                        je    .Lx859_53
                                                                                        jmp   .Lx859_52
.Lx859_49:
                        cmp              edx, 80
                                                                                        je    .Lx859_52
                        cmp              ecx, 5
                                                                                        je    .Lx859_53
                        cmp              edx, 5
                                                                                        je    .Lx859_53
                        cmp              ecx, 3
                                                                                        jne   .Lx859_50
                        cmp              edx, 3
                                                                                        jne   .Lx859_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx859_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx859_54
.Lx859_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx859_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx859_240
                        add              rsp, 208
                                                                                        jmp   n845_call_builtin_prolog_α
.Lx859_240:
                                                                                        jmp   n839_lit_string_α
n838_call_builtin_prolog_β:
                        add              rsp, 208
                                                                                        jmp   n845_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Lx860_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n840_var_ref_α
.Lx860_0:
                        .quad            .Lx860_0_s
.Lx860_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n840_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n841_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n841_lit_integer_α:
                        mov              qword ptr [rbp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n842_call_builtin_prolog_α
.Lx863_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n842_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx864_240
                        add              rsp, 208
                                                                                        jmp   n845_call_builtin_prolog_α
.Lx864_240:
                                                                                        jmp   n843_call_proc_staged_α
n842_call_builtin_prolog_β:
                        add              rsp, 208
                                                                                        jmp   n845_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n843_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx866_20
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx866_21
.Lx866_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 384]                     # v
                        mov              rdx, qword ptr [rbp + 392]                     # v
                        call             rt_arg_stage@PLT
.Lx866_21:
                        mov              rdi, qword ptr [rip + .Lx866_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx866_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx866_3]
                        lea              rdx, [rip + .Lx866_4]
                                                                                        jmp   rax
.Lx866_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx866_2
.Lx866_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx866_2
.Lx866_1:
                        call             rt_faildescr@PLT
.Lx866_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx866_240
                        add              rsp, 208
                                                                                        jmp   n845_call_builtin_prolog_α
.Lx866_240:
                                                                                        jmp   n844_suspend_α
n843_call_proc_staged_β:
                                                                                        jmp   n845_call_builtin_prolog_α
.Lx866_0:
                        .quad            .Lx866_0_s
.Lx866_0_s:
                        .string          "onetime/1"
#-----------------------------------------------------------------------------------------------------------------------
n844_suspend_α:
                        lea              rax, [rip + n844_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 208
                                                                                        jmp   proc_$disj0$2F1_γ
n844_suspend_β:
                                                                                        jmp   n843_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n845_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n846_var_ref_α
n845_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n846_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n847_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n848_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n848_call_builtin_prolog_α:
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
.Lx874_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx874_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx874_41
                        cmp              esi, 1
                                                                                        jne   .Lx874_55
                        mov              r8, rax
                                                                                        jmp   .Lx874_40
.Lx874_55:
                        cmp              esi, 2
                                                                                        jne   .Lx874_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx874_41
                        mov              r8, rax
                                                                                        jmp   .Lx874_40
.Lx874_56:
                        cmp              eax, 72
                                                                                        jne   .Lx874_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx874_41
                        cmp              rax, r8
                                                                                        je    .Lx874_41
                        mov              r8, rax
                                                                                        jmp   .Lx874_40
.Lx874_41:
                        lea              r9, [rbp + 224]
.Lx874_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx874_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx874_43
                        cmp              esi, 1
                                                                                        jne   .Lx874_57
                        mov              r9, rax
                                                                                        jmp   .Lx874_42
.Lx874_57:
                        cmp              esi, 2
                                                                                        jne   .Lx874_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx874_43
                        mov              r9, rax
                                                                                        jmp   .Lx874_42
.Lx874_58:
                        cmp              eax, 72
                                                                                        jne   .Lx874_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx874_43
                        cmp              rax, r9
                                                                                        je    .Lx874_43
                        mov              r9, rax
                                                                                        jmp   .Lx874_42
.Lx874_43:
                        cmp              r8, r9
                                                                                        je    .Lx874_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx874_44
                        cmp              eax, 104
                                                                                        je    .Lx874_44
                        cmp              eax, 72
                                                                                        jne   .Lx874_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx874_44
                                                                                        jmp   .Lx874_45
.Lx874_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx874_53
                        cmp              eax, 104
                                                                                        je    .Lx874_53
                        cmp              eax, 72
                                                                                        jne   .Lx874_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx874_53
                                                                                        jmp   .Lx874_46
.Lx874_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx874_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx874_53
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
                                                                                        jmp   .Lx874_51
.Lx874_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx874_47
                        cmp              eax, 104
                                                                                        je    .Lx874_47
                        cmp              eax, 72
                                                                                        jne   .Lx874_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx874_47
                                                                                        jmp   .Lx874_48
.Lx874_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx874_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx874_53
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
                                                                                        jmp   .Lx874_51
.Lx874_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx874_49
                        cmp              edx, 80
                                                                                        je    .Lx874_53
                                                                                        jmp   .Lx874_52
.Lx874_49:
                        cmp              edx, 80
                                                                                        je    .Lx874_52
                        cmp              ecx, 5
                                                                                        je    .Lx874_53
                        cmp              edx, 5
                                                                                        je    .Lx874_53
                        cmp              ecx, 3
                                                                                        jne   .Lx874_50
                        cmp              edx, 3
                                                                                        jne   .Lx874_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx874_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx874_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx874_51
                                                                                        jmp   .Lx874_52
.Lx874_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx874_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx874_53
.Lx874_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx874_54
.Lx874_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx874_54
.Lx874_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx874_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n853_call_builtin_prolog_α
                                                                                        jmp   n849_var_ref_α
n848_call_builtin_prolog_β:
                                                                                        jmp   n853_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n849_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n850_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n850_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n851_call_builtin_prolog_α
.Lx877_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n851_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]                               # args
                        movabs           rsi, 2                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n853_call_builtin_prolog_α
                                                                                        jmp   n852_suspend_α
n851_call_builtin_prolog_β:
                                                                                        jmp   n853_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n852_suspend_α:
                        lea              rax, [rip + n852_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n852_suspend_β:
                                                                                        jmp   n853_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n853_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   proc_$disj0$2F1_ω
n853_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 560]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_foo_bar$2F0_α
proc_test_foo_bar$2F0_α:
proc_test_foo_bar$2F0_α_body:
                        lea              rax, [rip + n885_suspend_β]
                        mov              qword ptr [rbp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n882_call_builtin_prolog_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx887_101
.Lx887_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx887_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx887_240
                        add              rsp, 16
                                                                                        jmp   proc_test_foo_bar$2F0_ω
.Lx887_240:
                                                                                        jmp   n883_lit_string_α
n882_call_builtin_prolog_β:
                        add              rsp, 16
                                                                                        jmp   proc_test_foo_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 3
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx890_21:
                        mov              edi, 6                                         # idx
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx890_240
                        add              rsp, 16
                                                                                        jmp   n886_call_builtin_prolog_α
.Lx890_240:
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
                        add              rsp, 16
                                                                                        jmp   proc_test_foo_bar$2F0_γ
n885_suspend_β:
                                                                                        jmp   n884_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n886_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_test_foo_bar$2F0_ω
                                                                                        jmp   proc_test_foo_bar$2F0_ω
n886_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test_foo_bar$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_b$2F0_α
proc_g_b$2F0_α:
proc_g_b$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n894_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx898_101
.Lx898_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx898_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx898_240
                        add              rsp, 32
                                                                                        jmp   proc_g_b$2F0_ω
.Lx898_240:
                                                                                        jmp   n895_move_label_α
n894_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n895_move_label_α:
                        lea              rax, [rip + n897_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_g_b$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n896_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n896_disjunction_β:
                                                                                        jmp   proc_g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n897_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_g_b$2F0_ω
                                                                                        jmp   proc_g_b$2F0_ω
n897_call_builtin_prolog_β:
                                                                                        jmp   proc_g_b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_β:
                                                                                        jmp   n896_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_g_b$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx904_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx904_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_g_b$2F0_α_body
.Lx904_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx904_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$3A$2F2_α
proc_$3A$2F2_α:
proc_$3A$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n905_call_builtin_prolog_α:
                        sub              rsp, 368
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
                        mov              eax, 3
                                                                                        jmp   .Lx918_101
.Lx918_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx918_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx918_240
                        add              rsp, 368
                                                                                        jmp   proc_$3A$2F2_ω
.Lx918_240:
                                                                                        jmp   n906_var_ref_α
n905_call_builtin_prolog_β:
                        add              rsp, 368
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
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 4
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n908_call_builtin_prolog_α
.Lx921_0:
                        .quad            .Lx921_0_s
.Lx921_0_s:
                        .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n908_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n917_call_builtin_prolog_α
                                                                                        jmp   n909_var_ref_α
n908_call_builtin_prolog_β:
                                                                                        jmp   n917_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n909_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n910_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 14
                        mov              rax, qword ptr [rip + .Lx925_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n911_lit_string_α
.Lx925_0:
                        .quad            .Lx925_0_s
.Lx925_0_s:
                        .string          "term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n911_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 3
                        mov              rax, qword ptr [rip + .Lx926_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n912_lit_string_α
.Lx926_0:
                        .quad            .Lx926_0_s
.Lx926_0_s:
                        .string          "b2c"
#-----------------------------------------------------------------------------------------------------------------------
n912_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 7
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n913_call_builtin_prolog_α
.Lx927_0:
                        .quad            .Lx927_0_s
.Lx927_0_s:
                        .string          "final_c"
#-----------------------------------------------------------------------------------------------------------------------
n913_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n917_call_builtin_prolog_α
                                                                                        jmp   n914_call_builtin_prolog_α
n913_call_builtin_prolog_β:
                                                                                        jmp   n917_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n914_call_builtin_prolog_α:
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
.Lx929_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx929_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx929_41
                        cmp              esi, 1
                                                                                        jne   .Lx929_55
                        mov              r8, rax
                                                                                        jmp   .Lx929_40
.Lx929_55:
                        cmp              esi, 2
                                                                                        jne   .Lx929_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx929_41
                        mov              r8, rax
                                                                                        jmp   .Lx929_40
.Lx929_56:
                        cmp              eax, 72
                                                                                        jne   .Lx929_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx929_41
                        cmp              rax, r8
                                                                                        je    .Lx929_41
                        mov              r8, rax
                                                                                        jmp   .Lx929_40
.Lx929_41:
                        lea              r9, [rbp + 176]
.Lx929_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx929_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx929_43
                        cmp              esi, 1
                                                                                        jne   .Lx929_57
                        mov              r9, rax
                                                                                        jmp   .Lx929_42
.Lx929_57:
                        cmp              esi, 2
                                                                                        jne   .Lx929_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx929_43
                        mov              r9, rax
                                                                                        jmp   .Lx929_42
.Lx929_58:
                        cmp              eax, 72
                                                                                        jne   .Lx929_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx929_43
                        cmp              rax, r9
                                                                                        je    .Lx929_43
                        mov              r9, rax
                                                                                        jmp   .Lx929_42
.Lx929_43:
                        cmp              r8, r9
                                                                                        je    .Lx929_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx929_44
                        cmp              eax, 104
                                                                                        je    .Lx929_44
                        cmp              eax, 72
                                                                                        jne   .Lx929_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx929_44
                                                                                        jmp   .Lx929_45
.Lx929_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx929_53
                        cmp              eax, 104
                                                                                        je    .Lx929_53
                        cmp              eax, 72
                                                                                        jne   .Lx929_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx929_53
                                                                                        jmp   .Lx929_46
.Lx929_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx929_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx929_53
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
                                                                                        jmp   .Lx929_51
.Lx929_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx929_47
                        cmp              eax, 104
                                                                                        je    .Lx929_47
                        cmp              eax, 72
                                                                                        jne   .Lx929_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx929_47
                                                                                        jmp   .Lx929_48
.Lx929_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx929_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx929_53
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
                                                                                        jmp   .Lx929_51
.Lx929_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx929_49
                        cmp              edx, 80
                                                                                        je    .Lx929_53
                                                                                        jmp   .Lx929_52
.Lx929_49:
                        cmp              edx, 80
                                                                                        je    .Lx929_52
                        cmp              ecx, 5
                                                                                        je    .Lx929_53
                        cmp              edx, 5
                                                                                        je    .Lx929_53
                        cmp              ecx, 3
                                                                                        jne   .Lx929_50
                        cmp              edx, 3
                                                                                        jne   .Lx929_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx929_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx929_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx929_51
                                                                                        jmp   .Lx929_52
.Lx929_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx929_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx929_53
.Lx929_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx929_54
.Lx929_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx929_54
.Lx929_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx929_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n917_call_builtin_prolog_α
                                                                                        jmp   n915_move_label_α
n914_call_builtin_prolog_β:
                                                                                        jmp   n917_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n915_move_label_α:
                        lea              rax, [rip + n917_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 64], rax
                        add              rsp, 368
                                                                                        jmp   proc_$3A$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n916_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n916_disjunction_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n917_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   proc_$3A$2F2_ω
n917_call_builtin_prolog_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_β:
                                                                                        jmp   n916_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx935_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx935_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 416                                       # suffix_off
                        mov              edx, 432                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$3A$2F2_α_body
.Lx935_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx935_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_a2b$2F0_α
proc_a2b$2F0_α:
proc_a2b$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n936_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx940_101
.Lx940_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx940_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx940_240
                        add              rsp, 32
                                                                                        jmp   proc_a2b$2F0_ω
.Lx940_240:
                                                                                        jmp   n937_move_label_α
n936_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n937_move_label_α:
                        lea              rax, [rip + n939_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_a2b$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n938_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n938_disjunction_β:
                                                                                        jmp   proc_a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n939_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_a2b$2F0_ω
                                                                                        jmp   proc_a2b$2F0_ω
n939_call_builtin_prolog_β:
                                                                                        jmp   proc_a2b$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_β:
                                                                                        jmp   n938_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_a2b$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx946_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx946_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_a2b$2F0_α_body
.Lx946_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx946_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$2C$2F2_α
proc_$2C$2F2_α:
proc_$2C$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n947_call_builtin_prolog_α:
                        sub              rsp, 256
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
                        mov              eax, 3
                                                                                        jmp   .Lx957_101
.Lx957_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx957_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx957_240
                        add              rsp, 256
                                                                                        jmp   proc_$2C$2F2_ω
.Lx957_240:
                                                                                        jmp   n948_var_ref_α
n947_call_builtin_prolog_β:
                        add              rsp, 256
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
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 9
                        mov              rax, qword ptr [rip + .Lx960_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n950_call_builtin_prolog_α
.Lx960_0:
                        .quad            .Lx960_0_s
.Lx960_0_s:
                        .string          "ssu_guard"
#-----------------------------------------------------------------------------------------------------------------------
n950_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n956_call_builtin_prolog_α
                                                                                        jmp   n951_var_ref_α
n950_call_builtin_prolog_β:
                                                                                        jmp   n956_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n951_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n952_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n952_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 3
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n953_call_builtin_prolog_α
.Lx964_0:
                        .quad            .Lx964_0_s
.Lx964_0_s:
                        .string          "g_b"
#-----------------------------------------------------------------------------------------------------------------------
n953_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx965_2]
                                                                                        jmp   .Lx965_3
.Lx965_2:
                        .quad            .Lx965_2_s
.Lx965_2_s:
                        .string          "g_b"
.Lx965_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n956_call_builtin_prolog_α
                                                                                        jmp   n954_move_label_α
n953_call_builtin_prolog_β:
                                                                                        jmp   n956_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n954_move_label_α:
                        lea              rax, [rip + n956_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 64], rax
                        add              rsp, 256
                                                                                        jmp   proc_$2C$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n955_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n955_disjunction_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n956_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   proc_$2C$2F2_ω
n956_call_builtin_prolog_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_β:
                                                                                        jmp   n955_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 320], r11
                        lea              rax, [rip + .Lx971_2]
                        mov              qword ptr [rbp + 328], rax
                        lea              rax, [rip + .Lx971_3]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 304                                       # suffix_off
                        mov              edx, 320                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$2C$2F2_α_body
.Lx971_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx971_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_one$2F1_α
proc_one$2F1_α:
proc_one$2F1_α_body:
                        lea              rax, [rip + n978_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n972_call_builtin_prolog_α:
                        sub              rsp, 96
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
                        mov              eax, 3
                                                                                        jmp   .Lx980_101
.Lx980_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx980_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx980_240
                        add              rsp, 96
                                                                                        jmp   proc_one$2F1_ω
.Lx980_240:
                                                                                        jmp   n973_var_ref_α
n972_call_builtin_prolog_β:
                        add              rsp, 96
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
                                                                                        jmp   n975_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n975_call_builtin_prolog_α:
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx985_44
                        cmp              eax, 72
                                                                                        jne   .Lx985_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx985_44
                                                                                        jmp   .Lx985_45
.Lx985_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx985_53
                        cmp              eax, 104
                                                                                        je    .Lx985_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx985_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx985_49
                        cmp              edx, 80
                                                                                        je    .Lx985_53
                                                                                        jmp   .Lx985_52
.Lx985_49:
                        cmp              edx, 80
                                                                                        je    .Lx985_52
                        cmp              ecx, 5
                                                                                        je    .Lx985_53
                        cmp              edx, 5
                                                                                        je    .Lx985_53
                        cmp              ecx, 3
                                                                                        jne   .Lx985_50
                        cmp              edx, 3
                                                                                        jne   .Lx985_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx985_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx985_54
.Lx985_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx985_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx985_240
                        add              rsp, 96
                                                                                        jmp   n979_call_builtin_prolog_α
.Lx985_240:
                                                                                        jmp   n976_var_ref_α
n975_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n979_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n976_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n977_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n977_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx989_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx989_21
.Lx989_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx989_21:
                        mov              edi, 13                                        # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx989_1
                        lea              rcx, [rip + .Lx989_3]
                        lea              rdx, [rip + .Lx989_4]
                                                                                        jmp   rax
.Lx989_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx989_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx989_2
.Lx989_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx989_2
.Lx989_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx989_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx989_2
.Lx989_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx989_2
.Lx989_1:
                        call             rt_faildescr@PLT
.Lx989_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx989_240
                        add              rsp, 96
                                                                                        jmp   n979_call_builtin_prolog_α
.Lx989_240:
                                                                                        jmp   n978_suspend_α
n977_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx989_0:
                        .quad            .Lx989_0_s
.Lx989_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n978_suspend_α:
                        lea              rax, [rip + n978_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_one$2F1_γ
n978_suspend_β:
                                                                                        jmp   n977_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n979_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_one$2F1_ω
                                                                                        jmp   proc_one$2F1_ω
n979_call_builtin_prolog_β:
                                                                                        jmp   proc_one$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_one$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_one$2F1_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_one$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_one$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_make_dcg$2F0_α
proc_make_dcg$2F0_α:
proc_make_dcg$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n993_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx997_101
.Lx997_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx997_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx997_240
                        add              rsp, 32
                                                                                        jmp   proc_make_dcg$2F0_ω
.Lx997_240:
                                                                                        jmp   n994_move_label_α
n993_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n994_move_label_α:
                        lea              rax, [rip + n996_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_make_dcg$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n995_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n995_disjunction_β:
                                                                                        jmp   proc_make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n996_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_make_dcg$2F0_ω
                                                                                        jmp   proc_make_dcg$2F0_ω
n996_call_builtin_prolog_β:
                                                                                        jmp   proc_make_dcg$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_β:
                                                                                        jmp   n995_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_make_dcg$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx1003_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx1003_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_make_dcg$2F0_α_body
.Lx1003_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1003_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_6$2F0_α
proc_pj_dir_6$2F0_α:
proc_pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n1007_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1004_call_builtin_prolog_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx1009_101
.Lx1009_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1009_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1009_240
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_6$2F0_ω
.Lx1009_240:
                                                                                        jmp   n1005_lit_string_α
n1004_call_builtin_prolog_β:
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1005_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 6
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx1012_21:
                        mov              rdi, qword ptr [rip + .Lx1012_0]               # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx1012_240
                        add              rsp, 16
                                                                                        jmp   n1008_call_builtin_prolog_α
.Lx1012_240:
                                                                                        jmp   n1007_suspend_α
n1006_call_proc_staged_β:
                                                                                        jmp   n1008_call_builtin_prolog_α
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
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_6$2F0_γ
n1007_suspend_β:
                                                                                        jmp   n1006_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1008_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   proc_pj_dir_6$2F0_ω
n1008_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n1021_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1016_call_builtin_prolog_α:
                        sub              rsp, 96
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
                        mov              eax, 3
                                                                                        jmp   .Lx1023_101
.Lx1023_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1023_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1023_240
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_4$2F0_ω
.Lx1023_240:
                                                                                        jmp   n1017_lit_string_α
n1016_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1017_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 3
                        mov              rax, qword ptr [rip + .Lx1024_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1018_lit_integer_α
.Lx1024_0:
                        .quad            .Lx1024_0_s
.Lx1024_0_s:
                        .string          "run"
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1025_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1019_call_builtin_prolog_α
.Lx1025_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1019_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1026_240
                        add              rsp, 96
                                                                                        jmp   n1022_call_builtin_prolog_α
.Lx1026_240:
                                                                                        jmp   n1020_call_proc_staged_α
n1019_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n1022_call_builtin_prolog_α
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx1028_21:
                        mov              rdi, qword ptr [rip + .Lx1028_0]               # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx1028_240
                        add              rsp, 96
                                                                                        jmp   n1022_call_builtin_prolog_α
.Lx1028_240:
                                                                                        jmp   n1021_suspend_α
n1020_call_proc_staged_β:
                                                                                        jmp   n1022_call_builtin_prolog_α
.Lx1028_0:
                        .quad            .Lx1028_0_s
.Lx1028_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n1021_suspend_α:
                        lea              rax, [rip + n1021_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n1021_suspend_β:
                                                                                        jmp   n1020_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1022_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n1022_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_bar$2F0_α
proc_bar$2F0_α:
proc_bar$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1032_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx1036_101
.Lx1036_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1036_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1036_240
                        add              rsp, 32
                                                                                        jmp   proc_bar$2F0_ω
.Lx1036_240:
                                                                                        jmp   n1033_move_label_α
n1032_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1033_move_label_α:
                        lea              rax, [rip + n1035_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_bar$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n1034_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n1034_disjunction_β:
                                                                                        jmp   proc_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1035_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_bar$2F0_ω
                                                                                        jmp   proc_bar$2F0_ω
n1035_call_builtin_prolog_β:
                                                                                        jmp   proc_bar$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_β:
                                                                                        jmp   n1034_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_bar$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx1042_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx1042_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_bar$2F0_α_body
.Lx1042_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1042_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n1061_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n1043_call_builtin_prolog_α:
                        sub              rsp, 576
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
                        mov              eax, 3
                                                                                        jmp   .Lx1063_101
.Lx1063_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1063_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1063_240
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
.Lx1063_240:
                                                                                        jmp   n1044_lit_string_α
n1043_call_builtin_prolog_β:
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1044_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1045_lit_string_α
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n1045_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1046_lit_string_α
.Lx1065_0:
                        .quad            .Lx1065_0_s
.Lx1065_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx1066_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1047_lit_string_α
.Lx1066_0:
                        .quad            .Lx1066_0_s
.Lx1066_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1047_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 4
                        mov              rax, qword ptr [rip + .Lx1067_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1048_lit_string_α
.Lx1067_0:
                        .quad            .Lx1067_0_s
.Lx1067_0_s:
                        .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n1048_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 14
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1049_call_builtin_prolog_α
.Lx1068_0:
                        .quad            .Lx1068_0_s
.Lx1068_0_s:
                        .string          "term_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1049_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1069_240
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
.Lx1069_240:
                                                                                        jmp   n1050_lit_integer_α
n1049_call_builtin_prolog_β:
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1051_call_builtin_prolog_α
.Lx1070_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1051_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1071_240
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
.Lx1071_240:
                                                                                        jmp   n1052_lit_string_α
n1051_call_builtin_prolog_β:
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1052_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 1
                        mov              rax, qword ptr [rip + .Lx1072_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1053_lit_string_α
.Lx1072_0:
                        .quad            .Lx1072_0_s
.Lx1072_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1053_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 1
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n1054_lit_string_α
.Lx1073_0:
                        .quad            .Lx1073_0_s
.Lx1073_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1054_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 4
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1055_lit_string_α
.Lx1074_0:
                        .quad            .Lx1074_0_s
.Lx1074_0_s:
                        .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n1055_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 14
                        mov              rax, qword ptr [rip + .Lx1075_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1056_call_builtin_prolog_α
.Lx1075_0:
                        .quad            .Lx1075_0_s
.Lx1075_0_s:
                        .string          "goal_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1056_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1076_240
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
.Lx1076_240:
                                                                                        jmp   n1057_lit_integer_α
n1056_call_builtin_prolog_β:
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1057_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1077_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1058_call_builtin_prolog_α
.Lx1077_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1058_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1078_240
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
.Lx1078_240:
                                                                                        jmp   n1059_call_builtin_prolog_α
n1058_call_builtin_prolog_β:
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1059_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1079_240
                        add              rsp, 576
                                                                                        jmp   n1062_call_builtin_prolog_α
.Lx1079_240:
                                                                                        jmp   n1060_call_proc_staged_α
n1059_call_builtin_prolog_β:
                        add              rsp, 576
                                                                                        jmp   n1062_call_builtin_prolog_α
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 608]                     # v
                        mov              rdx, qword ptr [rbp + 616]                     # v
                        call             rt_arg_stage@PLT
.Lx1081_21:
                        mov              rdi, qword ptr [rip + .Lx1081_0]               # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx1081_240
                        add              rsp, 576
                                                                                        jmp   n1062_call_builtin_prolog_α
.Lx1081_240:
                                                                                        jmp   n1061_suspend_α
n1060_call_proc_staged_β:
                                                                                        jmp   n1062_call_builtin_prolog_α
.Lx1081_0:
                        .quad            .Lx1081_0_s
.Lx1081_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n1061_suspend_α:
                        lea              rax, [rip + n1061_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 576
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n1061_suspend_β:
                                                                                        jmp   n1060_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1062_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n1062_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n1095_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n1085_call_builtin_prolog_α:
                        sub              rsp, 256
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
                        mov              eax, 3
                                                                                        jmp   .Lx1097_101
.Lx1097_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1097_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1097_240
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
.Lx1097_240:
                                                                                        jmp   n1086_lit_string_α
n1085_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1086_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 11
                        mov              rax, qword ptr [rip + .Lx1098_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1087_lit_string_α
.Lx1098_0:
                        .quad            .Lx1098_0_s
.Lx1098_0_s:
                        .string          "test_expand"
#-----------------------------------------------------------------------------------------------------------------------
n1087_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx1099_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1088_lit_string_α
.Lx1099_0:
                        .quad            .Lx1099_0_s
.Lx1099_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1088_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1089_lit_string_α
.Lx1100_0:
                        .quad            .Lx1100_0_s
.Lx1100_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1089_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 11
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1090_lit_integer_α
.Lx1101_0:
                        .quad            .Lx1101_0_s
.Lx1101_0_s:
                        .string          "test_expand"
#-----------------------------------------------------------------------------------------------------------------------
n1090_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1102_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1091_call_builtin_prolog_α
.Lx1102_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1091_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1103_240
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
.Lx1103_240:
                                                                                        jmp   n1092_lit_string_α
n1091_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1092_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1093_call_builtin_prolog_α
.Lx1104_0:
                        .quad            .Lx1104_0_s
.Lx1104_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1093_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1105_240
                        add              rsp, 256
                                                                                        jmp   n1096_call_builtin_prolog_α
.Lx1105_240:
                                                                                        jmp   n1094_call_proc_staged_α
n1093_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   n1096_call_builtin_prolog_α
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
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
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
.Lx1107_23:
                        mov              rdi, qword ptr [rip + .Lx1107_0]               # name
                        mov              esi, 2                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx1107_240
                        add              rsp, 256
                                                                                        jmp   n1096_call_builtin_prolog_α
.Lx1107_240:
                                                                                        jmp   n1095_suspend_α
n1094_call_proc_staged_β:
                                                                                        jmp   n1096_call_builtin_prolog_α
.Lx1107_0:
                        .quad            .Lx1107_0_s
.Lx1107_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n1095_suspend_α:
                        lea              rax, [rip + n1095_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n1095_suspend_β:
                                                                                        jmp   n1094_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1096_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n1096_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_c$2F0_α
proc_g_c$2F0_α:
proc_g_c$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1111_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx1115_101
.Lx1115_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1115_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1115_240
                        add              rsp, 32
                                                                                        jmp   proc_g_c$2F0_ω
.Lx1115_240:
                                                                                        jmp   n1112_move_label_α
n1111_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1112_move_label_α:
                        lea              rax, [rip + n1114_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   proc_g_c$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n1113_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n1113_disjunction_β:
                                                                                        jmp   proc_g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1114_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_g_c$2F0_ω
                                                                                        jmp   proc_g_c$2F0_ω
n1114_call_builtin_prolog_β:
                                                                                        jmp   proc_g_c$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_β:
                                                                                        jmp   n1113_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_g_c$2F0_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 112], r11
                        lea              rax, [rip + .Lx1121_2]
                        mov              qword ptr [rbp + 120], rax
                        lea              rax, [rip + .Lx1121_3]
                        mov              qword ptr [rbp + 128], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_g_c$2F0_α_body
.Lx1121_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1121_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n1125_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1122_call_builtin_prolog_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
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
                        mov              eax, 3
                                                                                        jmp   .Lx1127_101
.Lx1127_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1127_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1127_240
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_5$2F0_ω
.Lx1127_240:
                                                                                        jmp   n1123_lit_string_α
n1122_call_builtin_prolog_β:
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1123_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 6
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx1130_21:
                        mov              rdi, qword ptr [rip + .Lx1130_0]               # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx1130_240
                        add              rsp, 16
                                                                                        jmp   n1126_call_builtin_prolog_α
.Lx1130_240:
                                                                                        jmp   n1125_suspend_α
n1124_call_proc_staged_β:
                                                                                        jmp   n1126_call_builtin_prolog_α
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
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n1125_suspend_β:
                                                                                        jmp   n1124_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1126_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   proc_pj_dir_5$2F0_ω
n1126_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n1140_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n1134_call_builtin_prolog_α:
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
                        mov              eax, 3
                                                                                        jmp   .Lx1142_101
.Lx1142_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1142_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1142_240
                        add              rsp, 128
                                                                                        jmp   proc_pj_dir_3$2F0_ω
.Lx1142_240:
                                                                                        jmp   n1135_lit_string_α
n1134_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1135_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx1143_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1136_lit_string_α
.Lx1143_0:
                        .quad            .Lx1143_0_s
.Lx1143_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1136_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 14
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1137_lit_integer_α
.Lx1144_0:
                        .quad            .Lx1144_0_s
.Lx1144_0_s:
                        .string          "goal_expansion"
#-----------------------------------------------------------------------------------------------------------------------
n1137_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1138_call_builtin_prolog_α
.Lx1145_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1138_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1146_240
                        add              rsp, 128
                                                                                        jmp   n1141_call_builtin_prolog_α
.Lx1146_240:
                                                                                        jmp   n1139_call_proc_staged_α
n1138_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   n1141_call_builtin_prolog_α
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx1148_21:
                        mov              rdi, qword ptr [rip + .Lx1148_0]               # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx1148_240
                        add              rsp, 128
                                                                                        jmp   n1141_call_builtin_prolog_α
.Lx1148_240:
                                                                                        jmp   n1140_suspend_α
n1139_call_proc_staged_β:
                                                                                        jmp   n1141_call_builtin_prolog_α
.Lx1148_0:
                        .quad            .Lx1148_0_s
.Lx1148_0_s:
                        .string          "discontiguous/1"
#-----------------------------------------------------------------------------------------------------------------------
n1140_suspend_α:
                        lea              rax, [rip + n1140_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 128
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n1140_suspend_β:
                                                                                        jmp   n1139_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1141_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n1141_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n1157_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1152_call_builtin_prolog_α:
                        sub              rsp, 96
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
                        mov              eax, 3
                                                                                        jmp   .Lx1159_101
.Lx1159_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1159_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1159_240
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_ω
.Lx1159_240:
                                                                                        jmp   n1153_lit_string_α
n1152_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1153_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 7
                        mov              rax, qword ptr [rip + .Lx1160_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1154_lit_string_α
.Lx1160_0:
                        .quad            .Lx1160_0_s
.Lx1160_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1154_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 6
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1155_call_builtin_prolog_α
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1155_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1162_240
                        add              rsp, 96
                                                                                        jmp   n1158_call_builtin_prolog_α
.Lx1162_240:
                                                                                        jmp   n1156_call_proc_staged_α
n1155_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n1158_call_builtin_prolog_α
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
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx1164_21:
                        mov              rdi, qword ptr [rip + .Lx1164_0]               # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx1164_240
                        add              rsp, 96
                                                                                        jmp   n1158_call_builtin_prolog_α
.Lx1164_240:
                                                                                        jmp   n1157_suspend_α
n1156_call_proc_staged_β:
                                                                                        jmp   n1158_call_builtin_prolog_α
.Lx1164_0:
                        .quad            .Lx1164_0_s
.Lx1164_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1157_suspend_α:
                        lea              rax, [rip + n1157_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n1157_suspend_β:
                                                                                        jmp   n1156_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n1158_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n1168_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1170_0]
                        mov              qword ptr [rsp + 8], rax
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
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1172_21
.Lx1172_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 0]                       # v
                        mov              rdx, qword ptr [rsp + 8]                       # v
                        call             rt_arg_stage@PLT
.Lx1172_21:
                        mov              rdi, qword ptr [rip + .Lx1172_0]               # name
                        mov              esi, 1                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx1172_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx1172_240:
                        add              rsp, 16
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
