                        .intel_syntax    noprefix
                        .text
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
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx8_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx8_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx8_101
.Lx8_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx8_101:
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
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n3_op11_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "local_stack_expansion_pending_chp"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lx12_2]
                                                                                        jmp   .Lx12_3
.Lx12_2:
                        .quad            .Lx12_2_s
.Lx12_2_s:
                        .string          "local_stack_expansion_pending_chp"
.Lx12_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_call_proc_staged_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 7
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx14_1
                        lea              rcx, [rip + .Lx14_3]
                        lea              rdx, [rip + .Lx14_4]
                                                                                        jmp   rax
.Lx14_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx14_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx14_2
.Lx14_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx14_2
.Lx14_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx14_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx14_2
.Lx14_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx14_2
.Lx14_1:
                        call             rt_faildescr@PLT
.Lx14_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n6_op19_α
n4_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          "test2_1/0"
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
n6_op19_α:
                                                                                        jmp   n7_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n7_suspend_β:
                                                                                        jmp   n4_call_proc_staged_β
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
                        .globl           proc_test2_2$2F0_α
proc_test2_2$2F0_α:
                        .global          proc_test2_2$2F0_α
                        .global          proc_test2_2$2F0_β
                        .global          proc_test2_2$2F0_γ
                        .global          proc_test2_2$2F0_ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_test2_2$2F0_α_body:
                        lea              rax, [rip + n23_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx25_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx25_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx25_101
.Lx25_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx25_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test2_2$2F0_ω
                                                                                        jmp   n20_call_proc_staged_α
n19_op11_β:
                                                                                        jmp   proc_test2_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_call_proc_staged_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              edi, 10
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx27_1
                        lea              rcx, [rip + .Lx27_3]
                        lea              rdx, [rip + .Lx27_4]
                                                                                        jmp   rax
.Lx27_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx27_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx27_2
.Lx27_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx27_2
.Lx27_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx27_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx27_2
.Lx27_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx27_2
.Lx27_1:
                        call             rt_faildescr@PLT
.Lx27_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n22_call_proc_staged_α
                                                                                        jmp   n21_call_proc_staged_α
n20_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "cp/0"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 4
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx29_1
                        lea              rcx, [rip + .Lx29_3]
                        lea              rdx, [rip + .Lx29_4]
                                                                                        jmp   rax
.Lx29_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx29_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx29_2
.Lx29_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx29_2
.Lx29_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx29_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx29_2
.Lx29_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx29_2
.Lx29_1:
                        call             rt_faildescr@PLT
.Lx29_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n23_suspend_α
n21_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "lshift/0"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              edi, 4
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx31_1
                        lea              rcx, [rip + .Lx31_3]
                        lea              rdx, [rip + .Lx31_4]
                                                                                        jmp   rax
.Lx31_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx31_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx31_2
.Lx31_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx31_2
.Lx31_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx31_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx31_2
.Lx31_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx31_2
.Lx31_1:
                        call             rt_faildescr@PLT
.Lx31_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n24_op11_α
n22_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "lshift/0"
#-----------------------------------------------------------------------------------------------------------------------
n23_suspend_α:
                        lea              rax, [rip + n23_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test2_2$2F0_γ
n23_suspend_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
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
                                                                                        je    proc_test2_2$2F0_ω
                                                                                        jmp   proc_test2_2$2F0_ω
n24_op11_β:
                                                                                        jmp   proc_test2_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test2_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test2_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_test2_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test2_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 264]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test2_2$2F0_ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_local_stack_expansion_many_chp$2F0_α
proc_local_stack_expansion_many_chp$2F0_α:
                        .global          proc_local_stack_expansion_many_chp$2F0_α
                        .global          proc_local_stack_expansion_many_chp$2F0_β
                        .global          proc_local_stack_expansion_many_chp$2F0_γ
                        .global          proc_local_stack_expansion_many_chp$2F0_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_local_stack_expansion_many_chp$2F0_α_body:
                        lea              rax, [rip + n48_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx49_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx49_101
.Lx49_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx49_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_local_stack_expansion_many_chp$2F0_ω
                                                                                        jmp   n36_var_ref_α
n35_op11_β:
                                                                                        jmp   proc_local_stack_expansion_many_chp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n37_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        lea              rsi, [rbp + 400]
                        call             proc_or_dept$2F1_dcα
                                                                                        jmp   .Lx53_2
.Lx53_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n39_op11_α
                                                                                        jmp   n38_call_proc_staged_α
n37_call_proc_staged_β:
                                                                                        jmp   n39_op11_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "or_dept/1"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx55_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx55_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx55_3]
                        lea              rdx, [rip + .Lx55_4]
                                                                                        jmp   rax
.Lx55_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx55_2
.Lx55_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx55_2
.Lx55_1:
                        call             rt_faildescr@PLT
.Lx55_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_proc_staged_β
                                                                                        jmp   n40_var_ref_α
n38_call_proc_staged_β:
                                                                                        jmp   n37_call_proc_staged_β
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "trim_stacks/0"
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
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
                                                                                        je    proc_local_stack_expansion_many_chp$2F0_ω
                                                                                        jmp   proc_local_stack_expansion_many_chp$2F0_ω
n39_op11_β:
                                                                                        jmp   proc_local_stack_expansion_many_chp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n42_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_proc_staged_α:
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 304]
                        call             proc_make_or$2F2_dcα
                                                                                        jmp   .Lx62_2
.Lx62_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n38_call_proc_staged_β
                                                                                        jmp   n43_lit_string_α
n42_call_proc_staged_β:
                                                                                        jmp   n38_call_proc_staged_β
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "make_or/2"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n44_op11_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "asserta/2"
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn65:               .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n42_call_proc_staged_β
                                                                                        jmp   n45_call_proc_staged_α
n44_op11_β:
                                                                                        jmp   n42_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx67_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx67_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx67_3]
                        lea              rdx, [rip + .Lx67_4]
                                                                                        jmp   rax
.Lx67_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx67_2
.Lx67_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx67_2
.Lx67_1:
                        call             rt_faildescr@PLT
.Lx67_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n42_call_proc_staged_β
                                                                                        jmp   n46_var_ref_α
n45_call_proc_staged_β:
                                                                                        jmp   n42_call_proc_staged_β
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "t/0"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n47_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx71_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx71_21
.Lx71_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx71_21:
                        mov              rdi, qword ptr [rip + .Lx71_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx71_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx71_3]
                        lea              rdx, [rip + .Lx71_4]
                                                                                        jmp   rax
.Lx71_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx71_2
.Lx71_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx71_2
.Lx71_1:
                        call             rt_faildescr@PLT
.Lx71_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n42_call_proc_staged_β
                                                                                        jmp   n48_suspend_α
n47_call_proc_staged_β:
                                                                                        jmp   n42_call_proc_staged_β
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n48_suspend_α:
                        lea              rax, [rip + n48_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_local_stack_expansion_many_chp$2F0_γ
n48_suspend_β:
                                                                                        jmp   n47_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_local_stack_expansion_many_chp$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_local_stack_expansion_many_chp$2F0_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_local_stack_expansion_many_chp$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_local_stack_expansion_many_chp$2F0_res]
                        push             rax
                        mov              rax, [rbp + 488]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_local_stack_expansion_many_chp$2F0_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx93_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx93_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx93_101
.Lx93_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx93_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n75_var_ref_α
n74_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n77_op11_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lx97_2]
                                                                                        jmp   .Lx97_3
.Lx97_2:
                        .quad            .Lx97_2_s
.Lx97_2_s:
                        .string          "ch_shift"
.Lx97_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n79_op11_α
                                                                                        jmp   n78_var_ref_α
n77_op11_β:
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
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
n79_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n81_op11_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "local_stack_expansion_pending_chp"
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              rsi, qword ptr [rip + .Lx102_2]
                                                                                        jmp   .Lx102_3
.Lx102_2:
                        .quad            .Lx102_2_s
.Lx102_2_s:
                        .string          "local_stack_expansion_pending_chp"
.Lx102_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n79_op11_α
                                                                                        jmp   n82_var_ref_α
n81_op11_β:
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n84_op11_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx106_2]
                                                                                        jmp   .Lx106_3
.Lx106_2:
                        .quad            .Lx106_2_s
.Lx106_2_s:
                        .string          "[]"
.Lx106_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n79_op11_α
                                                                                        jmp   n85_var_ref_α
n84_op11_β:
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n87_lit_string_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n88_lit_string_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "test2_1"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n89_op11_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 248]
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
                                                                                        je    n79_op11_α
                                                                                        jmp   n90_op11_α
n89_op11_β:
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx113_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx113_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx113_41
                        cmp              esi, 1
                                                                                        jne   .Lx113_55
                        mov              r8, rax
                                                                                        jmp   .Lx113_40
.Lx113_55:
                        cmp              esi, 2
                                                                                        jne   .Lx113_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx113_41
                        mov              r8, rax
                                                                                        jmp   .Lx113_40
.Lx113_56:
                        cmp              eax, 13
                                                                                        jne   .Lx113_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx113_41
                        cmp              rax, r8
                                                                                        je    .Lx113_41
                        mov              r8, rax
                                                                                        jmp   .Lx113_40
.Lx113_41:
                        lea              r9, [rbp + 208]
.Lx113_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx113_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx113_43
                        cmp              esi, 1
                                                                                        jne   .Lx113_57
                        mov              r9, rax
                                                                                        jmp   .Lx113_42
.Lx113_57:
                        cmp              esi, 2
                                                                                        jne   .Lx113_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx113_43
                        mov              r9, rax
                                                                                        jmp   .Lx113_42
.Lx113_58:
                        cmp              eax, 13
                                                                                        jne   .Lx113_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx113_43
                        cmp              rax, r9
                                                                                        je    .Lx113_43
                        mov              r9, rax
                                                                                        jmp   .Lx113_42
.Lx113_43:
                        cmp              r8, r9
                                                                                        je    .Lx113_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx113_44
                        cmp              eax, 99
                                                                                        je    .Lx113_44
                        cmp              eax, 13
                                                                                        jne   .Lx113_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx113_44
                                                                                        jmp   .Lx113_45
.Lx113_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx113_53
                        cmp              eax, 99
                                                                                        je    .Lx113_53
                        cmp              eax, 13
                                                                                        jne   .Lx113_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx113_53
                                                                                        jmp   .Lx113_46
.Lx113_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx113_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx113_53
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
                                                                                        jmp   .Lx113_51
.Lx113_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx113_47
                        cmp              eax, 99
                                                                                        je    .Lx113_47
                        cmp              eax, 13
                                                                                        jne   .Lx113_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx113_47
                                                                                        jmp   .Lx113_48
.Lx113_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx113_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx113_53
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
                                                                                        jmp   .Lx113_51
.Lx113_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx113_49
                        cmp              edx, 14
                                                                                        je    .Lx113_53
                                                                                        jmp   .Lx113_52
.Lx113_49:
                        cmp              edx, 14
                                                                                        je    .Lx113_52
                        cmp              ecx, 7
                                                                                        je    .Lx113_53
                        cmp              edx, 7
                                                                                        je    .Lx113_53
                        cmp              ecx, 6
                                                                                        jne   .Lx113_50
                        cmp              edx, 6
                                                                                        jne   .Lx113_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx113_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx113_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx113_51
                                                                                        jmp   .Lx113_52
.Lx113_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx113_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx113_53
.Lx113_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx113_54
.Lx113_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx113_54
.Lx113_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx113_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n79_op11_α
                                                                                        jmp   n91_move_label_α
n90_op11_β:
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_move_label_α:
                        lea              rax, [rip + n79_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n92_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n92_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n92_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 616]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 608], r11
                        lea              rax, [rip + .Lx118_2]
                        mov              qword ptr [rbp + 616], rax
                        lea              rax, [rip + .Lx118_3]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 608
                        mov              edx, 608
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx118_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx118_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lshift$2F0_α
proc_lshift$2F0_α:
                        .global          proc_lshift$2F0_α
                        .global          proc_lshift$2F0_β
                        .global          proc_lshift$2F0_γ
                        .global          proc_lshift$2F0_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_lshift$2F0_α_body:
                        lea              rax, [rip + n128_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx129_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx129_101
.Lx129_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx129_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F0_ω
                                                                                        jmp   n120_lit_string_α
n119_op11_β:
                                                                                        jmp   proc_lshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n121_var_ref_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "local_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n122_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx134_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx134_21
.Lx134_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx134_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx134_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx134_23
.Lx134_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx134_23:
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx134_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx134_3]
                        lea              rdx, [rip + .Lx134_4]
                                                                                        jmp   rax
.Lx134_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx134_2
.Lx134_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx134_2
.Lx134_1:
                        call             rt_faildescr@PLT
.Lx134_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n124_op11_α
                                                                                        jmp   n123_var_ref_α
n122_call_proc_staged_β:
                                                                                        jmp   n124_op11_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n125_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
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
                                                                                        je    proc_lshift$2F0_ω
                                                                                        jmp   proc_lshift$2F0_ω
n124_op11_β:
                                                                                        jmp   proc_lshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx139_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx139_21
.Lx139_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx139_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx139_1
                        lea              rcx, [rip + .Lx139_3]
                        lea              rdx, [rip + .Lx139_4]
                                                                                        jmp   rax
.Lx139_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx139_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx139_2
.Lx139_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx139_2
.Lx139_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx139_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx139_2
.Lx139_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx139_2
.Lx139_1:
                        call             rt_faildescr@PLT
.Lx139_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n122_call_proc_staged_β
                                                                                        jmp   n126_op19_α
n125_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "lshift/1"
#-----------------------------------------------------------------------------------------------------------------------
n126_op19_α:
                                                                                        jmp   n127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        mov              esi, 0
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n124_op11_α
                                                                                        jmp   n128_suspend_α
n127_call_proc_staged_β:
                                                                                        jmp   n124_op11_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "garbage_collect/0"
#-----------------------------------------------------------------------------------------------------------------------
n128_suspend_α:
                        lea              rax, [rip + n128_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F0_γ
n128_suspend_β:
                                                                                        jmp   n127_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_lshift$2F0_res]
                        push             rax
                        mov              rax, [rbp + 328]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lshift$2F1_α
proc_lshift$2F1_α:
                        .global          proc_lshift$2F1_α
                        .global          proc_lshift$2F1_β
                        .global          proc_lshift$2F1_γ
                        .global          proc_lshift$2F1_ω
                        sub              rsp, 560
                        mov              [rsp + 536], rcx
                        mov              [rsp + 544], rdx
                        mov              [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
proc_lshift$2F1_α_body:
                        lea              rax, [rip + n158_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx161_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx161_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx161_101
.Lx161_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx161_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   n146_var_ref_α
n145_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx166_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx166_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_41
                        cmp              esi, 1
                                                                                        jne   .Lx166_55
                        mov              r8, rax
                                                                                        jmp   .Lx166_40
.Lx166_55:
                        cmp              esi, 2
                                                                                        jne   .Lx166_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx166_41
                        mov              r8, rax
                                                                                        jmp   .Lx166_40
.Lx166_56:
                        cmp              eax, 13
                                                                                        jne   .Lx166_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_41
                        cmp              rax, r8
                                                                                        je    .Lx166_41
                        mov              r8, rax
                                                                                        jmp   .Lx166_40
.Lx166_41:
                        lea              r9, [rbp + 432]
.Lx166_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx166_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_43
                        cmp              esi, 1
                                                                                        jne   .Lx166_57
                        mov              r9, rax
                                                                                        jmp   .Lx166_42
.Lx166_57:
                        cmp              esi, 2
                                                                                        jne   .Lx166_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx166_43
                        mov              r9, rax
                                                                                        jmp   .Lx166_42
.Lx166_58:
                        cmp              eax, 13
                                                                                        jne   .Lx166_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx166_43
                        cmp              rax, r9
                                                                                        je    .Lx166_43
                        mov              r9, rax
                                                                                        jmp   .Lx166_42
.Lx166_43:
                        cmp              r8, r9
                                                                                        je    .Lx166_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_44
                        cmp              eax, 99
                                                                                        je    .Lx166_44
                        cmp              eax, 13
                                                                                        jne   .Lx166_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx166_44
                                                                                        jmp   .Lx166_45
.Lx166_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_53
                        cmp              eax, 99
                                                                                        je    .Lx166_53
                        cmp              eax, 13
                                                                                        jne   .Lx166_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx166_53
                                                                                        jmp   .Lx166_46
.Lx166_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx166_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx166_53
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
                                                                                        jmp   .Lx166_51
.Lx166_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx166_47
                        cmp              eax, 99
                                                                                        je    .Lx166_47
                        cmp              eax, 13
                                                                                        jne   .Lx166_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx166_47
                                                                                        jmp   .Lx166_48
.Lx166_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx166_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx166_53
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
                                                                                        jmp   .Lx166_51
.Lx166_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx166_49
                        cmp              edx, 14
                                                                                        je    .Lx166_53
                                                                                        jmp   .Lx166_52
.Lx166_49:
                        cmp              edx, 14
                                                                                        je    .Lx166_52
                        cmp              ecx, 7
                                                                                        je    .Lx166_53
                        cmp              edx, 7
                                                                                        je    .Lx166_53
                        cmp              ecx, 6
                                                                                        jne   .Lx166_50
                        cmp              edx, 6
                                                                                        jne   .Lx166_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx166_51
                                                                                        jmp   .Lx166_52
.Lx166_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx166_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx166_53
.Lx166_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx166_54
.Lx166_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx166_54
.Lx166_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx166_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n150_op11_α
                                                                                        jmp   n149_lit_string_α
n148_op11_β:
                                                                                        jmp   n150_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n151_var_ref_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "local_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n150_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   n152_var_ref_α
n150_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n153_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx174_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx174_21
.Lx174_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx174_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx174_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx174_23
.Lx174_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx174_23:
                        mov              rdi, qword ptr [rip + .Lx174_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx174_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx174_3]
                        lea              rdx, [rip + .Lx174_4]
                                                                                        jmp   rax
.Lx174_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx174_2
.Lx174_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx174_2
.Lx174_1:
                        call             rt_faildescr@PLT
.Lx174_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n150_op11_α
                                                                                        jmp   n155_var_ref_α
n153_call_proc_staged_β:
                                                                                        jmp   n150_op11_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n156_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n156_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        lea              r8, [rbp + 128]
.Lx179_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx179_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        cmp              esi, 1
                                                                                        jne   .Lx179_55
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_55:
                        cmp              esi, 2
                                                                                        jne   .Lx179_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_56:
                        cmp              eax, 13
                                                                                        jne   .Lx179_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        cmp              rax, r8
                                                                                        je    .Lx179_41
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_41:
                        lea              r9, [rbp + 144]
.Lx179_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx179_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        cmp              esi, 1
                                                                                        jne   .Lx179_57
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_57:
                        cmp              esi, 2
                                                                                        jne   .Lx179_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_58:
                        cmp              eax, 13
                                                                                        jne   .Lx179_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        cmp              rax, r9
                                                                                        je    .Lx179_43
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_43:
                        cmp              r8, r9
                                                                                        je    .Lx179_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_44
                        cmp              eax, 99
                                                                                        je    .Lx179_44
                        cmp              eax, 13
                                                                                        jne   .Lx179_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx179_44
                                                                                        jmp   .Lx179_45
.Lx179_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_53
                        cmp              eax, 99
                                                                                        je    .Lx179_53
                        cmp              eax, 13
                                                                                        jne   .Lx179_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx179_53
                                                                                        jmp   .Lx179_46
.Lx179_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx179_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx179_53
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
                                                                                        jmp   .Lx179_51
.Lx179_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_47
                        cmp              eax, 99
                                                                                        je    .Lx179_47
                        cmp              eax, 13
                                                                                        jne   .Lx179_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx179_47
                                                                                        jmp   .Lx179_48
.Lx179_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx179_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx179_53
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
                                                                                        jmp   .Lx179_51
.Lx179_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx179_49
                        cmp              edx, 14
                                                                                        je    .Lx179_53
                                                                                        jmp   .Lx179_52
.Lx179_49:
                        cmp              edx, 14
                                                                                        je    .Lx179_52
                        cmp              ecx, 7
                                                                                        je    .Lx179_53
                        cmp              edx, 7
                                                                                        je    .Lx179_53
                        cmp              ecx, 6
                                                                                        jne   .Lx179_50
                        cmp              edx, 6
                                                                                        jne   .Lx179_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx179_51
                                                                                        jmp   .Lx179_52
.Lx179_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx179_53
.Lx179_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx179_54
.Lx179_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx179_54
.Lx179_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx179_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n159_op11_α
                                                                                        jmp   n158_suspend_α
n156_op11_β:
                                                                                        jmp   n159_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx181_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx181_21
.Lx181_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx181_21:
                        mov              edi, 5
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx181_1
                        lea              rcx, [rip + .Lx181_3]
                        lea              rdx, [rip + .Lx181_4]
                                                                                        jmp   rax
.Lx181_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx181_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx181_2
.Lx181_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx181_2
.Lx181_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx181_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx181_2
.Lx181_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx181_2
.Lx181_1:
                        call             rt_faildescr@PLT
.Lx181_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n153_call_proc_staged_β
                                                                                        jmp   n160_suspend_α
n157_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "lshift/1"
#-----------------------------------------------------------------------------------------------------------------------
n158_suspend_α:
                        lea              rax, [rip + n158_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F1_γ
n158_suspend_β:
                                                                                        jmp   n159_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
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
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   proc_lshift$2F1_ω
n159_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n160_suspend_α:
                        lea              rax, [rip + n160_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F1_γ
n160_suspend_β:
                                                                                        jmp   n157_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_lshift$2F1_res]
                        push             rax
                        mov              rax, [rbp + 536]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_ω:
                        mov              rax, [rbp + 544]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_make_or$2F2_α
proc_make_or$2F2_α:
                        .global          proc_make_or$2F2_α
                        .global          proc_make_or$2F2_β
                        .global          proc_make_or$2F2_γ
                        .global          proc_make_or$2F2_ω
                        sub              rsp, 1056
                        mov              [rsp + 1032], rcx
                        mov              [rsp + 1040], rdx
                        mov              [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 976
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
proc_make_or$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx221_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx221_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx221_101
.Lx221_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx221_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_make_or$2F2_ω
                                                                                        jmp   n188_var_ref_α
n187_op11_β:
                                                                                        jmp   proc_make_or$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n189_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n190_lit_integer_α
.Lx224_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n191_op11_α
.Lx225_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        lea              r8, [rbp + 880]
.Lx226_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx226_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx226_111
                        cmp              esi, 1
                                                                                        jne   .Lx226_112
                        mov              r8, rax
                                                                                        jmp   .Lx226_110
.Lx226_112:
                        cmp              esi, 2
                                                                                        jne   .Lx226_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx226_111
                        mov              r8, rax
                                                                                        jmp   .Lx226_110
.Lx226_113:
                        cmp              eax, 13
                                                                                        jne   .Lx226_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx226_111
                        cmp              rax, r8
                                                                                        je    .Lx226_111
                        mov              r8, rax
                                                                                        jmp   .Lx226_110
.Lx226_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx226_114
                        cmp              eax, 99
                                                                                        je    .Lx226_114
                        cmp              eax, 13
                                                                                        jne   .Lx226_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx226_114
                                                                                        jmp   .Lx226_118
.Lx226_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx226_115
                        cmp              eax, 6
                                                                                        jne   .Lx226_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx226_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx226_115
                                                                                        jmp   .Lx226_114
.Lx226_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx226_117
.Lx226_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx226_117
.Lx226_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx226_117:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n193_var_ref_α
                                                                                        jmp   n192_var_ref_α
n191_op11_β:
                                                                                        jmp   n193_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n194_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n196_op11_α
.Lx231_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n198_var_ref_α
n196_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx235_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx235_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx235_41
                        cmp              esi, 1
                                                                                        jne   .Lx235_55
                        mov              r8, rax
                                                                                        jmp   .Lx235_40
.Lx235_55:
                        cmp              esi, 2
                                                                                        jne   .Lx235_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx235_41
                        mov              r8, rax
                                                                                        jmp   .Lx235_40
.Lx235_56:
                        cmp              eax, 13
                                                                                        jne   .Lx235_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx235_41
                        cmp              rax, r8
                                                                                        je    .Lx235_41
                        mov              r8, rax
                                                                                        jmp   .Lx235_40
.Lx235_41:
                        lea              r9, [rbp + 624]
.Lx235_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx235_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx235_43
                        cmp              esi, 1
                                                                                        jne   .Lx235_57
                        mov              r9, rax
                                                                                        jmp   .Lx235_42
.Lx235_57:
                        cmp              esi, 2
                                                                                        jne   .Lx235_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx235_43
                        mov              r9, rax
                                                                                        jmp   .Lx235_42
.Lx235_58:
                        cmp              eax, 13
                                                                                        jne   .Lx235_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx235_43
                        cmp              rax, r9
                                                                                        je    .Lx235_43
                        mov              r9, rax
                                                                                        jmp   .Lx235_42
.Lx235_43:
                        cmp              r8, r9
                                                                                        je    .Lx235_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx235_44
                        cmp              eax, 99
                                                                                        je    .Lx235_44
                        cmp              eax, 13
                                                                                        jne   .Lx235_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx235_44
                                                                                        jmp   .Lx235_45
.Lx235_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx235_53
                        cmp              eax, 99
                                                                                        je    .Lx235_53
                        cmp              eax, 13
                                                                                        jne   .Lx235_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx235_53
                                                                                        jmp   .Lx235_46
.Lx235_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx235_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx235_53
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
                                                                                        jmp   .Lx235_51
.Lx235_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx235_47
                        cmp              eax, 99
                                                                                        je    .Lx235_47
                        cmp              eax, 13
                                                                                        jne   .Lx235_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx235_47
                                                                                        jmp   .Lx235_48
.Lx235_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx235_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx235_53
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
                                                                                        jmp   .Lx235_51
.Lx235_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx235_49
                        cmp              edx, 14
                                                                                        je    .Lx235_53
                                                                                        jmp   .Lx235_52
.Lx235_49:
                        cmp              edx, 14
                                                                                        je    .Lx235_52
                        cmp              ecx, 7
                                                                                        je    .Lx235_53
                        cmp              edx, 7
                                                                                        je    .Lx235_53
                        cmp              ecx, 6
                                                                                        jne   .Lx235_50
                        cmp              edx, 6
                                                                                        jne   .Lx235_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx235_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx235_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx235_51
                                                                                        jmp   .Lx235_52
.Lx235_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx235_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx235_53
.Lx235_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx235_54
.Lx235_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx235_54
.Lx235_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx235_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n201_op11_α
                                                                                        jmp   n200_var_ref_α
n197_op11_β:
                                                                                        jmp   n201_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_make_or$2F2_ω
                                                                                        jmp   n193_var_ref_α
n199_op11_β:
                                                                                        jmp   proc_make_or$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n203_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
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
                                                                                        je    proc_make_or$2F2_ω
                                                                                        jmp   proc_make_or$2F2_ω
n201_op11_β:
                                                                                        jmp   proc_make_or$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n204_op11_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n205_var_ref_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          ";"
#-----------------------------------------------------------------------------------------------------------------------
n204_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              rsi, qword ptr [rip + .Lx244_2]
                                                                                        jmp   .Lx244_3
.Lx244_2:
                        .quad            .Lx244_2_s
.Lx244_2_s:
                        .string          "a"
.Lx244_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n206_op19_α
n204_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_op19_α:
                                                                                        jmp   n208_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n209_op11_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n208_move_label_α:
                        lea              rax, [rip + n199_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_make_or$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n209_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n201_op11_α
                                                                                        jmp   n211_op11_α
n209_op11_β:
                                                                                        jmp   n201_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n210_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n210_disjunction_β:
                                                                                        jmp   proc_make_or$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n211_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx254_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx254_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        cmp              esi, 1
                                                                                        jne   .Lx254_55
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_55:
                        cmp              esi, 2
                                                                                        jne   .Lx254_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_56:
                        cmp              eax, 13
                                                                                        jne   .Lx254_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        cmp              rax, r8
                                                                                        je    .Lx254_41
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_41:
                        lea              r9, [rbp + 432]
.Lx254_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx254_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        cmp              esi, 1
                                                                                        jne   .Lx254_57
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_57:
                        cmp              esi, 2
                                                                                        jne   .Lx254_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_58:
                        cmp              eax, 13
                                                                                        jne   .Lx254_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        cmp              rax, r9
                                                                                        je    .Lx254_43
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_43:
                        cmp              r8, r9
                                                                                        je    .Lx254_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_44
                        cmp              eax, 99
                                                                                        je    .Lx254_44
                        cmp              eax, 13
                                                                                        jne   .Lx254_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx254_44
                                                                                        jmp   .Lx254_45
.Lx254_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_53
                        cmp              eax, 99
                                                                                        je    .Lx254_53
                        cmp              eax, 13
                                                                                        jne   .Lx254_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx254_53
                                                                                        jmp   .Lx254_46
.Lx254_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx254_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx254_53
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
                                                                                        jmp   .Lx254_51
.Lx254_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_47
                        cmp              eax, 99
                                                                                        je    .Lx254_47
                        cmp              eax, 13
                                                                                        jne   .Lx254_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx254_47
                                                                                        jmp   .Lx254_48
.Lx254_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx254_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx254_53
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
                                                                                        jmp   .Lx254_51
.Lx254_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx254_49
                        cmp              edx, 14
                                                                                        je    .Lx254_53
                                                                                        jmp   .Lx254_52
.Lx254_49:
                        cmp              edx, 14
                                                                                        je    .Lx254_52
                        cmp              ecx, 7
                                                                                        je    .Lx254_53
                        cmp              edx, 7
                                                                                        je    .Lx254_53
                        cmp              ecx, 6
                                                                                        jne   .Lx254_50
                        cmp              edx, 6
                                                                                        jne   .Lx254_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx254_51
                                                                                        jmp   .Lx254_52
.Lx254_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx254_53
.Lx254_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx254_54
.Lx254_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx254_54
.Lx254_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx254_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n201_op11_α
                                                                                        jmp   n212_var_ref_α
n211_op11_β:
                                                                                        jmp   n201_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n213_var_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n214_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n215_op11_α
.Lx259_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n215_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n201_op11_α
                                                                                        jmp   n216_op11_α
n215_op11_β:
                                                                                        jmp   n201_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n216_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n201_op11_α
                                                                                        jmp   n217_var_ref_α
n216_op11_β:
                                                                                        jmp   n201_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n218_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n219_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 224]
                        call             proc_make_or$2F2_dcα
                                                                                        jmp   .Lx267_2
.Lx267_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n201_op11_α
                                                                                        jmp   n220_move_label_α
n219_call_proc_staged_β:
                                                                                        jmp   n201_op11_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "make_or/2"
#-----------------------------------------------------------------------------------------------------------------------
n220_move_label_α:
                        lea              rax, [rip + n219_call_proc_staged_β]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_make_or$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_make_or$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_make_or$2F2_β:
                                                                                        jmp   n210_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_make_or$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1032]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, [rbp + 1048]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_make_or$2F2_ω:
                        mov              rax, [rbp + 1040]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, [rbp + 1048]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_make_or$2F2_dcα:
                        pop              r11
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1024], r11
                        lea              rax, [rip + .Lx270_2]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rax, [rip + .Lx270_3]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 976
                        mov              edx, 1024
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_make_or$2F2_α_body
.Lx270_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1056
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx270_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1056
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test2_1$2F0_α
proc_test2_1$2F0_α:
                        .global          proc_test2_1$2F0_α
                        .global          proc_test2_1$2F0_β
                        .global          proc_test2_1$2F0_γ
                        .global          proc_test2_1$2F0_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_test2_1$2F0_α_body:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n271_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx275_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx275_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx275_101
.Lx275_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx275_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test2_1$2F0_ω
                                                                                        jmp   n272_call_proc_staged_α
n271_op11_β:
                                                                                        jmp   proc_test2_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n272_call_proc_staged_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              edi, 1
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx277_1
                        lea              rcx, [rip + .Lx277_3]
                        lea              rdx, [rip + .Lx277_4]
                                                                                        jmp   rax
.Lx277_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx277_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_4:
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx277_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_1:
                        call             rt_faildescr@PLT
.Lx277_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n274_op11_α
                                                                                        jmp   n273_suspend_α
n272_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "test2_2/0"
#-----------------------------------------------------------------------------------------------------------------------
n273_suspend_α:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test2_1$2F0_γ
n273_suspend_β:
                                                                                        jmp   n272_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n274_op11_α:
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
                                                                                        je    proc_test2_1$2F0_ω
                                                                                        jmp   proc_test2_1$2F0_ω
n274_op11_β:
                                                                                        jmp   proc_test2_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test2_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test2_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_test2_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test2_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test2_1$2F0_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_or_dept$2F1_α
proc_or_dept$2F1_α:
                        .global          proc_or_dept$2F1_α
                        .global          proc_or_dept$2F1_β
                        .global          proc_or_dept$2F1_γ
                        .global          proc_or_dept$2F1_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 224
                        call             rt_jmp_frame_lexprep2@PLT
proc_or_dept$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n281_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx288_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx288_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx288_101
.Lx288_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx288_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_or_dept$2F1_ω
                                                                                        jmp   n282_var_ref_α
n281_op11_β:
                                                                                        jmp   proc_or_dept$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n283_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n284_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx293_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx293_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        cmp              esi, 1
                                                                                        jne   .Lx293_55
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_55:
                        cmp              esi, 2
                                                                                        jne   .Lx293_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_56:
                        cmp              eax, 13
                                                                                        jne   .Lx293_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        cmp              rax, r8
                                                                                        je    .Lx293_41
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_41:
                        lea              r9, [rbp + 160]
.Lx293_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx293_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        cmp              esi, 1
                                                                                        jne   .Lx293_57
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_57:
                        cmp              esi, 2
                                                                                        jne   .Lx293_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_58:
                        cmp              eax, 13
                                                                                        jne   .Lx293_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        cmp              rax, r9
                                                                                        je    .Lx293_43
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_43:
                        cmp              r8, r9
                                                                                        je    .Lx293_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_44
                        cmp              eax, 99
                                                                                        je    .Lx293_44
                        cmp              eax, 13
                                                                                        jne   .Lx293_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx293_44
                                                                                        jmp   .Lx293_45
.Lx293_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_53
                        cmp              eax, 99
                                                                                        je    .Lx293_53
                        cmp              eax, 13
                                                                                        jne   .Lx293_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx293_53
                                                                                        jmp   .Lx293_46
.Lx293_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx293_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx293_53
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
                                                                                        jmp   .Lx293_51
.Lx293_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_47
                        cmp              eax, 99
                                                                                        je    .Lx293_47
                        cmp              eax, 13
                                                                                        jne   .Lx293_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx293_47
                                                                                        jmp   .Lx293_48
.Lx293_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx293_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx293_53
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
                                                                                        jmp   .Lx293_51
.Lx293_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx293_49
                        cmp              edx, 14
                                                                                        je    .Lx293_53
                                                                                        jmp   .Lx293_52
.Lx293_49:
                        cmp              edx, 14
                                                                                        je    .Lx293_52
                        cmp              ecx, 7
                                                                                        je    .Lx293_53
                        cmp              edx, 7
                                                                                        je    .Lx293_53
                        cmp              ecx, 6
                                                                                        jne   .Lx293_50
                        cmp              edx, 6
                                                                                        jne   .Lx293_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx293_51
                                                                                        jmp   .Lx293_52
.Lx293_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx293_53
.Lx293_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx293_54
.Lx293_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx293_54
.Lx293_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx293_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n286_op11_α
                                                                                        jmp   n285_move_label_α
n284_op11_β:
                                                                                        jmp   n286_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n285_move_label_α:
                        lea              rax, [rip + n286_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_or_dept$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
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
                                                                                        je    proc_or_dept$2F1_ω
                                                                                        jmp   proc_or_dept$2F1_ω
n286_op11_β:
                                                                                        jmp   proc_or_dept$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n287_disjunction_β:
                                                                                        jmp   proc_or_dept$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_or_dept$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_or_dept$2F1_β:
                                                                                        jmp   n287_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_or_dept$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 232]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_or_dept$2F1_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_or_dept$2F1_dcα:
                        pop              r11
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 224], r11
                        lea              rax, [rip + .Lx299_2]
                        mov              qword ptr [rbp + 232], rax
                        lea              rax, [rip + .Lx299_3]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 224
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_or_dept$2F1_α_body
.Lx299_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx299_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -256
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
                        sub              rsp, 2416
                        mov              [rsp + 2392], rcx
                        mov              [rsp + 2400], rdx
                        mov              [rsp + 2408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2352
                        mov              edx, 2384
                        call             rt_jmp_frame_lexprep2@PLT
proc_$2C$2F2_α_body:
                        lea              rax, [rip + n339_suspend_β]
                        mov              qword ptr [rbp + 2352], rax
#-----------------------------------------------------------------------------------------------------------------------
n300_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx375_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx375_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx375_101
.Lx375_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx375_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n301_var_ref_α
n300_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n302_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:
                        mov              qword ptr [rbp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n303_lit_string_α
.Lx378_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n304_op11_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n304_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n306_var_ref_α
                                                                                        jmp   n305_var_ref_α
n304_op11_β:
                                                                                        jmp   n306_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n307_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n308_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n309_var_ref_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 6
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n310_lit_string_α
.Lx386_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n311_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n312_op11_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n311_op11_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n314_op11_α
                                                                                        jmp   n313_op11_α
n311_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1744]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n316_var_ref_α
                                                                                        jmp   n315_var_ref_α
n312_op11_β:
                                                                                        jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2096]
                        lea              r8, [rbp + 2096]
.Lx392_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx392_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx392_41
                        cmp              esi, 1
                                                                                        jne   .Lx392_55
                        mov              r8, rax
                                                                                        jmp   .Lx392_40
.Lx392_55:
                        cmp              esi, 2
                                                                                        jne   .Lx392_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx392_41
                        mov              r8, rax
                                                                                        jmp   .Lx392_40
.Lx392_56:
                        cmp              eax, 13
                                                                                        jne   .Lx392_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx392_41
                        cmp              rax, r8
                                                                                        je    .Lx392_41
                        mov              r8, rax
                                                                                        jmp   .Lx392_40
.Lx392_41:
                        lea              r9, [rbp + 2112]
.Lx392_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx392_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx392_43
                        cmp              esi, 1
                                                                                        jne   .Lx392_57
                        mov              r9, rax
                                                                                        jmp   .Lx392_42
.Lx392_57:
                        cmp              esi, 2
                                                                                        jne   .Lx392_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx392_43
                        mov              r9, rax
                                                                                        jmp   .Lx392_42
.Lx392_58:
                        cmp              eax, 13
                                                                                        jne   .Lx392_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx392_43
                        cmp              rax, r9
                                                                                        je    .Lx392_43
                        mov              r9, rax
                                                                                        jmp   .Lx392_42
.Lx392_43:
                        cmp              r8, r9
                                                                                        je    .Lx392_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx392_44
                        cmp              eax, 99
                                                                                        je    .Lx392_44
                        cmp              eax, 13
                                                                                        jne   .Lx392_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx392_44
                                                                                        jmp   .Lx392_45
.Lx392_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx392_53
                        cmp              eax, 99
                                                                                        je    .Lx392_53
                        cmp              eax, 13
                                                                                        jne   .Lx392_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx392_53
                                                                                        jmp   .Lx392_46
.Lx392_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx392_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx392_53
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
                                                                                        jmp   .Lx392_51
.Lx392_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx392_47
                        cmp              eax, 99
                                                                                        je    .Lx392_47
                        cmp              eax, 13
                                                                                        jne   .Lx392_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx392_47
                                                                                        jmp   .Lx392_48
.Lx392_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx392_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx392_53
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
                                                                                        jmp   .Lx392_51
.Lx392_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx392_49
                        cmp              edx, 14
                                                                                        je    .Lx392_53
                                                                                        jmp   .Lx392_52
.Lx392_49:
                        cmp              edx, 14
                                                                                        je    .Lx392_52
                        cmp              ecx, 7
                                                                                        je    .Lx392_53
                        cmp              edx, 7
                                                                                        je    .Lx392_53
                        cmp              ecx, 6
                                                                                        jne   .Lx392_50
                        cmp              edx, 6
                                                                                        jne   .Lx392_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx392_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx392_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx392_51
                                                                                        jmp   .Lx392_52
.Lx392_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx392_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx392_53
.Lx392_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx392_54
.Lx392_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx392_54
.Lx392_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx392_54:
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n314_op11_α
                                                                                        jmp   n317_var_ref_α
n313_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n314_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n306_var_ref_α
n314_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n318_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n319_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n321_var_ref_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n322_lit_string_α
.Lx401_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n323_lit_string_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n324_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n325_op11_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n326_lit_string_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "asan"
#-----------------------------------------------------------------------------------------------------------------------
n324_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n328_op11_α
                                                                                        jmp   n327_op11_α
n324_op11_β:
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n325_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n330_var_ref_α
                                                                                        jmp   n329_var_ref_α
n325_op11_β:
                                                                                        jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n331_op11_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n327_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1584]
                        lea              r8, [rbp + 1584]
.Lx410_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx410_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx410_41
                        cmp              esi, 1
                                                                                        jne   .Lx410_55
                        mov              r8, rax
                                                                                        jmp   .Lx410_40
.Lx410_55:
                        cmp              esi, 2
                                                                                        jne   .Lx410_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx410_41
                        mov              r8, rax
                                                                                        jmp   .Lx410_40
.Lx410_56:
                        cmp              eax, 13
                                                                                        jne   .Lx410_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx410_41
                        cmp              rax, r8
                                                                                        je    .Lx410_41
                        mov              r8, rax
                                                                                        jmp   .Lx410_40
.Lx410_41:
                        lea              r9, [rbp + 1600]
.Lx410_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx410_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx410_43
                        cmp              esi, 1
                                                                                        jne   .Lx410_57
                        mov              r9, rax
                                                                                        jmp   .Lx410_42
.Lx410_57:
                        cmp              esi, 2
                                                                                        jne   .Lx410_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx410_43
                        mov              r9, rax
                                                                                        jmp   .Lx410_42
.Lx410_58:
                        cmp              eax, 13
                                                                                        jne   .Lx410_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx410_43
                        cmp              rax, r9
                                                                                        je    .Lx410_43
                        mov              r9, rax
                                                                                        jmp   .Lx410_42
.Lx410_43:
                        cmp              r8, r9
                                                                                        je    .Lx410_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx410_44
                        cmp              eax, 99
                                                                                        je    .Lx410_44
                        cmp              eax, 13
                                                                                        jne   .Lx410_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx410_44
                                                                                        jmp   .Lx410_45
.Lx410_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx410_53
                        cmp              eax, 99
                                                                                        je    .Lx410_53
                        cmp              eax, 13
                                                                                        jne   .Lx410_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx410_53
                                                                                        jmp   .Lx410_46
.Lx410_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx410_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx410_53
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
                                                                                        jmp   .Lx410_51
.Lx410_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx410_47
                        cmp              eax, 99
                                                                                        je    .Lx410_47
                        cmp              eax, 13
                                                                                        jne   .Lx410_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx410_47
                                                                                        jmp   .Lx410_48
.Lx410_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx410_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx410_53
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
                                                                                        jmp   .Lx410_51
.Lx410_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx410_49
                        cmp              edx, 14
                                                                                        je    .Lx410_53
                                                                                        jmp   .Lx410_52
.Lx410_49:
                        cmp              edx, 14
                                                                                        je    .Lx410_52
                        cmp              ecx, 7
                                                                                        je    .Lx410_53
                        cmp              edx, 7
                                                                                        je    .Lx410_53
                        cmp              ecx, 6
                                                                                        jne   .Lx410_50
                        cmp              edx, 6
                                                                                        jne   .Lx410_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx410_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx410_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx410_51
                                                                                        jmp   .Lx410_52
.Lx410_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx410_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx410_53
.Lx410_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx410_54
.Lx410_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx410_54
.Lx410_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx410_54:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n328_op11_α
                                                                                        jmp   n332_var_ref_α
n327_op11_β:
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n316_var_ref_α
n328_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n333_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n334_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n331_op11_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n314_op11_α
                                                                                        jmp   n335_op11_α
n331_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n337_var_ref_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n338_lit_string_α
.Lx420_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n335_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1904]
                        lea              r8, [rbp + 1904]
.Lx421_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx421_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        cmp              esi, 1
                                                                                        jne   .Lx421_55
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_55:
                        cmp              esi, 2
                                                                                        jne   .Lx421_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_56:
                        cmp              eax, 13
                                                                                        jne   .Lx421_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        cmp              rax, r8
                                                                                        je    .Lx421_41
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_41:
                        lea              r9, [rbp + 1920]
.Lx421_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx421_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        cmp              esi, 1
                                                                                        jne   .Lx421_57
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_57:
                        cmp              esi, 2
                                                                                        jne   .Lx421_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_58:
                        cmp              eax, 13
                                                                                        jne   .Lx421_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        cmp              rax, r9
                                                                                        je    .Lx421_43
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_43:
                        cmp              r8, r9
                                                                                        je    .Lx421_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_44
                        cmp              eax, 99
                                                                                        je    .Lx421_44
                        cmp              eax, 13
                                                                                        jne   .Lx421_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx421_44
                                                                                        jmp   .Lx421_45
.Lx421_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_53
                        cmp              eax, 99
                                                                                        je    .Lx421_53
                        cmp              eax, 13
                                                                                        jne   .Lx421_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx421_53
                                                                                        jmp   .Lx421_46
.Lx421_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx421_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx421_53
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
                                                                                        jmp   .Lx421_51
.Lx421_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_47
                        cmp              eax, 99
                                                                                        je    .Lx421_47
                        cmp              eax, 13
                                                                                        jne   .Lx421_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx421_47
                                                                                        jmp   .Lx421_48
.Lx421_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx421_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx421_53
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
                                                                                        jmp   .Lx421_51
.Lx421_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx421_49
                        cmp              edx, 14
                                                                                        je    .Lx421_53
                                                                                        jmp   .Lx421_52
.Lx421_49:
                        cmp              edx, 14
                                                                                        je    .Lx421_52
                        cmp              ecx, 7
                                                                                        je    .Lx421_53
                        cmp              edx, 7
                                                                                        je    .Lx421_53
                        cmp              ecx, 6
                                                                                        jne   .Lx421_50
                        cmp              edx, 6
                                                                                        jne   .Lx421_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx421_51
                                                                                        jmp   .Lx421_52
.Lx421_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx421_53
.Lx421_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx421_54
.Lx421_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx421_54
.Lx421_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx421_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n314_op11_α
                                                                                        jmp   n339_suspend_α
n335_op11_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n340_lit_string_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n341_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n342_op11_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n339_suspend_α:
                        lea              rax, [rip + n339_suspend_β]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n339_suspend_β:
                                                                                        jmp   n314_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n343_lit_string_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "emscripten"
#-----------------------------------------------------------------------------------------------------------------------
n341_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n344_op11_α
n341_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n342_op11_α:
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
                                                                                        je    n347_op11_α
                                                                                        jmp   n346_var_ref_α
n342_op11_β:
                                                                                        jmp   n347_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n348_op11_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n344_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx432_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx432_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx432_41
                        cmp              esi, 1
                                                                                        jne   .Lx432_55
                        mov              r8, rax
                                                                                        jmp   .Lx432_40
.Lx432_55:
                        cmp              esi, 2
                                                                                        jne   .Lx432_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx432_41
                        mov              r8, rax
                                                                                        jmp   .Lx432_40
.Lx432_56:
                        cmp              eax, 13
                                                                                        jne   .Lx432_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx432_41
                        cmp              rax, r8
                                                                                        je    .Lx432_41
                        mov              r8, rax
                                                                                        jmp   .Lx432_40
.Lx432_41:
                        lea              r9, [rbp + 1088]
.Lx432_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx432_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx432_43
                        cmp              esi, 1
                                                                                        jne   .Lx432_57
                        mov              r9, rax
                                                                                        jmp   .Lx432_42
.Lx432_57:
                        cmp              esi, 2
                                                                                        jne   .Lx432_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx432_43
                        mov              r9, rax
                                                                                        jmp   .Lx432_42
.Lx432_58:
                        cmp              eax, 13
                                                                                        jne   .Lx432_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx432_43
                        cmp              rax, r9
                                                                                        je    .Lx432_43
                        mov              r9, rax
                                                                                        jmp   .Lx432_42
.Lx432_43:
                        cmp              r8, r9
                                                                                        je    .Lx432_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx432_44
                        cmp              eax, 99
                                                                                        je    .Lx432_44
                        cmp              eax, 13
                                                                                        jne   .Lx432_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx432_44
                                                                                        jmp   .Lx432_45
.Lx432_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx432_53
                        cmp              eax, 99
                                                                                        je    .Lx432_53
                        cmp              eax, 13
                                                                                        jne   .Lx432_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx432_53
                                                                                        jmp   .Lx432_46
.Lx432_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx432_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx432_53
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
                                                                                        jmp   .Lx432_51
.Lx432_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx432_47
                        cmp              eax, 99
                                                                                        je    .Lx432_47
                        cmp              eax, 13
                                                                                        jne   .Lx432_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx432_47
                                                                                        jmp   .Lx432_48
.Lx432_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx432_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx432_53
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
                                                                                        jmp   .Lx432_51
.Lx432_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx432_49
                        cmp              edx, 14
                                                                                        je    .Lx432_53
                                                                                        jmp   .Lx432_52
.Lx432_49:
                        cmp              edx, 14
                                                                                        je    .Lx432_52
                        cmp              ecx, 7
                                                                                        je    .Lx432_53
                        cmp              edx, 7
                                                                                        je    .Lx432_53
                        cmp              ecx, 6
                                                                                        jne   .Lx432_50
                        cmp              edx, 6
                                                                                        jne   .Lx432_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx432_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx432_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx432_51
                                                                                        jmp   .Lx432_52
.Lx432_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx432_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx432_53
.Lx432_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx432_54
.Lx432_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx432_54
.Lx432_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx432_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n349_var_ref_α
n344_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
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
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n330_var_ref_α
n345_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n350_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n347_op11_α:
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
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   proc_$2C$2F2_ω
n347_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n348_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n328_op11_α
                                                                                        jmp   n351_op11_α
n348_op11_β:
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n352_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n353_var_ref_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "or_dept"
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1392]
                        lea              r8, [rbp + 1392]
.Lx441_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx441_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx441_41
                        cmp              esi, 1
                                                                                        jne   .Lx441_55
                        mov              r8, rax
                                                                                        jmp   .Lx441_40
.Lx441_55:
                        cmp              esi, 2
                                                                                        jne   .Lx441_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx441_41
                        mov              r8, rax
                                                                                        jmp   .Lx441_40
.Lx441_56:
                        cmp              eax, 13
                                                                                        jne   .Lx441_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx441_41
                        cmp              rax, r8
                                                                                        je    .Lx441_41
                        mov              r8, rax
                                                                                        jmp   .Lx441_40
.Lx441_41:
                        lea              r9, [rbp + 1408]
.Lx441_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx441_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx441_43
                        cmp              esi, 1
                                                                                        jne   .Lx441_57
                        mov              r9, rax
                                                                                        jmp   .Lx441_42
.Lx441_57:
                        cmp              esi, 2
                                                                                        jne   .Lx441_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx441_43
                        mov              r9, rax
                                                                                        jmp   .Lx441_42
.Lx441_58:
                        cmp              eax, 13
                                                                                        jne   .Lx441_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx441_43
                        cmp              rax, r9
                                                                                        je    .Lx441_43
                        mov              r9, rax
                                                                                        jmp   .Lx441_42
.Lx441_43:
                        cmp              r8, r9
                                                                                        je    .Lx441_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx441_44
                        cmp              eax, 99
                                                                                        je    .Lx441_44
                        cmp              eax, 13
                                                                                        jne   .Lx441_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx441_44
                                                                                        jmp   .Lx441_45
.Lx441_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx441_53
                        cmp              eax, 99
                                                                                        je    .Lx441_53
                        cmp              eax, 13
                                                                                        jne   .Lx441_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx441_53
                                                                                        jmp   .Lx441_46
.Lx441_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx441_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx441_53
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
                                                                                        jmp   .Lx441_51
.Lx441_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx441_47
                        cmp              eax, 99
                                                                                        je    .Lx441_47
                        cmp              eax, 13
                                                                                        jne   .Lx441_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx441_47
                                                                                        jmp   .Lx441_48
.Lx441_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx441_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx441_53
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
                                                                                        jmp   .Lx441_51
.Lx441_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx441_49
                        cmp              edx, 14
                                                                                        je    .Lx441_53
                                                                                        jmp   .Lx441_52
.Lx441_49:
                        cmp              edx, 14
                                                                                        je    .Lx441_52
                        cmp              ecx, 7
                                                                                        je    .Lx441_53
                        cmp              edx, 7
                                                                                        je    .Lx441_53
                        cmp              ecx, 6
                                                                                        jne   .Lx441_50
                        cmp              edx, 6
                                                                                        jne   .Lx441_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx441_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx441_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx441_51
                                                                                        jmp   .Lx441_52
.Lx441_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx441_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx441_53
.Lx441_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx441_54
.Lx441_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx441_54
.Lx441_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx441_54:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n328_op11_α
                                                                                        jmp   n354_suspend_α
n351_op11_β:
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n355_lit_string_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n356_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n354_suspend_α:
                        lea              rax, [rip + n354_suspend_β]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n354_suspend_β:
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n357_lit_string_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n356_op11_α:
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
                                                                                        je    n347_op11_α
                                                                                        jmp   n358_op11_α
n356_op11_β:
                                                                                        jmp   n347_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n359_lit_string_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "windows"
#-----------------------------------------------------------------------------------------------------------------------
n358_op11_α:
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
.Lx450_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx450_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_41
                        cmp              esi, 1
                                                                                        jne   .Lx450_55
                        mov              r8, rax
                                                                                        jmp   .Lx450_40
.Lx450_55:
                        cmp              esi, 2
                                                                                        jne   .Lx450_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx450_41
                        mov              r8, rax
                                                                                        jmp   .Lx450_40
.Lx450_56:
                        cmp              eax, 13
                                                                                        jne   .Lx450_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_41
                        cmp              rax, r8
                                                                                        je    .Lx450_41
                        mov              r8, rax
                                                                                        jmp   .Lx450_40
.Lx450_41:
                        lea              r9, [rbp + 352]
.Lx450_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx450_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_43
                        cmp              esi, 1
                                                                                        jne   .Lx450_57
                        mov              r9, rax
                                                                                        jmp   .Lx450_42
.Lx450_57:
                        cmp              esi, 2
                                                                                        jne   .Lx450_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx450_43
                        mov              r9, rax
                                                                                        jmp   .Lx450_42
.Lx450_58:
                        cmp              eax, 13
                                                                                        jne   .Lx450_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_43
                        cmp              rax, r9
                                                                                        je    .Lx450_43
                        mov              r9, rax
                                                                                        jmp   .Lx450_42
.Lx450_43:
                        cmp              r8, r9
                                                                                        je    .Lx450_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_44
                        cmp              eax, 99
                                                                                        je    .Lx450_44
                        cmp              eax, 13
                                                                                        jne   .Lx450_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx450_44
                                                                                        jmp   .Lx450_45
.Lx450_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_53
                        cmp              eax, 99
                                                                                        je    .Lx450_53
                        cmp              eax, 13
                                                                                        jne   .Lx450_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx450_53
                                                                                        jmp   .Lx450_46
.Lx450_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx450_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx450_53
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
                                                                                        jmp   .Lx450_51
.Lx450_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_47
                        cmp              eax, 99
                                                                                        je    .Lx450_47
                        cmp              eax, 13
                                                                                        jne   .Lx450_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx450_47
                                                                                        jmp   .Lx450_48
.Lx450_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx450_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx450_53
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
                                                                                        jmp   .Lx450_51
.Lx450_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx450_49
                        cmp              edx, 14
                                                                                        je    .Lx450_53
                                                                                        jmp   .Lx450_52
.Lx450_49:
                        cmp              edx, 14
                                                                                        je    .Lx450_52
                        cmp              ecx, 7
                                                                                        je    .Lx450_53
                        cmp              edx, 7
                                                                                        je    .Lx450_53
                        cmp              ecx, 6
                                                                                        jne   .Lx450_50
                        cmp              edx, 6
                                                                                        jne   .Lx450_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx450_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx450_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx450_51
                                                                                        jmp   .Lx450_52
.Lx450_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx450_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx450_53
.Lx450_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx450_54
.Lx450_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx450_54
.Lx450_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx450_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n347_op11_α
                                                                                        jmp   n360_var_ref_α
n358_op11_β:
                                                                                        jmp   n347_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n361_op11_α
.Lx451_0:
                        .quad            .Lx451_0_s
.Lx451_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n362_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n363_lit_string_α
n361_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n364_lit_string_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n365_lit_string_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n366_lit_string_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "windows"
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n367_lit_string_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "build_type"
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n368_op11_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n369_op11_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "Debug"
#-----------------------------------------------------------------------------------------------------------------------
n368_op11_α:
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
                                                                                        je    n347_op11_α
                                                                                        jmp   n370_op11_α
n368_op11_β:
                                                                                        jmp   n347_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n369_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n371_op11_α
n369_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n370_op11_α:
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
                        lea              r9, [rbp + 160]
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n347_op11_α
                                                                                        jmp   n372_suspend_α
n370_op11_β:
                                                                                        jmp   n347_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n371_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 744]
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
                                                                                        je    n345_op11_α
                                                                                        jmp   n373_op11_α
n371_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n372_suspend_α:
                        lea              rax, [rip + n372_suspend_β]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n372_suspend_β:
                                                                                        jmp   n347_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n373_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 656]
                        lea              r8, [rbp + 656]
.Lx467_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        cmp              esi, 1
                                                                                        jne   .Lx467_55
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_55:
                        cmp              esi, 2
                                                                                        jne   .Lx467_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_56:
                        cmp              eax, 13
                                                                                        jne   .Lx467_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        cmp              rax, r8
                                                                                        je    .Lx467_41
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_41:
                        lea              r9, [rbp + 672]
.Lx467_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        cmp              esi, 1
                                                                                        jne   .Lx467_57
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_57:
                        cmp              esi, 2
                                                                                        jne   .Lx467_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_58:
                        cmp              eax, 13
                                                                                        jne   .Lx467_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        cmp              rax, r9
                                                                                        je    .Lx467_43
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_43:
                        cmp              r8, r9
                                                                                        je    .Lx467_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_44
                        cmp              eax, 99
                                                                                        je    .Lx467_44
                        cmp              eax, 13
                                                                                        jne   .Lx467_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx467_44
                                                                                        jmp   .Lx467_45
.Lx467_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_53
                        cmp              eax, 99
                                                                                        je    .Lx467_53
                        cmp              eax, 13
                                                                                        jne   .Lx467_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_53
                                                                                        jmp   .Lx467_46
.Lx467_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx467_53
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
                                                                                        jmp   .Lx467_51
.Lx467_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_47
                        cmp              eax, 99
                                                                                        je    .Lx467_47
                        cmp              eax, 13
                                                                                        jne   .Lx467_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_47
                                                                                        jmp   .Lx467_48
.Lx467_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx467_53
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
                                                                                        jmp   .Lx467_51
.Lx467_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx467_49
                        cmp              edx, 14
                                                                                        je    .Lx467_53
                                                                                        jmp   .Lx467_52
.Lx467_49:
                        cmp              edx, 14
                                                                                        je    .Lx467_52
                        cmp              ecx, 7
                                                                                        je    .Lx467_53
                        cmp              edx, 7
                                                                                        je    .Lx467_53
                        cmp              ecx, 6
                                                                                        jne   .Lx467_50
                        cmp              edx, 6
                                                                                        jne   .Lx467_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx467_51
                                                                                        jmp   .Lx467_52
.Lx467_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx467_53
.Lx467_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx467_54
.Lx467_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx467_54
.Lx467_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx467_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n374_suspend_α
n373_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n374_suspend_α:
                        lea              rax, [rip + n374_suspend_β]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n374_suspend_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_β:
                                                                                        jmp   qword ptr [rbp + 2352]
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$2C$2F2_res]
                        push             rax
                        mov              rax, [rbp + 2392]
                        mov              rbp, [rbp + 2408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_ω:
                        mov              rax, [rbp + 2400]
                        lea              rsp, [rbp + 2416]
                        mov              rbp, [rbp + 2408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cp$2F0_α
proc_cp$2F0_α:
                        .global          proc_cp$2F0_α
                        .global          proc_cp$2F0_β
                        .global          proc_cp$2F0_γ
                        .global          proc_cp$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_cp$2F0_α_body:
                        lea              rax, [rip + n471_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx475_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx475_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx475_101
.Lx475_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx475_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_cp$2F0_ω
                                                                                        jmp   n471_suspend_α
n470_op11_β:
                                                                                        jmp   proc_cp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n471_suspend_α:
                        lea              rax, [rip + n471_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_cp$2F0_γ
n471_suspend_β:
                                                                                        jmp   n472_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n472_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_cp$2F0_ω
                                                                                        jmp   n473_suspend_α
n472_op11_β:
                                                                                        jmp   proc_cp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n473_suspend_α:
                        lea              rax, [rip + n473_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_cp$2F0_γ
n473_suspend_β:
                                                                                        jmp   n474_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n474_op11_α:
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
                                                                                        je    proc_cp$2F0_ω
                                                                                        jmp   proc_cp$2F0_ω
n474_op11_β:
                                                                                        jmp   proc_cp$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cp$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cp$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_cp$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_cp$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cp$2F0_ω:
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
                        lea              rax, [rip + n485_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n482_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx487_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx487_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx487_101
.Lx487_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx487_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n483_lit_string_α
n482_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n484_call_proc_staged_α
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n484_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx490_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx490_21
.Lx490_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx490_21:
                        mov              rdi, qword ptr [rip + .Lx490_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx490_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx490_3]
                        lea              rdx, [rip + .Lx490_4]
                                                                                        jmp   rax
.Lx490_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx490_2
.Lx490_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx490_2
.Lx490_1:
                        call             rt_faildescr@PLT
.Lx490_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n486_op11_α
                                                                                        jmp   n485_suspend_α
n484_call_proc_staged_β:
                                                                                        jmp   n486_op11_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n485_suspend_α:
                        lea              rax, [rip + n485_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n485_suspend_β:
                                                                                        jmp   n484_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n486_op11_α:
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
n486_op11_β:
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
                        lea              rax, [rip + n505_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n494_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx506_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx506_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx506_101
.Lx506_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx506_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n495_lit_string_α
n494_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n496_lit_string_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "test_ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n497_lit_string_α
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n498_lit_string_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n499_lit_integer_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "test_ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n500_op11_α
.Lx511_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
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
                                                                                        jmp   n501_lit_string_α
n500_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n502_op11_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n502_op11_α:
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
                                                                                        je    n504_op11_α
                                                                                        jmp   n503_call_proc_staged_α
n502_op11_β:
                                                                                        jmp   n504_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n503_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx516_21
.Lx516_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx516_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx516_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx516_23
.Lx516_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx516_23:
                        mov              rdi, qword ptr [rip + .Lx516_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx516_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx516_3]
                        lea              rdx, [rip + .Lx516_4]
                                                                                        jmp   rax
.Lx516_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx516_2
.Lx516_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx516_2
.Lx516_1:
                        call             rt_faildescr@PLT
.Lx516_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n504_op11_α
                                                                                        jmp   n505_suspend_α
n503_call_proc_staged_β:
                                                                                        jmp   n504_op11_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n504_op11_α:
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
n504_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n505_suspend_α:
                        lea              rax, [rip + n505_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n505_suspend_β:
                                                                                        jmp   n503_call_proc_staged_β
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
                        .globl           proc_$3D$2F2_α
proc_$3D$2F2_α:
                        .global          proc_$3D$2F2_α
                        .global          proc_$3D$2F2_β
                        .global          proc_$3D$2F2_γ
                        .global          proc_$3D$2F2_ω
                        sub              rsp, 1184
                        mov              [rsp + 1160], rcx
                        mov              [rsp + 1168], rdx
                        mov              [rsp + 1176], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1152
                        call             rt_jmp_frame_lexprep2@PLT
proc_$3D$2F2_α_body:
                        lea              rax, [rip + n530_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n520_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx561_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx561_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx561_101
.Lx561_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx561_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3D$2F2_ω
                                                                                        jmp   n521_var_ref_α
n520_op11_β:
                                                                                        jmp   proc_$3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n522_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n523_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n523_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1056]
                        lea              r8, [rbp + 1056]
.Lx566_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx566_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx566_41
                        cmp              esi, 1
                                                                                        jne   .Lx566_55
                        mov              r8, rax
                                                                                        jmp   .Lx566_40
.Lx566_55:
                        cmp              esi, 2
                                                                                        jne   .Lx566_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx566_41
                        mov              r8, rax
                                                                                        jmp   .Lx566_40
.Lx566_56:
                        cmp              eax, 13
                                                                                        jne   .Lx566_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx566_41
                        cmp              rax, r8
                                                                                        je    .Lx566_41
                        mov              r8, rax
                                                                                        jmp   .Lx566_40
.Lx566_41:
                        lea              r9, [rbp + 1072]
.Lx566_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx566_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx566_43
                        cmp              esi, 1
                                                                                        jne   .Lx566_57
                        mov              r9, rax
                                                                                        jmp   .Lx566_42
.Lx566_57:
                        cmp              esi, 2
                                                                                        jne   .Lx566_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx566_43
                        mov              r9, rax
                                                                                        jmp   .Lx566_42
.Lx566_58:
                        cmp              eax, 13
                                                                                        jne   .Lx566_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx566_43
                        cmp              rax, r9
                                                                                        je    .Lx566_43
                        mov              r9, rax
                                                                                        jmp   .Lx566_42
.Lx566_43:
                        cmp              r8, r9
                                                                                        je    .Lx566_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx566_44
                        cmp              eax, 99
                                                                                        je    .Lx566_44
                        cmp              eax, 13
                                                                                        jne   .Lx566_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx566_44
                                                                                        jmp   .Lx566_45
.Lx566_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx566_53
                        cmp              eax, 99
                                                                                        je    .Lx566_53
                        cmp              eax, 13
                                                                                        jne   .Lx566_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx566_53
                                                                                        jmp   .Lx566_46
.Lx566_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx566_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx566_53
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
                                                                                        jmp   .Lx566_51
.Lx566_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx566_47
                        cmp              eax, 99
                                                                                        je    .Lx566_47
                        cmp              eax, 13
                                                                                        jne   .Lx566_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx566_47
                                                                                        jmp   .Lx566_48
.Lx566_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx566_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx566_53
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
                                                                                        jmp   .Lx566_51
.Lx566_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx566_49
                        cmp              edx, 14
                                                                                        je    .Lx566_53
                                                                                        jmp   .Lx566_52
.Lx566_49:
                        cmp              edx, 14
                                                                                        je    .Lx566_52
                        cmp              ecx, 7
                                                                                        je    .Lx566_53
                        cmp              edx, 7
                                                                                        je    .Lx566_53
                        cmp              ecx, 6
                                                                                        jne   .Lx566_50
                        cmp              edx, 6
                                                                                        jne   .Lx566_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx566_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx566_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx566_51
                                                                                        jmp   .Lx566_52
.Lx566_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx566_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx566_53
.Lx566_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx566_54
.Lx566_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx566_54
.Lx566_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx566_54:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n525_op11_α
                                                                                        jmp   n524_var_ref_α
n523_op11_β:
                                                                                        jmp   n525_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n526_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n525_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3D$2F2_ω
                                                                                        jmp   n527_var_ref_α
n525_op11_β:
                                                                                        jmp   proc_$3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n528_op11_α
.Lx570_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n529_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n528_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        movabs           rsi, 1000
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n525_op11_α
                                                                                        jmp   n530_suspend_α
n528_op11_β:
                                                                                        jmp   n525_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n531_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n530_suspend_α:
                        lea              rax, [rip + n530_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$3D$2F2_γ
n530_suspend_β:
                                                                                        jmp   n525_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n531_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lx578_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx578_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx578_41
                        cmp              esi, 1
                                                                                        jne   .Lx578_55
                        mov              r8, rax
                                                                                        jmp   .Lx578_40
.Lx578_55:
                        cmp              esi, 2
                                                                                        jne   .Lx578_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx578_41
                        mov              r8, rax
                                                                                        jmp   .Lx578_40
.Lx578_56:
                        cmp              eax, 13
                                                                                        jne   .Lx578_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx578_41
                        cmp              rax, r8
                                                                                        je    .Lx578_41
                        mov              r8, rax
                                                                                        jmp   .Lx578_40
.Lx578_41:
                        lea              r9, [rbp + 864]
.Lx578_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx578_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx578_43
                        cmp              esi, 1
                                                                                        jne   .Lx578_57
                        mov              r9, rax
                                                                                        jmp   .Lx578_42
.Lx578_57:
                        cmp              esi, 2
                                                                                        jne   .Lx578_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx578_43
                        mov              r9, rax
                                                                                        jmp   .Lx578_42
.Lx578_58:
                        cmp              eax, 13
                                                                                        jne   .Lx578_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx578_43
                        cmp              rax, r9
                                                                                        je    .Lx578_43
                        mov              r9, rax
                                                                                        jmp   .Lx578_42
.Lx578_43:
                        cmp              r8, r9
                                                                                        je    .Lx578_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx578_44
                        cmp              eax, 99
                                                                                        je    .Lx578_44
                        cmp              eax, 13
                                                                                        jne   .Lx578_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx578_44
                                                                                        jmp   .Lx578_45
.Lx578_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx578_53
                        cmp              eax, 99
                                                                                        je    .Lx578_53
                        cmp              eax, 13
                                                                                        jne   .Lx578_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx578_53
                                                                                        jmp   .Lx578_46
.Lx578_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx578_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx578_53
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
                                                                                        jmp   .Lx578_51
.Lx578_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx578_47
                        cmp              eax, 99
                                                                                        je    .Lx578_47
                        cmp              eax, 13
                                                                                        jne   .Lx578_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx578_47
                                                                                        jmp   .Lx578_48
.Lx578_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx578_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx578_53
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
                                                                                        jmp   .Lx578_51
.Lx578_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx578_49
                        cmp              edx, 14
                                                                                        je    .Lx578_53
                                                                                        jmp   .Lx578_52
.Lx578_49:
                        cmp              edx, 14
                                                                                        je    .Lx578_52
                        cmp              ecx, 7
                                                                                        je    .Lx578_53
                        cmp              edx, 7
                                                                                        je    .Lx578_53
                        cmp              ecx, 6
                                                                                        jne   .Lx578_50
                        cmp              edx, 6
                                                                                        jne   .Lx578_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx578_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx578_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx578_51
                                                                                        jmp   .Lx578_52
.Lx578_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx578_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx578_53
.Lx578_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx578_54
.Lx578_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx578_54
.Lx578_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx578_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n533_op11_α
                                                                                        jmp   n532_var_ref_α
n531_op11_β:
                                                                                        jmp   n533_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n534_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n533_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3D$2F2_ω
                                                                                        jmp   n535_var_ref_α
n533_op11_β:
                                                                                        jmp   proc_$3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n536_op11_α
.Lx582_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n537_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n536_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        movabs           rsi, 1000
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n533_op11_α
                                                                                        jmp   n538_suspend_α
n536_op11_β:
                                                                                        jmp   n533_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n539_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n538_suspend_α:
                        lea              rax, [rip + n538_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$3D$2F2_γ
n538_suspend_β:
                                                                                        jmp   n533_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n539_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 640]
                        lea              r8, [rbp + 640]
.Lx590_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx590_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx590_41
                        cmp              esi, 1
                                                                                        jne   .Lx590_55
                        mov              r8, rax
                                                                                        jmp   .Lx590_40
.Lx590_55:
                        cmp              esi, 2
                                                                                        jne   .Lx590_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx590_41
                        mov              r8, rax
                                                                                        jmp   .Lx590_40
.Lx590_56:
                        cmp              eax, 13
                                                                                        jne   .Lx590_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx590_41
                        cmp              rax, r8
                                                                                        je    .Lx590_41
                        mov              r8, rax
                                                                                        jmp   .Lx590_40
.Lx590_41:
                        lea              r9, [rbp + 656]
.Lx590_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx590_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx590_43
                        cmp              esi, 1
                                                                                        jne   .Lx590_57
                        mov              r9, rax
                                                                                        jmp   .Lx590_42
.Lx590_57:
                        cmp              esi, 2
                                                                                        jne   .Lx590_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx590_43
                        mov              r9, rax
                                                                                        jmp   .Lx590_42
.Lx590_58:
                        cmp              eax, 13
                                                                                        jne   .Lx590_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx590_43
                        cmp              rax, r9
                                                                                        je    .Lx590_43
                        mov              r9, rax
                                                                                        jmp   .Lx590_42
.Lx590_43:
                        cmp              r8, r9
                                                                                        je    .Lx590_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx590_44
                        cmp              eax, 99
                                                                                        je    .Lx590_44
                        cmp              eax, 13
                                                                                        jne   .Lx590_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx590_44
                                                                                        jmp   .Lx590_45
.Lx590_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx590_53
                        cmp              eax, 99
                                                                                        je    .Lx590_53
                        cmp              eax, 13
                                                                                        jne   .Lx590_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx590_53
                                                                                        jmp   .Lx590_46
.Lx590_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx590_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx590_53
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
                                                                                        jmp   .Lx590_51
.Lx590_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx590_47
                        cmp              eax, 99
                                                                                        je    .Lx590_47
                        cmp              eax, 13
                                                                                        jne   .Lx590_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx590_47
                                                                                        jmp   .Lx590_48
.Lx590_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx590_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx590_53
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
                                                                                        jmp   .Lx590_51
.Lx590_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx590_49
                        cmp              edx, 14
                                                                                        je    .Lx590_53
                                                                                        jmp   .Lx590_52
.Lx590_49:
                        cmp              edx, 14
                                                                                        je    .Lx590_52
                        cmp              ecx, 7
                                                                                        je    .Lx590_53
                        cmp              edx, 7
                                                                                        je    .Lx590_53
                        cmp              ecx, 6
                                                                                        jne   .Lx590_50
                        cmp              edx, 6
                                                                                        jne   .Lx590_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx590_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx590_51
                                                                                        jmp   .Lx590_52
.Lx590_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx590_53
.Lx590_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx590_54
.Lx590_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx590_54
.Lx590_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx590_54:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n541_op11_α
                                                                                        jmp   n540_var_ref_α
n539_op11_β:
                                                                                        jmp   n541_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n542_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n541_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3D$2F2_ω
                                                                                        jmp   n543_var_ref_α
n541_op11_β:
                                                                                        jmp   proc_$3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n544_op11_α
.Lx594_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n543_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n545_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n544_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        movabs           rsi, 1000
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n541_op11_α
                                                                                        jmp   n546_suspend_α
n544_op11_β:
                                                                                        jmp   n541_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n547_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n546_suspend_α:
                        lea              rax, [rip + n546_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$3D$2F2_γ
n546_suspend_β:
                                                                                        jmp   n541_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n547_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        lea              r8, [rbp + 432]
.Lx602_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx602_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx602_41
                        cmp              esi, 1
                                                                                        jne   .Lx602_55
                        mov              r8, rax
                                                                                        jmp   .Lx602_40
.Lx602_55:
                        cmp              esi, 2
                                                                                        jne   .Lx602_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx602_41
                        mov              r8, rax
                                                                                        jmp   .Lx602_40
.Lx602_56:
                        cmp              eax, 13
                                                                                        jne   .Lx602_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx602_41
                        cmp              rax, r8
                                                                                        je    .Lx602_41
                        mov              r8, rax
                                                                                        jmp   .Lx602_40
.Lx602_41:
                        lea              r9, [rbp + 448]
.Lx602_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx602_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx602_43
                        cmp              esi, 1
                                                                                        jne   .Lx602_57
                        mov              r9, rax
                                                                                        jmp   .Lx602_42
.Lx602_57:
                        cmp              esi, 2
                                                                                        jne   .Lx602_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx602_43
                        mov              r9, rax
                                                                                        jmp   .Lx602_42
.Lx602_58:
                        cmp              eax, 13
                                                                                        jne   .Lx602_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx602_43
                        cmp              rax, r9
                                                                                        je    .Lx602_43
                        mov              r9, rax
                                                                                        jmp   .Lx602_42
.Lx602_43:
                        cmp              r8, r9
                                                                                        je    .Lx602_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx602_44
                        cmp              eax, 99
                                                                                        je    .Lx602_44
                        cmp              eax, 13
                                                                                        jne   .Lx602_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx602_44
                                                                                        jmp   .Lx602_45
.Lx602_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx602_53
                        cmp              eax, 99
                                                                                        je    .Lx602_53
                        cmp              eax, 13
                                                                                        jne   .Lx602_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx602_53
                                                                                        jmp   .Lx602_46
.Lx602_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx602_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx602_53
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
                                                                                        jmp   .Lx602_51
.Lx602_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx602_47
                        cmp              eax, 99
                                                                                        je    .Lx602_47
                        cmp              eax, 13
                                                                                        jne   .Lx602_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx602_47
                                                                                        jmp   .Lx602_48
.Lx602_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx602_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx602_53
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
                                                                                        jmp   .Lx602_51
.Lx602_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx602_49
                        cmp              edx, 14
                                                                                        je    .Lx602_53
                                                                                        jmp   .Lx602_52
.Lx602_49:
                        cmp              edx, 14
                                                                                        je    .Lx602_52
                        cmp              ecx, 7
                                                                                        je    .Lx602_53
                        cmp              edx, 7
                                                                                        je    .Lx602_53
                        cmp              ecx, 6
                                                                                        jne   .Lx602_50
                        cmp              edx, 6
                                                                                        jne   .Lx602_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx602_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx602_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx602_51
                                                                                        jmp   .Lx602_52
.Lx602_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx602_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx602_53
.Lx602_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx602_54
.Lx602_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx602_54
.Lx602_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx602_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n549_op11_α
                                                                                        jmp   n548_var_ref_α
n547_op11_β:
                                                                                        jmp   n549_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n550_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n549_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3D$2F2_ω
                                                                                        jmp   n551_var_ref_α
n549_op11_β:
                                                                                        jmp   proc_$3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n552_op11_α
.Lx606_0:
                        .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n553_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n552_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 5000
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n549_op11_α
                                                                                        jmp   n554_suspend_α
n552_op11_β:
                                                                                        jmp   n549_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n555_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n554_suspend_α:
                        lea              rax, [rip + n554_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$3D$2F2_γ
n554_suspend_β:
                                                                                        jmp   n549_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n555_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        lea              r8, [rbp + 224]
.Lx614_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx614_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx614_41
                        cmp              esi, 1
                                                                                        jne   .Lx614_55
                        mov              r8, rax
                                                                                        jmp   .Lx614_40
.Lx614_55:
                        cmp              esi, 2
                                                                                        jne   .Lx614_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx614_41
                        mov              r8, rax
                                                                                        jmp   .Lx614_40
.Lx614_56:
                        cmp              eax, 13
                                                                                        jne   .Lx614_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx614_41
                        cmp              rax, r8
                                                                                        je    .Lx614_41
                        mov              r8, rax
                                                                                        jmp   .Lx614_40
.Lx614_41:
                        lea              r9, [rbp + 240]
.Lx614_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx614_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx614_43
                        cmp              esi, 1
                                                                                        jne   .Lx614_57
                        mov              r9, rax
                                                                                        jmp   .Lx614_42
.Lx614_57:
                        cmp              esi, 2
                                                                                        jne   .Lx614_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx614_43
                        mov              r9, rax
                                                                                        jmp   .Lx614_42
.Lx614_58:
                        cmp              eax, 13
                                                                                        jne   .Lx614_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx614_43
                        cmp              rax, r9
                                                                                        je    .Lx614_43
                        mov              r9, rax
                                                                                        jmp   .Lx614_42
.Lx614_43:
                        cmp              r8, r9
                                                                                        je    .Lx614_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx614_44
                        cmp              eax, 99
                                                                                        je    .Lx614_44
                        cmp              eax, 13
                                                                                        jne   .Lx614_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx614_44
                                                                                        jmp   .Lx614_45
.Lx614_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx614_53
                        cmp              eax, 99
                                                                                        je    .Lx614_53
                        cmp              eax, 13
                                                                                        jne   .Lx614_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx614_53
                                                                                        jmp   .Lx614_46
.Lx614_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx614_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx614_53
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
                                                                                        jmp   .Lx614_51
.Lx614_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx614_47
                        cmp              eax, 99
                                                                                        je    .Lx614_47
                        cmp              eax, 13
                                                                                        jne   .Lx614_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx614_47
                                                                                        jmp   .Lx614_48
.Lx614_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx614_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx614_53
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
                                                                                        jmp   .Lx614_51
.Lx614_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx614_49
                        cmp              edx, 14
                                                                                        je    .Lx614_53
                                                                                        jmp   .Lx614_52
.Lx614_49:
                        cmp              edx, 14
                                                                                        je    .Lx614_52
                        cmp              ecx, 7
                                                                                        je    .Lx614_53
                        cmp              edx, 7
                                                                                        je    .Lx614_53
                        cmp              ecx, 6
                                                                                        jne   .Lx614_50
                        cmp              edx, 6
                                                                                        jne   .Lx614_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx614_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx614_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx614_51
                                                                                        jmp   .Lx614_52
.Lx614_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx614_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx614_53
.Lx614_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx614_54
.Lx614_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx614_54
.Lx614_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx614_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n557_op11_α
                                                                                        jmp   n556_var_ref_α
n555_op11_β:
                                                                                        jmp   n557_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n558_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n557_op11_α:
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
                                                                                        je    proc_$3D$2F2_ω
                                                                                        jmp   proc_$3D$2F2_ω
n557_op11_β:
                                                                                        jmp   proc_$3D$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n559_op11_α
.Lx618_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n559_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 10
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n557_op11_α
                                                                                        jmp   n560_suspend_α
n559_op11_β:
                                                                                        jmp   n557_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n560_suspend_α:
                        lea              rax, [rip + n560_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$3D$2F2_γ
n560_suspend_β:
                                                                                        jmp   n557_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$3D$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$3D$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1120]
#-----------------------------------------------------------------------------------------------------------------------
proc_$3D$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$3D$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1160]
                        mov              rbp, [rbp + 1176]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$3D$2F2_ω:
                        mov              rax, [rbp + 1168]
                        lea              rsp, [rbp + 1184]
                        mov              rbp, [rbp + 1176]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_ch_shift$2F0_α
proc_test_ch_shift$2F0_α:
                        .global          proc_test_ch_shift$2F0_α
                        .global          proc_test_ch_shift$2F0_β
                        .global          proc_test_ch_shift$2F0_γ
                        .global          proc_test_ch_shift$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_ch_shift$2F0_α_body:
                        lea              rax, [rip + n629_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n622_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx630_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx630_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx630_101
.Lx630_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx630_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_ch_shift$2F0_ω
                                                                                        jmp   n623_lit_string_α
n622_op11_β:
                                                                                        jmp   proc_test_ch_shift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n624_lit_string_α
.Lx631_0:
                        .quad            .Lx631_0_s
.Lx631_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n625_lit_string_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n626_op11_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n626_op11_α:
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
                                                                                        je    n628_op11_α
                                                                                        jmp   n627_call_proc_staged_α
n626_op11_β:
                                                                                        jmp   n628_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n627_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx636_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx636_21
.Lx636_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx636_21:
                        mov              rdi, qword ptr [rip + .Lx636_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx636_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx636_3]
                        lea              rdx, [rip + .Lx636_4]
                                                                                        jmp   rax
.Lx636_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx636_2
.Lx636_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx636_2
.Lx636_1:
                        call             rt_faildescr@PLT
.Lx636_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n628_op11_α
                                                                                        jmp   n629_suspend_α
n627_call_proc_staged_β:
                                                                                        jmp   n628_op11_α
.Lx636_0:
                        .quad            .Lx636_0_s
.Lx636_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n628_op11_α:
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
                                                                                        je    proc_test_ch_shift$2F0_ω
                                                                                        jmp   proc_test_ch_shift$2F0_ω
n628_op11_β:
                                                                                        jmp   proc_test_ch_shift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n629_suspend_α:
                        lea              rax, [rip + n629_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_ch_shift$2F0_γ
n629_suspend_β:
                                                                                        jmp   n627_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_ch_shift$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_ch_shift$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_ch_shift$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_ch_shift$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_ch_shift$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
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
                        lea              rax, [rip + n643_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n640_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx645_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx645_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx645_101
.Lx645_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx645_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n641_lit_string_α
n640_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n642_call_proc_staged_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n642_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx648_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx648_21
.Lx648_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx648_21:
                        mov              rdi, qword ptr [rip + .Lx648_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx648_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx648_3]
                        lea              rdx, [rip + .Lx648_4]
                                                                                        jmp   rax
.Lx648_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx648_2
.Lx648_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx648_2
.Lx648_1:
                        call             rt_faildescr@PLT
.Lx648_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n644_op11_α
                                                                                        jmp   n643_suspend_α
n642_call_proc_staged_β:
                                                                                        jmp   n644_op11_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n643_suspend_α:
                        lea              rax, [rip + n643_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n643_suspend_β:
                                                                                        jmp   n642_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n644_op11_α:
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
n644_op11_β:
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
                        lea              rax, [rip + n658_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n652_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx659_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx659_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx659_101
.Lx659_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx659_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n653_lit_string_α
n652_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n653_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n654_lit_string_α
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n655_op11_α
.Lx661_0:
                        .quad            .Lx661_0_s
.Lx661_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n655_op11_α:
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
                                                                                        je    n657_op11_α
                                                                                        jmp   n656_call_proc_staged_α
n655_op11_β:
                                                                                        jmp   n657_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n656_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx664_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx664_21
.Lx664_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx664_21:
                        mov              rdi, qword ptr [rip + .Lx664_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx664_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx664_3]
                        lea              rdx, [rip + .Lx664_4]
                                                                                        jmp   rax
.Lx664_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx664_2
.Lx664_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx664_2
.Lx664_1:
                        call             rt_faildescr@PLT
.Lx664_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n657_op11_α
                                                                                        jmp   n658_suspend_α
n656_call_proc_staged_β:
                                                                                        jmp   n657_op11_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n657_op11_α:
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
n657_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n658_suspend_α:
                        lea              rax, [rip + n658_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n658_suspend_β:
                                                                                        jmp   n656_call_proc_staged_β
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
                        .globl           proc_a$2F0_α
proc_a$2F0_α:
                        .global          proc_a$2F0_α
                        .global          proc_a$2F0_β
                        .global          proc_a$2F0_γ
                        .global          proc_a$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_a$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n668_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx672_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx672_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx672_101
.Lx672_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx672_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_a$2F0_ω
                                                                                        jmp   n669_move_label_α
n668_op11_β:
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n669_move_label_α:
                        lea              rax, [rip + n670_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_a$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n670_op11_α:
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
                                                                                        je    proc_a$2F0_ω
                                                                                        jmp   proc_a$2F0_ω
n670_op11_β:
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n671_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n671_disjunction_β:
                                                                                        jmp   proc_a$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_β:
                                                                                        jmp   n671_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx678_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx678_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_a$2F0_α_body
.Lx678_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx678_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test2_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_test2_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "local_stack_expansion_many_chp/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_local_stack_expansion_many_chp$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 480
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
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "lshift/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_lshift$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "lshift/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_lshift$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "make_or/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_make_or$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1024
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_make_or$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "test2_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_test2_1$2F0_α]
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
.Lstartup_pname8:       .string          "or_dept/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_or_dept$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_or_dept$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          ",/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_$2C$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "cp/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_cp$2F0_α]
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
.Lstartup_pname11:      .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "=/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_$3D$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1152
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "test_ch_shift/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_test_ch_shift$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "a/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_a$2F0_α]
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
                        lea              rsi, [rip + proc_a$2F0_dcα]
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
                        sub              rsp, 72
                        mov              rdi, rsp
                        mov              ecx, 72
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n680_call_proc_staged_α
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "ch_shift"
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx683_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx683_21
.Lx683_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx683_21:
                        mov              rdi, qword ptr [rip + .Lx683_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx683_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx683_3]
                        lea              rdx, [rip + .Lx683_4]
                                                                                        jmp   rax
.Lx683_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx683_2
.Lx683_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx683_2
.Lx683_1:
                        call             rt_faildescr@PLT
.Lx683_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n680_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
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
