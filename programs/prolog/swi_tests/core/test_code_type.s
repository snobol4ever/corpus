                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
                        .global          proc_test$2F1_α
                        .global          proc_test$2F1_β
                        .global          proc_test$2F1_γ
                        .global          proc_test$2F1_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F1_α_body:
                        lea              rax, [rip + n9_suspend_β]
                        mov              qword ptr [rbp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx10_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx10_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx10_101
.Lx10_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx10_101:
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n3_op11_α
.Lx13_0:
                        .quad            .Lx13_0_s
.Lx13_0_s:
                        .string          "code_type"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx14_2]
                                                                                        jmp   .Lx14_3
.Lx14_2:
                        .quad            .Lx14_2_s
.Lx14_2_s:
                        .string          "code_type"
.Lx14_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_call_proc_staged_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              edi, 20
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx16_1
                        lea              rcx, [rip + .Lx16_3]
                        lea              rdx, [rip + .Lx16_4]
                                                                                        jmp   rax
.Lx16_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx16_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx16_2
.Lx16_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx16_2
.Lx16_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx16_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx16_2
.Lx16_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx16_2
.Lx16_1:
                        call             rt_faildescr@PLT
.Lx16_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n6_call_proc_staged_α
n4_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "assert_ct/0"
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
n6_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx19_1
                        lea              rcx, [rip + .Lx19_3]
                        lea              rdx, [rip + .Lx19_4]
                                                                                        jmp   rax
.Lx19_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx19_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx19_2
.Lx19_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx19_2
.Lx19_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx19_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx19_2
.Lx19_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx19_2
.Lx19_1:
                        call             rt_faildescr@PLT
.Lx19_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n4_call_proc_staged_β
                                                                                        jmp   n7_lit_string_α
n6_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "gen/0"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n8_op11_α
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "retractall/1"
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn22:               .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n6_call_proc_staged_β
                                                                                        jmp   n9_suspend_α
n8_op11_β:
                                                                                        jmp   n6_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n9_suspend_α:
                        lea              rax, [rip + n9_suspend_β]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n9_suspend_β:
                                                                                        jmp   n6_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 320]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 344]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$bag_group$2F3_α
proc_$bag_group$2F3_α:
                        .global          proc_$bag_group$2F3_α
                        .global          proc_$bag_group$2F3_β
                        .global          proc_$bag_group$2F3_γ
                        .global          proc_$bag_group$2F3_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_$bag_group$2F3_α_body:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n28_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx36_60:
                        .section         .rodata
.Lbynamegenfn14:        .string          "$bag_group"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn14]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$bag_group$2F3_ω
                                                                                        jmp   n29_suspend_α
n28_call_builtin_gen_β:
                                                                                        jmp   .Lx36_60
#-----------------------------------------------------------------------------------------------------------------------
n29_suspend_α:
                        lea              rax, [rip + n29_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$bag_group$2F3_γ
n29_suspend_β:
                                                                                        jmp   n28_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$bag_group$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$bag_group$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_$bag_group$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$bag_group$2F3_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$bag_group$2F3_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gen$2F2_α
proc_gen$2F2_α:
                        .global          proc_gen$2F2_α
                        .global          proc_gen$2F2_β
                        .global          proc_gen$2F2_γ
                        .global          proc_gen$2F2_ω
                        sub              rsp, 3248
                        mov              [rsp + 3224], rcx
                        mov              [rsp + 3232], rdx
                        mov              [rsp + 3240], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3008
                        mov              edx, 3216
                        call             rt_jmp_frame_lexprep2@PLT
proc_gen$2F2_α_body:
                        lea              rax, [rip + n90_suspend_β]
                        mov              qword ptr [rbp + 3008], rax
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
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
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx129_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_gen$2F2_ω
                                                                                        jmp   n40_var_ref_α
n39_op11_β:
                                                                                        jmp   proc_gen$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2944]
                        lea              r8, [rbp + 2944]
.Lx134_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx134_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        cmp              esi, 1
                                                                                        jne   .Lx134_55
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_55:
                        cmp              esi, 2
                                                                                        jne   .Lx134_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_56:
                        cmp              eax, 13
                                                                                        jne   .Lx134_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        cmp              rax, r8
                                                                                        je    .Lx134_41
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_41:
                        lea              r9, [rbp + 2960]
.Lx134_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx134_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        cmp              esi, 1
                                                                                        jne   .Lx134_57
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_57:
                        cmp              esi, 2
                                                                                        jne   .Lx134_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_58:
                        cmp              eax, 13
                                                                                        jne   .Lx134_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        cmp              rax, r9
                                                                                        je    .Lx134_43
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_43:
                        cmp              r8, r9
                                                                                        je    .Lx134_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_44
                        cmp              eax, 99
                                                                                        je    .Lx134_44
                        cmp              eax, 13
                                                                                        jne   .Lx134_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx134_44
                                                                                        jmp   .Lx134_45
.Lx134_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_53
                        cmp              eax, 99
                                                                                        je    .Lx134_53
                        cmp              eax, 13
                                                                                        jne   .Lx134_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx134_53
                                                                                        jmp   .Lx134_46
.Lx134_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx134_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx134_53
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
                                                                                        jmp   .Lx134_51
.Lx134_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_47
                        cmp              eax, 99
                                                                                        je    .Lx134_47
                        cmp              eax, 13
                                                                                        jne   .Lx134_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx134_47
                                                                                        jmp   .Lx134_48
.Lx134_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx134_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx134_53
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
                                                                                        jmp   .Lx134_51
.Lx134_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx134_49
                        cmp              edx, 14
                                                                                        je    .Lx134_53
                                                                                        jmp   .Lx134_52
.Lx134_49:
                        cmp              edx, 14
                                                                                        je    .Lx134_52
                        cmp              ecx, 7
                                                                                        je    .Lx134_53
                        cmp              edx, 7
                                                                                        je    .Lx134_53
                        cmp              ecx, 6
                                                                                        jne   .Lx134_50
                        cmp              edx, 6
                                                                                        jne   .Lx134_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx134_51
                                                                                        jmp   .Lx134_52
.Lx134_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx134_53
.Lx134_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx134_54
.Lx134_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx134_54
.Lx134_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx134_54:
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n43_var_ref_α
n42_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
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
                                                                                        je    proc_gen$2F2_ω
                                                                                        jmp   proc_gen$2F2_ω
n44_op11_β:
                                                                                        jmp   proc_gen$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2864]
                        lea              r8, [rbp + 2864]
.Lx140_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx140_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx140_41
                        cmp              esi, 1
                                                                                        jne   .Lx140_55
                        mov              r8, rax
                                                                                        jmp   .Lx140_40
.Lx140_55:
                        cmp              esi, 2
                                                                                        jne   .Lx140_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx140_41
                        mov              r8, rax
                                                                                        jmp   .Lx140_40
.Lx140_56:
                        cmp              eax, 13
                                                                                        jne   .Lx140_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx140_41
                        cmp              rax, r8
                                                                                        je    .Lx140_41
                        mov              r8, rax
                                                                                        jmp   .Lx140_40
.Lx140_41:
                        lea              r9, [rbp + 2880]
.Lx140_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx140_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx140_43
                        cmp              esi, 1
                                                                                        jne   .Lx140_57
                        mov              r9, rax
                                                                                        jmp   .Lx140_42
.Lx140_57:
                        cmp              esi, 2
                                                                                        jne   .Lx140_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx140_43
                        mov              r9, rax
                                                                                        jmp   .Lx140_42
.Lx140_58:
                        cmp              eax, 13
                                                                                        jne   .Lx140_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx140_43
                        cmp              rax, r9
                                                                                        je    .Lx140_43
                        mov              r9, rax
                                                                                        jmp   .Lx140_42
.Lx140_43:
                        cmp              r8, r9
                                                                                        je    .Lx140_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx140_44
                        cmp              eax, 99
                                                                                        je    .Lx140_44
                        cmp              eax, 13
                                                                                        jne   .Lx140_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx140_44
                                                                                        jmp   .Lx140_45
.Lx140_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx140_53
                        cmp              eax, 99
                                                                                        je    .Lx140_53
                        cmp              eax, 13
                                                                                        jne   .Lx140_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx140_53
                                                                                        jmp   .Lx140_46
.Lx140_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx140_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx140_53
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
                                                                                        jmp   .Lx140_51
.Lx140_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx140_47
                        cmp              eax, 99
                                                                                        je    .Lx140_47
                        cmp              eax, 13
                                                                                        jne   .Lx140_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx140_47
                                                                                        jmp   .Lx140_48
.Lx140_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx140_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx140_53
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
                                                                                        jmp   .Lx140_51
.Lx140_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx140_49
                        cmp              edx, 14
                                                                                        je    .Lx140_53
                                                                                        jmp   .Lx140_52
.Lx140_49:
                        cmp              edx, 14
                                                                                        je    .Lx140_52
                        cmp              ecx, 7
                                                                                        je    .Lx140_53
                        cmp              edx, 7
                                                                                        je    .Lx140_53
                        cmp              ecx, 6
                                                                                        jne   .Lx140_50
                        cmp              edx, 6
                                                                                        jne   .Lx140_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx140_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx140_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx140_51
                                                                                        jmp   .Lx140_52
.Lx140_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx140_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx140_53
.Lx140_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx140_54
.Lx140_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx140_54
.Lx140_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx140_54:
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n47_var_ref_α
n46_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n49_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_20
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx146_21
.Lx146_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        call             rt_arg_stage@PLT
.Lx146_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_22
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx146_23
.Lx146_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        call             rt_arg_stage@PLT
.Lx146_23:
                        mov              rdi, qword ptr [rip + .Lx146_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx146_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx146_3]
                        lea              rdx, [rip + .Lx146_4]
                                                                                        jmp   rax
.Lx146_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx146_2
.Lx146_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx146_2
.Lx146_1:
                        call             rt_faildescr@PLT
.Lx146_2:
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n50_op11_α
n49_call_proc_staged_β:
                                                                                        jmp   n44_op11_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "varnumbers/2"
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        .section         .rodata
.Lrkfn148:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n51_var_ref_α
n50_op11_β:
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n56_op11_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n57_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1776]
                        mov              rsi, qword ptr [rip + .Lx158_2]
                                                                                        jmp   .Lx158_3
.Lx158_2:
                        .quad            .Lx158_2_s
.Lx158_2_s:
                        .string          "[]"
.Lx158_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n58_op11_α
n56_op11_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n57_call_proc_staged_α:
                        mov              qword ptr [rbp + 2672], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_20
                        mov              rax, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx160_21
.Lx160_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        call             rt_arg_stage@PLT
.Lx160_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_22
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx160_23
.Lx160_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        call             rt_arg_stage@PLT
.Lx160_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_24
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx160_25
.Lx160_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        call             rt_arg_stage@PLT
.Lx160_25:
                        mov              edi, 5
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx160_1
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4]
                                                                                        jmp   rax
.Lx160_3:
                        mov              qword ptr [rbp + 2680], rsp
                        mov              rax, qword ptr [rbp + 2672]
                        test             rax, rax
                                                                                        jne   .Lx160_5
                        mov              qword ptr [rbp + 2672], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_4:
                        mov              rax, qword ptr [rbp + 2672]
                        test             rax, rax
                                                                                        jne   .Lx160_6
                        mov              qword ptr [rbp + 2672], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_1:
                        call             rt_faildescr@PLT
.Lx160_2:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n60_op11_α
                                                                                        jmp   n59_lit_string_α
n57_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2680]
                                                                                        jmp   qword ptr [rsp]
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "t_code_type/3"
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        .section         .rodata
.Lrkfn162:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n62_var_ref_α
                                                                                        jmp   n61_var_ref_α
n58_op11_β:
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n63_lit_string_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lrkfn165:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n64_var_ref_α
n60_op11_β:
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n65_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n67_var_ref_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "$bagkey"
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n69_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n70_op11_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2272]
                        lea              r8, [rbp + 2272]
.Lx178_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx178_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        cmp              esi, 1
                                                                                        jne   .Lx178_55
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_55:
                        cmp              esi, 2
                                                                                        jne   .Lx178_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_56:
                        cmp              eax, 13
                                                                                        jne   .Lx178_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_41
                        cmp              rax, r8
                                                                                        je    .Lx178_41
                        mov              r8, rax
                                                                                        jmp   .Lx178_40
.Lx178_41:
                        lea              r9, [rbp + 2288]
.Lx178_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx178_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        cmp              esi, 1
                                                                                        jne   .Lx178_57
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_57:
                        cmp              esi, 2
                                                                                        jne   .Lx178_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_58:
                        cmp              eax, 13
                                                                                        jne   .Lx178_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx178_43
                        cmp              rax, r9
                                                                                        je    .Lx178_43
                        mov              r9, rax
                                                                                        jmp   .Lx178_42
.Lx178_43:
                        cmp              r8, r9
                                                                                        je    .Lx178_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_44
                        cmp              eax, 99
                                                                                        je    .Lx178_44
                        cmp              eax, 13
                                                                                        jne   .Lx178_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx178_44
                                                                                        jmp   .Lx178_45
.Lx178_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_53
                        cmp              eax, 99
                                                                                        je    .Lx178_53
                        cmp              eax, 13
                                                                                        jne   .Lx178_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx178_53
                                                                                        jmp   .Lx178_46
.Lx178_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx178_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx178_53
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
                                                                                        jmp   .Lx178_51
.Lx178_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx178_47
                        cmp              eax, 99
                                                                                        je    .Lx178_47
                        cmp              eax, 13
                                                                                        jne   .Lx178_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx178_47
                                                                                        jmp   .Lx178_48
.Lx178_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx178_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx178_53
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
                                                                                        jmp   .Lx178_51
.Lx178_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx178_49
                        cmp              edx, 14
                                                                                        je    .Lx178_53
                                                                                        jmp   .Lx178_52
.Lx178_49:
                        cmp              edx, 14
                                                                                        je    .Lx178_52
                        cmp              ecx, 7
                                                                                        je    .Lx178_53
                        cmp              edx, 7
                                                                                        je    .Lx178_53
                        cmp              ecx, 6
                                                                                        jne   .Lx178_50
                        cmp              edx, 6
                                                                                        jne   .Lx178_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx178_51
                                                                                        jmp   .Lx178_52
.Lx178_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx178_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx178_53
.Lx178_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx178_54
.Lx178_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx178_54
.Lx178_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx178_54:
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n72_var_ref_α
n68_op11_β:
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_proc_staged_α:
                        mov              qword ptr [rbp + 1696], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx180_20
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx180_21
.Lx180_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        call             rt_arg_stage@PLT
.Lx180_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx180_22
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx180_23
.Lx180_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        call             rt_arg_stage@PLT
.Lx180_23:
                        mov              edi, 22
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx180_1
                        lea              rcx, [rip + .Lx180_3]
                        lea              rdx, [rip + .Lx180_4]
                                                                                        jmp   rax
.Lx180_3:
                        mov              qword ptr [rbp + 1704], rsp
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx180_5
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx180_2
.Lx180_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx180_2
.Lx180_4:
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx180_6
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx180_2
.Lx180_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx180_2
.Lx180_1:
                        call             rt_faildescr@PLT
.Lx180_2:
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n73_lit_string_α
n69_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1704]
                                                                                        jmp   qword ptr [rsp]
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "ct/2"
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              rsi, qword ptr [rip + .Lx181_2]
                                                                                        jmp   .Lx181_3
.Lx181_2:
                        .quad            .Lx181_2_s
.Lx181_2_s:
                        .string          "[]"
.Lx181_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n75_var_ref_α
n70_op11_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n76_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n77_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n78_lit_string_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn188:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn188]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n62_var_ref_α
                                                                                        jmp   n79_var_ref_α
n74_op11_β:
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2456], rax
                        lea              rdi, [rbp + 2416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    proc_gen$2F2_ω
                                                                                        jmp   n81_var_ref_α
n76_op11_β:
                                                                                        jmp   proc_gen$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n83_var_ref_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "$bagkey"
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn202:              .string          "$bag_prep_s"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n87_var_ref_α
n82_op11_β:
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1344]
                        lea              r8, [rbp + 1344]
.Lx205_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx205_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx205_41
                        cmp              rax, r8
                                                                                        je    .Lx205_41
                        mov              r8, rax
                                                                                        jmp   .Lx205_40
.Lx205_41:
                        lea              r9, [rbp + 1360]
.Lx205_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx205_44
                        cmp              eax, 13
                                                                                        jne   .Lx205_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx205_44
                                                                                        jmp   .Lx205_45
.Lx205_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx205_53
                        cmp              eax, 99
                                                                                        je    .Lx205_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx205_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx205_49
                        cmp              edx, 14
                                                                                        je    .Lx205_53
                                                                                        jmp   .Lx205_52
.Lx205_49:
                        cmp              edx, 14
                                                                                        je    .Lx205_52
                        cmp              ecx, 7
                                                                                        je    .Lx205_53
                        cmp              edx, 7
                                                                                        je    .Lx205_53
                        cmp              ecx, 6
                                                                                        jne   .Lx205_50
                        cmp              edx, 6
                                                                                        jne   .Lx205_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx205_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx205_54
.Lx205_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx205_54:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n62_var_ref_α
                                                                                        jmp   n89_var_ref_α
n84_op11_β:
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn207:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rbp + 800]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n91_var_ref_α
                                                                                        jmp   n90_suspend_α
n85_op11_β:
                                                                                        jmp   n91_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n92_op11_α
n86_op11_β:
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    proc_gen$2F2_ω
                                                                                        jmp   n94_var_ref_α
n88_op11_β:
                                                                                        jmp   proc_gen$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n95_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_suspend_α:
                        lea              rax, [rip + n90_suspend_β]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gen$2F2_γ
n90_suspend_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn219:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n57_call_proc_staged_β
n92_op11_β:
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n97_var_ref_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "$bagkey"
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n98_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3104]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n62_var_ref_α
                                                                                        jmp   n102_op11_α
n98_op11_β:
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn231:              .string          "$bag_prep_s"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n62_var_ref_α
                                                                                        jmp   n103_var_ref_α
n99_op11_β:
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n105_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn237:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n62_var_ref_α
                                                                                        jmp   n69_call_proc_staged_β
n102_op11_β:
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx241_20
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx241_21
.Lx241_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx241_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx241_22
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx241_23
.Lx241_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx241_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx241_24
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx241_25
.Lx241_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx241_25:
                        mov              rdi, qword ptr [rip + .Lx241_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx241_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx241_3]
                        lea              rdx, [rip + .Lx241_4]
                                                                                        jmp   rax
.Lx241_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx241_2
.Lx241_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx241_2
.Lx241_1:
                        call             rt_faildescr@PLT
.Lx241_2:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n107_var_ref_α
n104_call_proc_staged_β:
                                                                                        jmp   n49_call_proc_staged_β
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "ord_subtract/3"
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
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
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n108_var_ref_α
n105_op11_β:
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n109_var_ref_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "$bagkey"
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n111_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        mov              qword ptr [rbp + 1904], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx253_20
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx253_21
.Lx253_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        call             rt_arg_stage@PLT
.Lx253_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx253_22
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx253_23
.Lx253_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        call             rt_arg_stage@PLT
.Lx253_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx253_24
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx253_25
.Lx253_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        call             rt_arg_stage@PLT
.Lx253_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx253_1
                        lea              rcx, [rip + .Lx253_3]
                        lea              rdx, [rip + .Lx253_4]
                                                                                        jmp   rax
.Lx253_3:
                        mov              qword ptr [rbp + 1912], rsp
                        mov              rax, qword ptr [rbp + 1904]
                        test             rax, rax
                                                                                        jne   .Lx253_5
                        mov              qword ptr [rbp + 1904], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx253_2
.Lx253_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx253_2
.Lx253_4:
                        mov              rax, qword ptr [rbp + 1904]
                        test             rax, rax
                                                                                        jne   .Lx253_6
                        mov              qword ptr [rbp + 1904], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx253_2
.Lx253_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx253_2
.Lx253_1:
                        call             rt_faildescr@PLT
.Lx253_2:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n52_var_ref_α
                                                                                        jmp   n58_op11_α
n111_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1912]
                                                                                        jmp   qword ptr [rsp]
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "$bag_group/3"
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n62_var_ref_α
                                                                                        jmp   n114_var_ref_α
n112_op11_β:
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n115_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n116_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx260_20
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx260_21
.Lx260_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx260_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx260_22
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx260_23
.Lx260_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx260_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx260_24
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx260_25
.Lx260_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx260_25:
                        mov              rdi, qword ptr [rip + .Lx260_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx260_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx260_3]
                        lea              rdx, [rip + .Lx260_4]
                                                                                        jmp   rax
.Lx260_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx260_2
.Lx260_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx260_2
.Lx260_1:
                        call             rt_faildescr@PLT
.Lx260_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n104_call_proc_staged_β
                                                                                        jmp   n117_lit_string_α
n115_call_proc_staged_β:
                                                                                        jmp   n104_call_proc_staged_β
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "ord_subtract/3"
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        mov              qword ptr [rbp + 1008], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_20
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx262_21
.Lx262_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx262_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_22
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx262_23
.Lx262_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx262_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_24
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx262_25
.Lx262_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx262_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx262_1
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4]
                                                                                        jmp   rax
.Lx262_3:
                        mov              qword ptr [rbp + 1016], rsp
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx262_5
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_4:
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx262_6
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_1:
                        call             rt_faildescr@PLT
.Lx262_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n62_var_ref_α
                                                                                        jmp   n75_var_ref_α
n116_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1016]
                                                                                        jmp   qword ptr [rsp]
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "$bag_group/3"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n118_lit_string_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "ERROR: code_type ~p: Add: ~p, Del: ~p~n"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n119_var_ref_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n121_var_ref_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n123_var_ref_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n125_op11_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_gen$2F2_ω
                                                                                        jmp   n126_op11_α
n125_op11_β:
                                                                                        jmp   proc_gen$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    proc_gen$2F2_ω
                                                                                        jmp   n127_op11_α
n126_op11_β:
                                                                                        jmp   proc_gen$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n128_op11_α
n127_op11_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn278:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n115_call_proc_staged_β
                                                                                        jmp   n115_call_proc_staged_β
n128_op11_β:
                                                                                        jmp   n115_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gen$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gen$2F2_β:
                                                                                        jmp   qword ptr [rbp + 3008]
#-----------------------------------------------------------------------------------------------------------------------
proc_gen$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gen$2F2_res]
                        push             rax
                        mov              rax, [rbp + 3224]
                        mov              rbp, [rbp + 3240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gen$2F2_ω:
                        mov              rax, [rbp + 3232]
                        lea              rsp, [rbp + 3248]
                        mov              rbp, [rbp + 3240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gen$2F0_α
proc_gen$2F0_α:
                        .global          proc_gen$2F0_α
                        .global          proc_gen$2F0_β
                        .global          proc_gen$2F0_γ
                        .global          proc_gen$2F0_ω
                        sub              rsp, 1104
                        mov              [rsp + 1080], rcx
                        mov              [rsp + 1088], rdx
                        mov              [rsp + 1096], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 960
                        mov              edx, 1072
                        call             rt_jmp_frame_lexprep2@PLT
proc_gen$2F0_α_body:
                        lea              rax, [rip + n308_suspend_β]
                        mov              qword ptr [rbp + 960], rax
#-----------------------------------------------------------------------------------------------------------------------
n279_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx309_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx309_101
.Lx309_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx309_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_gen$2F0_ω
                                                                                        jmp   n280_op11_α
n279_op11_β:
                                                                                        jmp   proc_gen$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n280_op11_α:
                        .section         .rodata
.Lrkfn311:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn311]
                        lea              rsi, [rbp + 688]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n281_var_ref_α
n280_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n283_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n282_op11_α:
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
                                                                                        je    proc_gen$2F0_ω
                                                                                        jmp   proc_gen$2F0_ω
n282_op11_β:
                                                                                        jmp   proc_gen$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n283_call_proc_staged_α:
                        mov              qword ptr [rbp + 912], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx316_20
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx316_21
.Lx316_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        call             rt_arg_stage@PLT
.Lx316_21:
                        mov              edi, 8
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx316_1
                        lea              rcx, [rip + .Lx316_3]
                        lea              rdx, [rip + .Lx316_4]
                                                                                        jmp   rax
.Lx316_3:
                        mov              qword ptr [rbp + 920], rsp
                        mov              rax, qword ptr [rbp + 912]
                        test             rax, rax
                                                                                        jne   .Lx316_5
                        mov              qword ptr [rbp + 912], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx316_2
.Lx316_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx316_2
.Lx316_4:
                        mov              rax, qword ptr [rbp + 912]
                        test             rax, rax
                                                                                        jne   .Lx316_6
                        mov              qword ptr [rbp + 912], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx316_2
.Lx316_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx316_2
.Lx316_1:
                        call             rt_faildescr@PLT
.Lx316_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n285_op11_α
                                                                                        jmp   n284_var_α
n283_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 920]
                                                                                        jmp   qword ptr [rsp]
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "gen_t/1"
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n286_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n285_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn320:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n287_var_ref_α
n285_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn322:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rbp + 832]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n283_call_proc_staged_β
n286_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 768]
                        lea              r8, [rbp + 768]
.Lx325_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx325_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        cmp              esi, 1
                                                                                        jne   .Lx325_55
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_55:
                        cmp              esi, 2
                                                                                        jne   .Lx325_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_56:
                        cmp              eax, 13
                                                                                        jne   .Lx325_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        cmp              rax, r8
                                                                                        je    .Lx325_41
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_41:
                        lea              r9, [rbp + 784]
.Lx325_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx325_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        cmp              esi, 1
                                                                                        jne   .Lx325_57
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_57:
                        cmp              esi, 2
                                                                                        jne   .Lx325_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_58:
                        cmp              eax, 13
                                                                                        jne   .Lx325_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        cmp              rax, r9
                                                                                        je    .Lx325_43
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_43:
                        cmp              r8, r9
                                                                                        je    .Lx325_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_44
                        cmp              eax, 99
                                                                                        je    .Lx325_44
                        cmp              eax, 13
                                                                                        jne   .Lx325_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx325_44
                                                                                        jmp   .Lx325_45
.Lx325_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_53
                        cmp              eax, 99
                                                                                        je    .Lx325_53
                        cmp              eax, 13
                                                                                        jne   .Lx325_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx325_53
                                                                                        jmp   .Lx325_46
.Lx325_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx325_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx325_53
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
                                                                                        jmp   .Lx325_51
.Lx325_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_47
                        cmp              eax, 99
                                                                                        je    .Lx325_47
                        cmp              eax, 13
                                                                                        jne   .Lx325_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx325_47
                                                                                        jmp   .Lx325_48
.Lx325_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx325_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx325_53
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
                                                                                        jmp   .Lx325_51
.Lx325_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx325_49
                        cmp              edx, 14
                                                                                        je    .Lx325_53
                                                                                        jmp   .Lx325_52
.Lx325_49:
                        cmp              edx, 14
                                                                                        je    .Lx325_52
                        cmp              ecx, 7
                                                                                        je    .Lx325_53
                        cmp              edx, 7
                                                                                        je    .Lx325_53
                        cmp              ecx, 6
                                                                                        jne   .Lx325_50
                        cmp              edx, 6
                                                                                        jne   .Lx325_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx325_51
                                                                                        jmp   .Lx325_52
.Lx325_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx325_53
.Lx325_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx325_54
.Lx325_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx325_54
.Lx325_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx325_54:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n289_var_ref_α
n288_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n291_op11_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n291_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn330:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]
                        lea              rsi, [rbp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n292_var_ref_α
n291_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n294_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n294_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn336:              .string          "$sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n295_op11_α
n294_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n295_op11_α:
                        .section         .rodata
.Lrkfn338:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 272]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n296_var_ref_α
n295_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n297_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n298_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_proc_staged_α:
                        lea              rsi, [rbp + 480]
                        lea              rdx, [rbp + 496]
                        call             proc_test_range$2F2_dcα
                                                                                        jmp   .Lx344_2
.Lx344_2:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n300_var_ref_α
                                                                                        jmp   n299_var_α
n298_call_proc_staged_β:
                                                                                        jmp   n300_var_ref_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "test_range/2"
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n301_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n302_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n301_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn350:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rbp + 368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n298_call_proc_staged_β
n301_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n302_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn352:              .string          "$agg_max"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n303_lit_string_α
n302_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n304_var_ref_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "gen"
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n305_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n305_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n306_var_ref_α
n305_op11_β:
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n307_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx360_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx360_21
.Lx360_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx360_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx360_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx360_23
.Lx360_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx360_23:
                        mov              rdi, qword ptr [rip + .Lx360_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx360_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx360_3]
                        lea              rdx, [rip + .Lx360_4]
                                                                                        jmp   rax
.Lx360_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx360_2
.Lx360_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx360_2
.Lx360_1:
                        call             rt_faildescr@PLT
.Lx360_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n282_op11_α
                                                                                        jmp   n308_suspend_α
n307_call_proc_staged_β:
                                                                                        jmp   n282_op11_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "maplist/2"
#-----------------------------------------------------------------------------------------------------------------------
n308_suspend_α:
                        lea              rax, [rip + n308_suspend_β]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gen$2F0_γ
n308_suspend_β:
                                                                                        jmp   n307_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gen$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gen$2F0_β:
                                                                                        jmp   qword ptr [rbp + 960]
#-----------------------------------------------------------------------------------------------------------------------
proc_gen$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gen$2F0_res]
                        push             rax
                        mov              rax, [rbp + 1080]
                        mov              rbp, [rbp + 1096]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gen$2F0_ω:
                        mov              rax, [rbp + 1088]
                        lea              rsp, [rbp + 1104]
                        mov              rbp, [rbp + 1096]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_between$2F3_α
proc_between$2F3_α:
                        .global          proc_between$2F3_α
                        .global          proc_between$2F3_β
                        .global          proc_between$2F3_γ
                        .global          proc_between$2F3_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_between$2F3_α_body:
                        lea              rax, [rip + n367_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n365_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n366_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx374_60:
                        .section         .rodata
.Lbynamegenfn139:       .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn139]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_between$2F3_ω
                                                                                        jmp   n367_suspend_α
n366_call_builtin_gen_β:
                                                                                        jmp   .Lx374_60
#-----------------------------------------------------------------------------------------------------------------------
n367_suspend_α:
                        lea              rax, [rip + n367_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_between$2F3_γ
n367_suspend_β:
                                                                                        jmp   n366_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_between$2F3_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_t_code_type$2F3_α
proc_t_code_type$2F3_α:
                        .global          proc_t_code_type$2F3_α
                        .global          proc_t_code_type$2F3_β
                        .global          proc_t_code_type$2F3_γ
                        .global          proc_t_code_type$2F3_ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 784
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_t_code_type$2F3_α_body:
                        lea              rax, [rip + n402_suspend_β]
                        mov              qword ptr [rbp + 784], rax
#-----------------------------------------------------------------------------------------------------------------------
n377_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx403_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx403_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx403_101
.Lx403_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx403_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_t_code_type$2F3_ω
                                                                                        jmp   n378_var_ref_α
n377_op11_β:
                                                                                        jmp   proc_t_code_type$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n379_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n380_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n380_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx408_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx408_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        cmp              rax, r8
                                                                                        je    .Lx408_41
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_41:
                        lea              r9, [rbp + 736]
.Lx408_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx408_44
                        cmp              eax, 13
                                                                                        jne   .Lx408_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx408_44
                                                                                        jmp   .Lx408_45
.Lx408_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_53
                        cmp              eax, 99
                                                                                        je    .Lx408_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx408_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx408_49
                        cmp              edx, 14
                                                                                        je    .Lx408_53
                                                                                        jmp   .Lx408_52
.Lx408_49:
                        cmp              edx, 14
                                                                                        je    .Lx408_52
                        cmp              ecx, 7
                                                                                        je    .Lx408_53
                        cmp              edx, 7
                                                                                        je    .Lx408_53
                        cmp              ecx, 6
                                                                                        jne   .Lx408_50
                        cmp              edx, 6
                                                                                        jne   .Lx408_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx408_54
.Lx408_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx408_54:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n382_op11_α
                                                                                        jmp   n381_var_ref_α
n380_op11_β:
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n383_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n382_op11_α:
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
                                                                                        je    proc_t_code_type$2F3_ω
                                                                                        jmp   proc_t_code_type$2F3_ω
n382_op11_β:
                                                                                        jmp   proc_t_code_type$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n384_op11_α:
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
.Lx414_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx414_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx414_41
                        cmp              esi, 1
                                                                                        jne   .Lx414_55
                        mov              r8, rax
                                                                                        jmp   .Lx414_40
.Lx414_55:
                        cmp              esi, 2
                                                                                        jne   .Lx414_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx414_41
                        mov              r8, rax
                                                                                        jmp   .Lx414_40
.Lx414_56:
                        cmp              eax, 13
                                                                                        jne   .Lx414_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx414_41
                        cmp              rax, r8
                                                                                        je    .Lx414_41
                        mov              r8, rax
                                                                                        jmp   .Lx414_40
.Lx414_41:
                        lea              r9, [rbp + 656]
.Lx414_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx414_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx414_43
                        cmp              esi, 1
                                                                                        jne   .Lx414_57
                        mov              r9, rax
                                                                                        jmp   .Lx414_42
.Lx414_57:
                        cmp              esi, 2
                                                                                        jne   .Lx414_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx414_43
                        mov              r9, rax
                                                                                        jmp   .Lx414_42
.Lx414_58:
                        cmp              eax, 13
                                                                                        jne   .Lx414_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx414_43
                        cmp              rax, r9
                                                                                        je    .Lx414_43
                        mov              r9, rax
                                                                                        jmp   .Lx414_42
.Lx414_43:
                        cmp              r8, r9
                                                                                        je    .Lx414_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx414_44
                        cmp              eax, 99
                                                                                        je    .Lx414_44
                        cmp              eax, 13
                                                                                        jne   .Lx414_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx414_44
                                                                                        jmp   .Lx414_45
.Lx414_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx414_53
                        cmp              eax, 99
                                                                                        je    .Lx414_53
                        cmp              eax, 13
                                                                                        jne   .Lx414_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx414_53
                                                                                        jmp   .Lx414_46
.Lx414_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx414_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx414_53
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
                                                                                        jmp   .Lx414_51
.Lx414_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx414_47
                        cmp              eax, 99
                                                                                        je    .Lx414_47
                        cmp              eax, 13
                                                                                        jne   .Lx414_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx414_47
                                                                                        jmp   .Lx414_48
.Lx414_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx414_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx414_53
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
                                                                                        jmp   .Lx414_51
.Lx414_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx414_49
                        cmp              edx, 14
                                                                                        je    .Lx414_53
                                                                                        jmp   .Lx414_52
.Lx414_49:
                        cmp              edx, 14
                                                                                        je    .Lx414_52
                        cmp              ecx, 7
                                                                                        je    .Lx414_53
                        cmp              edx, 7
                                                                                        je    .Lx414_53
                        cmp              ecx, 6
                                                                                        jne   .Lx414_50
                        cmp              edx, 6
                                                                                        jne   .Lx414_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx414_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx414_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx414_51
                                                                                        jmp   .Lx414_52
.Lx414_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx414_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx414_53
.Lx414_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx414_54
.Lx414_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx414_54
.Lx414_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx414_54:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n382_op11_α
                                                                                        jmp   n385_var_ref_α
n384_op11_β:
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n386_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx419_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx419_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx419_41
                        cmp              esi, 1
                                                                                        jne   .Lx419_55
                        mov              r8, rax
                                                                                        jmp   .Lx419_40
.Lx419_55:
                        cmp              esi, 2
                                                                                        jne   .Lx419_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx419_41
                        mov              r8, rax
                                                                                        jmp   .Lx419_40
.Lx419_56:
                        cmp              eax, 13
                                                                                        jne   .Lx419_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx419_41
                        cmp              rax, r8
                                                                                        je    .Lx419_41
                        mov              r8, rax
                                                                                        jmp   .Lx419_40
.Lx419_41:
                        lea              r9, [rbp + 576]
.Lx419_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx419_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx419_43
                        cmp              esi, 1
                                                                                        jne   .Lx419_57
                        mov              r9, rax
                                                                                        jmp   .Lx419_42
.Lx419_57:
                        cmp              esi, 2
                                                                                        jne   .Lx419_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx419_43
                        mov              r9, rax
                                                                                        jmp   .Lx419_42
.Lx419_58:
                        cmp              eax, 13
                                                                                        jne   .Lx419_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx419_43
                        cmp              rax, r9
                                                                                        je    .Lx419_43
                        mov              r9, rax
                                                                                        jmp   .Lx419_42
.Lx419_43:
                        cmp              r8, r9
                                                                                        je    .Lx419_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx419_44
                        cmp              eax, 99
                                                                                        je    .Lx419_44
                        cmp              eax, 13
                                                                                        jne   .Lx419_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx419_44
                                                                                        jmp   .Lx419_45
.Lx419_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx419_53
                        cmp              eax, 99
                                                                                        je    .Lx419_53
                        cmp              eax, 13
                                                                                        jne   .Lx419_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx419_53
                                                                                        jmp   .Lx419_46
.Lx419_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx419_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx419_53
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
                                                                                        jmp   .Lx419_51
.Lx419_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx419_47
                        cmp              eax, 99
                                                                                        je    .Lx419_47
                        cmp              eax, 13
                                                                                        jne   .Lx419_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx419_47
                                                                                        jmp   .Lx419_48
.Lx419_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx419_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx419_53
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
                                                                                        jmp   .Lx419_51
.Lx419_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx419_49
                        cmp              edx, 14
                                                                                        je    .Lx419_53
                                                                                        jmp   .Lx419_52
.Lx419_49:
                        cmp              edx, 14
                                                                                        je    .Lx419_52
                        cmp              ecx, 7
                                                                                        je    .Lx419_53
                        cmp              edx, 7
                                                                                        je    .Lx419_53
                        cmp              ecx, 6
                                                                                        jne   .Lx419_50
                        cmp              edx, 6
                                                                                        jne   .Lx419_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx419_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx419_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx419_51
                                                                                        jmp   .Lx419_52
.Lx419_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx419_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx419_53
.Lx419_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx419_54
.Lx419_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx419_54
.Lx419_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx419_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n382_op11_α
                                                                                        jmp   n388_var_ref_α
n387_op11_β:
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n389_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n389_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n390_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n390_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx425_20
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx425_21
.Lx425_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx425_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx425_22
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx425_23
.Lx425_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx425_23:
                        mov              rdi, qword ptr [rip + .Lx425_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx425_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx425_3]
                        lea              rdx, [rip + .Lx425_4]
                                                                                        jmp   rax
.Lx425_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx425_2
.Lx425_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx425_2
.Lx425_1:
                        call             rt_faildescr@PLT
.Lx425_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n382_op11_α
                                                                                        jmp   n391_var_α
n390_call_proc_staged_β:
                                                                                        jmp   n382_op11_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "code_type/2"
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n392_var_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n394_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n393_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n395_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n394_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n393_var_ref_α
                                                                                        jmp   n396_op19_α
n394_op11_β:
                                                                                        jmp   n393_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n397_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n396_op19_α:
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n397_call_proc_staged_α:
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 352]
                        call             proc_test_range$2F2_dcα
                                                                                        jmp   .Lx437_2
.Lx437_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n390_call_proc_staged_β
                                                                                        jmp   n398_var_ref_α
n397_call_proc_staged_β:
                                                                                        jmp   n390_call_proc_staged_β
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "test_range/2"
#-----------------------------------------------------------------------------------------------------------------------
n398_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n399_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n399_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n400_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n401_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n401_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx445_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx445_21
.Lx445_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx445_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx445_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx445_23
.Lx445_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx445_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx445_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx445_25
.Lx445_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx445_25:
                        mov              edi, 4
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx445_1
                        lea              rcx, [rip + .Lx445_3]
                        lea              rdx, [rip + .Lx445_4]
                                                                                        jmp   rax
.Lx445_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx445_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx445_2
.Lx445_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx445_2
.Lx445_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx445_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx445_2
.Lx445_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx445_2
.Lx445_1:
                        call             rt_faildescr@PLT
.Lx445_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n397_call_proc_staged_β
                                                                                        jmp   n402_suspend_α
n401_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n402_suspend_α:
                        lea              rax, [rip + n402_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_t_code_type$2F3_γ
n402_suspend_β:
                                                                                        jmp   n390_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_t_code_type$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t_code_type$2F3_β:
                                                                                        jmp   qword ptr [rbp + 784]
#-----------------------------------------------------------------------------------------------------------------------
proc_t_code_type$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_t_code_type$2F3_res]
                        push             rax
                        mov              rax, [rbp + 888]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_t_code_type$2F3_ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 976
                        mov              [rsp + 952], rcx
                        mov              [rsp + 960], rdx
                        mov              [rsp + 968], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 912
                        mov              edx, 944
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n448_op11_α:
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
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx475_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n449_var_ref_α
n448_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n450_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n451_op11_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "code_type"
#-----------------------------------------------------------------------------------------------------------------------
n451_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx479_2]
                                                                                        jmp   .Lx479_3
.Lx479_2:
                        .quad            .Lx479_2_s
.Lx479_2_s:
                        .string          "code_type"
.Lx479_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n453_op11_α
                                                                                        jmp   n452_var_ref_α
n451_op11_β:
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n454_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n453_op11_α:
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
n453_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n455_op11_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "code_type"
#-----------------------------------------------------------------------------------------------------------------------
n455_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx484_2]
                                                                                        jmp   .Lx484_3
.Lx484_2:
                        .quad            .Lx484_2_s
.Lx484_2_s:
                        .string          "code_type"
.Lx484_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n453_op11_α
                                                                                        jmp   n456_var_ref_α
n455_op11_β:
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n457_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n458_op11_α
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n458_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              rsi, qword ptr [rip + .Lx488_2]
                                                                                        jmp   .Lx488_3
.Lx488_2:
                        .quad            .Lx488_2_s
.Lx488_2_s:
                        .string          "[]"
.Lx488_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n453_op11_α
                                                                                        jmp   n459_var_ref_α
n458_op11_β:
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n460_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n461_lit_string_α
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n462_lit_string_α
.Lx492_0:
                        .quad            .Lx492_0_s
.Lx492_0_s:
                        .string          "assert_ct"
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n463_lit_string_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n464_lit_string_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "gen"
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n465_lit_string_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n466_var_ref_α
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "ct"
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n467_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n468_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n468_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n469_op11_α
n468_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n469_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n470_op11_α
n469_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n471_op11_α
n470_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n471_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n453_op11_α
                                                                                        jmp   n472_op11_α
n471_op11_β:
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n472_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx505_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx505_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx505_41
                        cmp              esi, 1
                                                                                        jne   .Lx505_55
                        mov              r8, rax
                                                                                        jmp   .Lx505_40
.Lx505_55:
                        cmp              esi, 2
                                                                                        jne   .Lx505_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx505_41
                        mov              r8, rax
                                                                                        jmp   .Lx505_40
.Lx505_56:
                        cmp              eax, 13
                                                                                        jne   .Lx505_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx505_41
                        cmp              rax, r8
                                                                                        je    .Lx505_41
                        mov              r8, rax
                                                                                        jmp   .Lx505_40
.Lx505_41:
                        lea              r9, [rbp + 208]
.Lx505_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx505_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx505_43
                        cmp              esi, 1
                                                                                        jne   .Lx505_57
                        mov              r9, rax
                                                                                        jmp   .Lx505_42
.Lx505_57:
                        cmp              esi, 2
                                                                                        jne   .Lx505_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx505_43
                        mov              r9, rax
                                                                                        jmp   .Lx505_42
.Lx505_58:
                        cmp              eax, 13
                                                                                        jne   .Lx505_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx505_43
                        cmp              rax, r9
                                                                                        je    .Lx505_43
                        mov              r9, rax
                                                                                        jmp   .Lx505_42
.Lx505_43:
                        cmp              r8, r9
                                                                                        je    .Lx505_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx505_44
                        cmp              eax, 99
                                                                                        je    .Lx505_44
                        cmp              eax, 13
                                                                                        jne   .Lx505_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx505_44
                                                                                        jmp   .Lx505_45
.Lx505_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx505_53
                        cmp              eax, 99
                                                                                        je    .Lx505_53
                        cmp              eax, 13
                                                                                        jne   .Lx505_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx505_53
                                                                                        jmp   .Lx505_46
.Lx505_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx505_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx505_53
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
                                                                                        jmp   .Lx505_51
.Lx505_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx505_47
                        cmp              eax, 99
                                                                                        je    .Lx505_47
                        cmp              eax, 13
                                                                                        jne   .Lx505_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx505_47
                                                                                        jmp   .Lx505_48
.Lx505_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx505_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx505_53
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
                                                                                        jmp   .Lx505_51
.Lx505_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx505_49
                        cmp              edx, 14
                                                                                        je    .Lx505_53
                                                                                        jmp   .Lx505_52
.Lx505_49:
                        cmp              edx, 14
                                                                                        je    .Lx505_52
                        cmp              ecx, 7
                                                                                        je    .Lx505_53
                        cmp              edx, 7
                                                                                        je    .Lx505_53
                        cmp              ecx, 6
                                                                                        jne   .Lx505_50
                        cmp              edx, 6
                                                                                        jne   .Lx505_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx505_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx505_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx505_51
                                                                                        jmp   .Lx505_52
.Lx505_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx505_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx505_53
.Lx505_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx505_54
.Lx505_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx505_54
.Lx505_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx505_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n453_op11_α
                                                                                        jmp   n473_move_label_α
n472_op11_β:
                                                                                        jmp   n453_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n473_move_label_α:
                        lea              rax, [rip + n453_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n474_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n474_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n474_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 952]
                        lea              rsp, [rbp + 976]
                        mov              rbp, [rbp + 968]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 960]
                        lea              rsp, [rbp + 976]
                        mov              rbp, [rbp + 968]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 992
                        mov              qword ptr [rsp + 968], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 944], r11
                        lea              rax, [rip + .Lx510_2]
                        mov              qword ptr [rbp + 952], rax
                        lea              rax, [rip + .Lx510_3]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 912
                        mov              edx, 944
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx510_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -976
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx510_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -976
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_range$2F2_α
proc_test_range$2F2_α:
                        .global          proc_test_range$2F2_α
                        .global          proc_test_range$2F2_β
                        .global          proc_test_range$2F2_γ
                        .global          proc_test_range$2F2_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_range$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n511_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx521_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx521_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx521_101
.Lx521_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx521_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_range$2F2_ω
                                                                                        jmp   n512_var_ref_α
n511_op11_β:
                                                                                        jmp   proc_test_range$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n513_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n514_op11_α
.Lx524_0:
                        .quad            1024
#-----------------------------------------------------------------------------------------------------------------------
n514_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        movabs           rsi, 1024
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n516_op11_α
                                                                                        jmp   n515_var_ref_α
n514_op11_β:
                                                                                        jmp   n516_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n517_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n516_op11_α:
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
                                                                                        je    proc_test_range$2F2_ω
                                                                                        jmp   proc_test_range$2F2_ω
n516_op11_β:
                                                                                        jmp   proc_test_range$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n518_op11_α
.Lx529_0:
                        .quad            1280
#-----------------------------------------------------------------------------------------------------------------------
n518_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        movabs           rsi, 1280
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n516_op11_α
                                                                                        jmp   n519_move_label_α
n518_op11_β:
                                                                                        jmp   n516_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n519_move_label_α:
                        lea              rax, [rip + n516_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_test_range$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n520_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n520_disjunction_β:
                                                                                        jmp   proc_test_range$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test_range$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_range$2F2_β:
                                                                                        jmp   n520_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_test_range$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 312]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_range$2F2_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_range$2F2_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 304], r11
                        lea              rax, [rip + .Lx535_2]
                        mov              qword ptr [rbp + 312], rax
                        lea              rax, [rip + .Lx535_3]
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
                                                                                        jmp   proc_test_range$2F2_α_body
.Lx535_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx535_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gen_t$2F1_α
proc_gen_t$2F1_α:
                        .global          proc_gen_t$2F1_α
                        .global          proc_gen_t$2F1_β
                        .global          proc_gen_t$2F1_γ
                        .global          proc_gen_t$2F1_ω
                        sub              rsp, 1216
                        mov              [rsp + 1192], rcx
                        mov              [rsp + 1200], rdx
                        mov              [rsp + 1208], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
proc_gen_t$2F1_α_body:
                        lea              rax, [rip + n552_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n536_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx570_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx570_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx570_101
.Lx570_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx570_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_gen_t$2F1_ω
                                                                                        jmp   n537_var_ref_α
n536_op11_β:
                                                                                        jmp   proc_gen_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n538_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n539_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n539_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1024]
                        lea              r8, [rbp + 1024]
.Lx575_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx575_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        cmp              esi, 1
                                                                                        jne   .Lx575_55
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_55:
                        cmp              esi, 2
                                                                                        jne   .Lx575_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_56:
                        cmp              eax, 13
                                                                                        jne   .Lx575_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        cmp              rax, r8
                                                                                        je    .Lx575_41
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_41:
                        lea              r9, [rbp + 1040]
.Lx575_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx575_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        cmp              esi, 1
                                                                                        jne   .Lx575_57
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_57:
                        cmp              esi, 2
                                                                                        jne   .Lx575_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_58:
                        cmp              eax, 13
                                                                                        jne   .Lx575_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        cmp              rax, r9
                                                                                        je    .Lx575_43
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_43:
                        cmp              r8, r9
                                                                                        je    .Lx575_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_44
                        cmp              eax, 99
                                                                                        je    .Lx575_44
                        cmp              eax, 13
                                                                                        jne   .Lx575_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx575_44
                                                                                        jmp   .Lx575_45
.Lx575_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_53
                        cmp              eax, 99
                                                                                        je    .Lx575_53
                        cmp              eax, 13
                                                                                        jne   .Lx575_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx575_53
                                                                                        jmp   .Lx575_46
.Lx575_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx575_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx575_53
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
                                                                                        jmp   .Lx575_51
.Lx575_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_47
                        cmp              eax, 99
                                                                                        je    .Lx575_47
                        cmp              eax, 13
                                                                                        jne   .Lx575_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx575_47
                                                                                        jmp   .Lx575_48
.Lx575_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx575_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx575_53
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
                                                                                        jmp   .Lx575_51
.Lx575_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx575_49
                        cmp              edx, 14
                                                                                        je    .Lx575_53
                                                                                        jmp   .Lx575_52
.Lx575_49:
                        cmp              edx, 14
                                                                                        je    .Lx575_52
                        cmp              ecx, 7
                                                                                        je    .Lx575_53
                        cmp              edx, 7
                                                                                        je    .Lx575_53
                        cmp              ecx, 6
                                                                                        jne   .Lx575_50
                        cmp              edx, 6
                                                                                        jne   .Lx575_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx575_51
                                                                                        jmp   .Lx575_52
.Lx575_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx575_53
.Lx575_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx575_54
.Lx575_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx575_54
.Lx575_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx575_54:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n541_op11_α
                                                                                        jmp   n540_var_ref_α
n539_op11_β:
                                                                                        jmp   n541_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n542_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n541_op11_α:
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
                                                                                        je    proc_gen_t$2F1_ω
                                                                                        jmp   proc_gen_t$2F1_ω
n541_op11_β:
                                                                                        jmp   proc_gen_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n542_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n543_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n543_call_proc_staged_α:
                        mov              qword ptr [rbp + 944], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx582_20
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx582_21
.Lx582_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx582_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx582_22
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx582_23
.Lx582_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        call             rt_arg_stage@PLT
.Lx582_23:
                        mov              edi, 22
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx582_1
                        lea              rcx, [rip + .Lx582_3]
                        lea              rdx, [rip + .Lx582_4]
                                                                                        jmp   rax
.Lx582_3:
                        mov              qword ptr [rbp + 952], rsp
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx582_5
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx582_2
.Lx582_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx582_2
.Lx582_4:
                        mov              rax, qword ptr [rbp + 944]
                        test             rax, rax
                                                                                        jne   .Lx582_6
                        mov              qword ptr [rbp + 944], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx582_2
.Lx582_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx582_2
.Lx582_1:
                        call             rt_faildescr@PLT
.Lx582_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n541_op11_α
                                                                                        jmp   n544_var_ref_α
n543_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 952]
                                                                                        jmp   qword ptr [rsp]
.Lx582_0:
                        .quad            .Lx582_0_s
.Lx582_0_s:
                        .string          "ct/2"
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n545_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n545_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn586:              .string          "$tt_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn586]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n547_var_ref_α
                                                                                        jmp   n546_var_ref_α
n545_op11_β:
                                                                                        jmp   n547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n548_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n549_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n550_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n551_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n550_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 112]
                        lea              r8, [rbp + 112]
.Lx595_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx595_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx595_41
                        cmp              esi, 1
                                                                                        jne   .Lx595_55
                        mov              r8, rax
                                                                                        jmp   .Lx595_40
.Lx595_55:
                        cmp              esi, 2
                                                                                        jne   .Lx595_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx595_41
                        mov              r8, rax
                                                                                        jmp   .Lx595_40
.Lx595_56:
                        cmp              eax, 13
                                                                                        jne   .Lx595_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx595_41
                        cmp              rax, r8
                                                                                        je    .Lx595_41
                        mov              r8, rax
                                                                                        jmp   .Lx595_40
.Lx595_41:
                        lea              r9, [rbp + 128]
.Lx595_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx595_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx595_43
                        cmp              esi, 1
                                                                                        jne   .Lx595_57
                        mov              r9, rax
                                                                                        jmp   .Lx595_42
.Lx595_57:
                        cmp              esi, 2
                                                                                        jne   .Lx595_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx595_43
                        mov              r9, rax
                                                                                        jmp   .Lx595_42
.Lx595_58:
                        cmp              eax, 13
                                                                                        jne   .Lx595_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx595_43
                        cmp              rax, r9
                                                                                        je    .Lx595_43
                        mov              r9, rax
                                                                                        jmp   .Lx595_42
.Lx595_43:
                        cmp              r8, r9
                                                                                        je    .Lx595_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx595_44
                        cmp              eax, 99
                                                                                        je    .Lx595_44
                        cmp              eax, 13
                                                                                        jne   .Lx595_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx595_44
                                                                                        jmp   .Lx595_45
.Lx595_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx595_53
                        cmp              eax, 99
                                                                                        je    .Lx595_53
                        cmp              eax, 13
                                                                                        jne   .Lx595_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx595_53
                                                                                        jmp   .Lx595_46
.Lx595_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx595_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx595_53
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
                                                                                        jmp   .Lx595_51
.Lx595_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx595_47
                        cmp              eax, 99
                                                                                        je    .Lx595_47
                        cmp              eax, 13
                                                                                        jne   .Lx595_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx595_47
                                                                                        jmp   .Lx595_48
.Lx595_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx595_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx595_53
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
                                                                                        jmp   .Lx595_51
.Lx595_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx595_49
                        cmp              edx, 14
                                                                                        je    .Lx595_53
                                                                                        jmp   .Lx595_52
.Lx595_49:
                        cmp              edx, 14
                                                                                        je    .Lx595_52
                        cmp              ecx, 7
                                                                                        je    .Lx595_53
                        cmp              edx, 7
                                                                                        je    .Lx595_53
                        cmp              ecx, 6
                                                                                        jne   .Lx595_50
                        cmp              edx, 6
                                                                                        jne   .Lx595_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx595_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx595_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx595_51
                                                                                        jmp   .Lx595_52
.Lx595_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx595_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx595_53
.Lx595_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx595_54
.Lx595_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx595_54
.Lx595_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx595_54:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n543_call_proc_staged_β
                                                                                        jmp   n552_suspend_α
n550_op11_β:
                                                                                        jmp   n543_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n553_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n552_suspend_α:
                        lea              rax, [rip + n552_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gen_t$2F1_γ
n552_suspend_β:
                                                                                        jmp   n543_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n553_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn601:              .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn601]
                        lea              rsi, [rbp + 752]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n543_call_proc_staged_β
                                                                                        jmp   n554_lit_string_α
n553_op11_β:
                                                                                        jmp   n543_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n555_var_ref_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n556_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n557_op11_α
.Lx605_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n557_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n543_call_proc_staged_β
                                                                                        jmp   n558_call_proc_staged_α
n557_op11_β:
                                                                                        jmp   n543_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n558_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx608_20
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx608_21
.Lx608_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx608_21:
                        mov              rdi, qword ptr [rip + .Lx608_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx608_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx608_3]
                        lea              rdx, [rip + .Lx608_4]
                                                                                        jmp   rax
.Lx608_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx608_2
.Lx608_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx608_2
.Lx608_1:
                        call             rt_faildescr@PLT
.Lx608_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n543_call_proc_staged_β
                                                                                        jmp   n559_var_ref_α
n558_call_proc_staged_β:
                                                                                        jmp   n543_call_proc_staged_β
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n560_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n561_var_ref_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n561_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n562_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n563_lit_string_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n564_lit_integer_α
.Lx615_0:
                        .quad            .Lx615_0_s
.Lx615_0_s:
                        .string          "$VAR"
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n565_op11_α
.Lx616_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n565_op11_α:
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
                                                                                        je    proc_gen_t$2F1_ω
                                                                                        jmp   n566_lit_string_α
n565_op11_β:
                                                                                        jmp   proc_gen_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n567_op11_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n567_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_gen_t$2F1_ω
                                                                                        jmp   n568_op11_α
n567_op11_β:
                                                                                        jmp   proc_gen_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n568_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n543_call_proc_staged_β
                                                                                        jmp   n569_op11_α
n568_op11_β:
                                                                                        jmp   n543_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n569_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn622:              .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn622]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n558_call_proc_staged_β
                                                                                        jmp   n552_suspend_α
n569_op11_β:
                                                                                        jmp   n558_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gen_t$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gen_t$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_gen_t$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gen_t$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1192]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gen_t$2F1_ω:
                        mov              rax, [rbp + 1200]
                        lea              rsp, [rbp + 1216]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
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
n623_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx633_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx633_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx633_101
.Lx633_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx633_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n624_var_ref_α
n623_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n625_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n626_op11_α
.Lx636_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n626_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n628_op11_α
                                                                                        jmp   n627_var_ref_α
n626_op11_β:
                                                                                        jmp   n628_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n627_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n629_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n628_op11_α:
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
n628_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n630_op11_α
.Lx641_0:
                        .quad            256
#-----------------------------------------------------------------------------------------------------------------------
n630_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        movabs           rsi, 256
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n628_op11_α
                                                                                        jmp   n631_move_label_α
n630_op11_β:
                                                                                        jmp   n628_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n631_move_label_α:
                        lea              rax, [rip + n628_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_$2C$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n632_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n632_disjunction_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_β:
                                                                                        jmp   n632_disjunction_α
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
                        lea              rax, [rip + .Lx647_2]
                        mov              qword ptr [rbp + 312], rax
                        lea              rax, [rip + .Lx647_3]
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
.Lx647_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx647_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_8$2F0_α
proc_pj_dir_8$2F0_α:
                        .global          proc_pj_dir_8$2F0_α
                        .global          proc_pj_dir_8$2F0_β
                        .global          proc_pj_dir_8$2F0_γ
                        .global          proc_pj_dir_8$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_8$2F0_α_body:
                        lea              rax, [rip + n651_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n648_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx653_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx653_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx653_101
.Lx653_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx653_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_8$2F0_ω
                                                                                        jmp   n649_lit_string_α
n648_op11_β:
                                                                                        jmp   proc_pj_dir_8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n649_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n650_call_proc_staged_α
.Lx654_0:
                        .quad            .Lx654_0_s
.Lx654_0_s:
                        .string          "code_type"
#-----------------------------------------------------------------------------------------------------------------------
n650_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx656_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx656_21
.Lx656_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx656_21:
                        mov              rdi, qword ptr [rip + .Lx656_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx656_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx656_3]
                        lea              rdx, [rip + .Lx656_4]
                                                                                        jmp   rax
.Lx656_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx656_2
.Lx656_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx656_2
.Lx656_1:
                        call             rt_faildescr@PLT
.Lx656_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n652_op11_α
                                                                                        jmp   n651_suspend_α
n650_call_proc_staged_β:
                                                                                        jmp   n652_op11_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n651_suspend_α:
                        lea              rax, [rip + n651_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_8$2F0_γ
n651_suspend_β:
                                                                                        jmp   n650_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n652_op11_α:
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
                                                                                        je    proc_pj_dir_8$2F0_ω
                                                                                        jmp   proc_pj_dir_8$2F0_ω
n652_op11_β:
                                                                                        jmp   proc_pj_dir_8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_8$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_8$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_8$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_8$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_8$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_6$2F0_α
proc_pj_dir_6$2F0_α:
                        .global          proc_pj_dir_6$2F0_α
                        .global          proc_pj_dir_6$2F0_β
                        .global          proc_pj_dir_6$2F0_γ
                        .global          proc_pj_dir_6$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n666_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n660_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx667_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx667_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx667_101
.Lx667_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx667_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   n661_lit_string_α
n660_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n662_lit_string_α
.Lx668_0:
                        .quad            .Lx668_0_s
.Lx668_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n663_op11_α
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "varnumbers"
#-----------------------------------------------------------------------------------------------------------------------
n663_op11_α:
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
                                                                                        je    n665_op11_α
                                                                                        jmp   n664_call_proc_staged_α
n663_op11_β:
                                                                                        jmp   n665_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n664_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx672_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx672_21
.Lx672_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx672_21:
                        mov              rdi, qword ptr [rip + .Lx672_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx672_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx672_3]
                        lea              rdx, [rip + .Lx672_4]
                                                                                        jmp   rax
.Lx672_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx672_2
.Lx672_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx672_2
.Lx672_1:
                        call             rt_faildescr@PLT
.Lx672_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n665_op11_α
                                                                                        jmp   n666_suspend_α
n664_call_proc_staged_β:
                                                                                        jmp   n665_op11_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n665_op11_α:
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
n665_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n666_suspend_α:
                        lea              rax, [rip + n666_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_6$2F0_γ
n666_suspend_β:
                                                                                        jmp   n664_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_6$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
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
                        lea              rax, [rip + n682_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n676_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx683_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx683_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx683_101
.Lx683_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx683_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n677_lit_string_α
n676_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n678_lit_string_α
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n679_op11_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n679_op11_α:
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
                                                                                        je    n681_op11_α
                                                                                        jmp   n680_call_proc_staged_α
n679_op11_β:
                                                                                        jmp   n681_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx688_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx688_21
.Lx688_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx688_21:
                        mov              rdi, qword ptr [rip + .Lx688_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx688_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx688_3]
                        lea              rdx, [rip + .Lx688_4]
                                                                                        jmp   rax
.Lx688_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx688_2
.Lx688_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx688_2
.Lx688_1:
                        call             rt_faildescr@PLT
.Lx688_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n681_op11_α
                                                                                        jmp   n682_suspend_α
n680_call_proc_staged_β:
                                                                                        jmp   n681_op11_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n681_op11_α:
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
n681_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n682_suspend_α:
                        lea              rax, [rip + n682_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n682_suspend_β:
                                                                                        jmp   n680_call_proc_staged_β
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
                        lea              rax, [rip + n698_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n692_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx699_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx699_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx699_101
.Lx699_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx699_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n693_lit_string_α
n692_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n693_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n694_lit_string_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n695_op11_α
.Lx701_0:
                        .quad            .Lx701_0_s
.Lx701_0_s:
                        .string          "apply"
#-----------------------------------------------------------------------------------------------------------------------
n695_op11_α:
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
                                                                                        je    n697_op11_α
                                                                                        jmp   n696_call_proc_staged_α
n695_op11_β:
                                                                                        jmp   n697_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n696_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx704_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx704_21
.Lx704_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx704_21:
                        mov              rdi, qword ptr [rip + .Lx704_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx704_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx704_3]
                        lea              rdx, [rip + .Lx704_4]
                                                                                        jmp   rax
.Lx704_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx704_2
.Lx704_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx704_2
.Lx704_1:
                        call             rt_faildescr@PLT
.Lx704_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n697_op11_α
                                                                                        jmp   n698_suspend_α
n696_call_proc_staged_β:
                                                                                        jmp   n697_op11_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n697_op11_α:
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
n697_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n698_suspend_α:
                        lea              rax, [rip + n698_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n698_suspend_β:
                                                                                        jmp   n696_call_proc_staged_β
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
                        lea              rax, [rip + n719_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n708_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx720_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx720_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx720_101
.Lx720_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx720_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n709_lit_string_α
n708_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n710_lit_string_α
.Lx721_0:
                        .quad            .Lx721_0_s
.Lx721_0_s:
                        .string          "test_code_type"
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n711_lit_string_α
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n712_lit_string_α
.Lx723_0:
                        .quad            .Lx723_0_s
.Lx723_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx724_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n713_lit_integer_α
.Lx724_0:
                        .quad            .Lx724_0_s
.Lx724_0_s:
                        .string          "test_code_type"
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n714_op11_α
.Lx725_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n714_op11_α:
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
                                                                                        jmp   n715_lit_string_α
n714_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n716_op11_α
.Lx727_0:
                        .quad            .Lx727_0_s
.Lx727_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n716_op11_α:
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
                                                                                        je    n718_op11_α
                                                                                        jmp   n717_call_proc_staged_α
n716_op11_β:
                                                                                        jmp   n718_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n717_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx730_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx730_21
.Lx730_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx730_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx730_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx730_23
.Lx730_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx730_23:
                        mov              rdi, qword ptr [rip + .Lx730_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx730_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx730_3]
                        lea              rdx, [rip + .Lx730_4]
                                                                                        jmp   rax
.Lx730_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx730_2
.Lx730_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx730_2
.Lx730_1:
                        call             rt_faildescr@PLT
.Lx730_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n718_op11_α
                                                                                        jmp   n719_suspend_α
n717_call_proc_staged_β:
                                                                                        jmp   n718_op11_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n718_op11_α:
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
n718_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n719_suspend_α:
                        lea              rax, [rip + n719_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n719_suspend_β:
                                                                                        jmp   n717_call_proc_staged_β
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
                        .globl           proc_$2F$2F0_α
proc_$2F$2F0_α:
                        .global          proc_$2F$2F0_α
                        .global          proc_$2F$2F0_β
                        .global          proc_$2F$2F0_γ
                        .global          proc_$2F$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_$2F$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n734_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx738_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx738_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx738_101
.Lx738_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx738_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2F$2F0_ω
                                                                                        jmp   n735_move_label_α
n734_op11_β:
                                                                                        jmp   proc_$2F$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n735_move_label_α:
                        lea              rax, [rip + n736_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_$2F$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n736_op11_α:
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
                                                                                        je    proc_$2F$2F0_ω
                                                                                        jmp   proc_$2F$2F0_ω
n736_op11_β:
                                                                                        jmp   proc_$2F$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n737_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n737_disjunction_β:
                                                                                        jmp   proc_$2F$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$2F$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$2F$2F0_β:
                                                                                        jmp   n737_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$2F$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$2F$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$2F$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx744_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx744_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$2F$2F0_α_body
.Lx744_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx744_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_7$2F0_α
proc_pj_dir_7$2F0_α:
                        .global          proc_pj_dir_7$2F0_α
                        .global          proc_pj_dir_7$2F0_β
                        .global          proc_pj_dir_7$2F0_γ
                        .global          proc_pj_dir_7$2F0_ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_7$2F0_α_body:
                        lea              rax, [rip + n755_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n745_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx756_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx756_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx756_101
.Lx756_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx756_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_7$2F0_ω
                                                                                        jmp   n746_lit_string_α
n745_op11_β:
                                                                                        jmp   proc_pj_dir_7$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx757_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n747_lit_string_α
.Lx757_0:
                        .quad            .Lx757_0_s
.Lx757_0_s:
                        .string          "code_type"
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n748_lit_string_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n749_lit_string_α
.Lx759_0:
                        .quad            .Lx759_0_s
.Lx759_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n750_op11_α
.Lx760_0:
                        .quad            .Lx760_0_s
.Lx760_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n750_op11_α:
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
                                                                                        je    proc_pj_dir_7$2F0_ω
                                                                                        jmp   n751_lit_string_α
n750_op11_β:
                                                                                        jmp   proc_pj_dir_7$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n752_op11_α
.Lx762_0:
                        .quad            .Lx762_0_s
.Lx762_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n752_op11_α:
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
                                                                                        je    n754_op11_α
                                                                                        jmp   n753_call_proc_staged_α
n752_op11_β:
                                                                                        jmp   n754_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n753_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx765_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx765_21
.Lx765_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx765_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx765_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx765_23
.Lx765_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx765_23:
                        mov              rdi, qword ptr [rip + .Lx765_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx765_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx765_3]
                        lea              rdx, [rip + .Lx765_4]
                                                                                        jmp   rax
.Lx765_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx765_2
.Lx765_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx765_2
.Lx765_1:
                        call             rt_faildescr@PLT
.Lx765_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n754_op11_α
                                                                                        jmp   n755_suspend_α
n753_call_proc_staged_β:
                                                                                        jmp   n754_op11_α
.Lx765_0:
                        .quad            .Lx765_0_s
.Lx765_0_s:
                        .string          "begin_tests/2"
#-----------------------------------------------------------------------------------------------------------------------
n754_op11_α:
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
                                                                                        je    proc_pj_dir_7$2F0_ω
                                                                                        jmp   proc_pj_dir_7$2F0_ω
n754_op11_β:
                                                                                        jmp   proc_pj_dir_7$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n755_suspend_α:
                        lea              rax, [rip + n755_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_7$2F0_γ
n755_suspend_β:
                                                                                        jmp   n753_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_7$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_7$2F0_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_7$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_7$2F0_res]
                        push             rax
                        mov              rax, [rbp + 392]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_7$2F0_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
                        .global          proc_pj_dir_5$2F0_α
                        .global          proc_pj_dir_5$2F0_β
                        .global          proc_pj_dir_5$2F0_γ
                        .global          proc_pj_dir_5$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n775_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n769_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx776_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx776_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx776_101
.Lx776_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx776_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n770_lit_string_α
n769_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n771_lit_string_α
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n772_op11_α
.Lx778_0:
                        .quad            .Lx778_0_s
.Lx778_0_s:
                        .string          "ordsets"
#-----------------------------------------------------------------------------------------------------------------------
n772_op11_α:
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
                                                                                        je    n774_op11_α
                                                                                        jmp   n773_call_proc_staged_α
n772_op11_β:
                                                                                        jmp   n774_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n773_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx781_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx781_21
.Lx781_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx781_21:
                        mov              rdi, qword ptr [rip + .Lx781_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx781_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx781_3]
                        lea              rdx, [rip + .Lx781_4]
                                                                                        jmp   rax
.Lx781_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx781_2
.Lx781_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx781_2
.Lx781_1:
                        call             rt_faildescr@PLT
.Lx781_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n774_op11_α
                                                                                        jmp   n775_suspend_α
n773_call_proc_staged_β:
                                                                                        jmp   n774_op11_α
.Lx781_0:
                        .quad            .Lx781_0_s
.Lx781_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n774_op11_α:
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
n774_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n775_suspend_α:
                        lea              rax, [rip + n775_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n775_suspend_β:
                                                                                        jmp   n773_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_5$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n791_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n785_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx792_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx792_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx792_101
.Lx792_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx792_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n786_lit_string_α
n785_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n787_lit_string_α
.Lx793_0:
                        .quad            .Lx793_0_s
.Lx793_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx794_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n788_op11_α
.Lx794_0:
                        .quad            .Lx794_0_s
.Lx794_0_s:
                        .string          "aggregate"
#-----------------------------------------------------------------------------------------------------------------------
n788_op11_α:
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
                                                                                        je    n790_op11_α
                                                                                        jmp   n789_call_proc_staged_α
n788_op11_β:
                                                                                        jmp   n790_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n789_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx797_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx797_21
.Lx797_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx797_21:
                        mov              rdi, qword ptr [rip + .Lx797_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx797_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx797_3]
                        lea              rdx, [rip + .Lx797_4]
                                                                                        jmp   rax
.Lx797_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx797_2
.Lx797_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx797_2
.Lx797_1:
                        call             rt_faildescr@PLT
.Lx797_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n790_op11_α
                                                                                        jmp   n791_suspend_α
n789_call_proc_staged_β:
                                                                                        jmp   n790_op11_α
.Lx797_0:
                        .quad            .Lx797_0_s
.Lx797_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n790_op11_α:
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
n790_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n791_suspend_α:
                        lea              rax, [rip + n791_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n791_suspend_β:
                                                                                        jmp   n789_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
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
                        lea              rax, [rip + n807_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n801_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx808_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx808_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx808_101
.Lx808_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx808_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n802_lit_string_α
n801_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n802_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n803_lit_string_α
.Lx809_0:
                        .quad            .Lx809_0_s
.Lx809_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n804_op11_α
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n804_op11_α:
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
                                                                                        je    n806_op11_α
                                                                                        jmp   n805_call_proc_staged_α
n804_op11_β:
                                                                                        jmp   n806_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n805_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx813_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx813_21
.Lx813_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx813_21:
                        mov              rdi, qword ptr [rip + .Lx813_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx813_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx813_3]
                        lea              rdx, [rip + .Lx813_4]
                                                                                        jmp   rax
.Lx813_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx813_2
.Lx813_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx813_2
.Lx813_1:
                        call             rt_faildescr@PLT
.Lx813_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n806_op11_α
                                                                                        jmp   n807_suspend_α
n805_call_proc_staged_β:
                                                                                        jmp   n806_op11_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n806_op11_α:
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
n806_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n807_suspend_α:
                        lea              rax, [rip + n807_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n807_suspend_β:
                                                                                        jmp   n805_call_proc_staged_β
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
                        .globl           proc_assert_ct$2F0_α
proc_assert_ct$2F0_α:
                        .global          proc_assert_ct$2F0_α
                        .global          proc_assert_ct$2F0_β
                        .global          proc_assert_ct$2F0_γ
                        .global          proc_assert_ct$2F0_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 640
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_assert_ct$2F0_α_body:
                        lea              rax, [rip + n825_suspend_β]
                        mov              qword ptr [rbp + 640], rax
#-----------------------------------------------------------------------------------------------------------------------
n817_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx837_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx837_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx837_101
.Lx837_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx837_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_assert_ct$2F0_ω
                                                                                        jmp   n818_lit_string_α
n817_op11_β:
                                                                                        jmp   proc_assert_ct$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n818_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n819_op11_α
.Lx838_0:
                        .quad            .Lx838_0_s
.Lx838_0_s:
                        .string          "retractall/1"
#-----------------------------------------------------------------------------------------------------------------------
n819_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn840:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn840]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n821_op11_α
                                                                                        jmp   n820_var_ref_α
n819_op11_β:
                                                                                        jmp   n821_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n820_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n822_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n821_op11_α:
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
                                                                                        je    proc_assert_ct$2F0_ω
                                                                                        jmp   proc_assert_ct$2F0_ω
n821_op11_β:
                                                                                        jmp   proc_assert_ct$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n822_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n823_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n823_call_proc_staged_α:
                        lea              rsi, [rbp + 560]
                        lea              rdx, [rbp + 576]
                        call             proc_test_range$2F2_dcα
                                                                                        jmp   .Lx847_2
.Lx847_2:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n825_suspend_α
                                                                                        jmp   n824_var_ref_α
n823_call_proc_staged_β:
                                                                                        jmp   n825_suspend_α
.Lx847_0:
                        .quad            .Lx847_0_s
.Lx847_0_s:
                        .string          "test_range/2"
#-----------------------------------------------------------------------------------------------------------------------
n824_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n826_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n825_suspend_α:
                        lea              rax, [rip + n825_suspend_β]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_assert_ct$2F0_γ
n825_suspend_β:
                                                                                        jmp   n821_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n826_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n827_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n827_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n828_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n828_call_proc_staged_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx857_21
.Lx857_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx857_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_22
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx857_23
.Lx857_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx857_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx857_24
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx857_25
.Lx857_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx857_25:
                        mov              edi, 4
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx857_1
                        lea              rcx, [rip + .Lx857_3]
                        lea              rdx, [rip + .Lx857_4]
                                                                                        jmp   rax
.Lx857_3:
                        mov              qword ptr [rbp + 424], rsp
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx857_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx857_2
.Lx857_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx857_2
.Lx857_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx857_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx857_2
.Lx857_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx857_2
.Lx857_1:
                        call             rt_faildescr@PLT
.Lx857_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n823_call_proc_staged_β
                                                                                        jmp   n829_var_ref_α
n828_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 424]
                                                                                        jmp   qword ptr [rsp]
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n829_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n830_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n830_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n831_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n831_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx863_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx863_21
.Lx863_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx863_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx863_22
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx863_23
.Lx863_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx863_23:
                        mov              rdi, qword ptr [rip + .Lx863_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx863_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx863_3]
                        lea              rdx, [rip + .Lx863_4]
                                                                                        jmp   rax
.Lx863_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx863_2
.Lx863_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx863_2
.Lx863_1:
                        call             rt_faildescr@PLT
.Lx863_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n828_call_proc_staged_β
                                                                                        jmp   n832_lit_string_α
n831_call_proc_staged_β:
                                                                                        jmp   n828_call_proc_staged_β
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "code_type/2"
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n833_var_ref_α
.Lx864_0:
                        .quad            .Lx864_0_s
.Lx864_0_s:
                        .string          "ct"
#-----------------------------------------------------------------------------------------------------------------------
n833_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n834_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n834_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n835_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n835_op11_α:
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
                                                                                        je    n821_op11_α
                                                                                        jmp   n836_op11_α
n835_op11_β:
                                                                                        jmp   n821_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n836_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn871:              .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn871]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n821_op11_α
                                                                                        jmp   n831_call_proc_staged_β
n836_op11_β:
                                                                                        jmp   n821_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_assert_ct$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_assert_ct$2F0_β:
                                                                                        jmp   qword ptr [rbp + 640]
#-----------------------------------------------------------------------------------------------------------------------
proc_assert_ct$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_assert_ct$2F0_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_assert_ct$2F0_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_code_type$2F0_α
proc_test_code_type$2F0_α:
                        .global          proc_test_code_type$2F0_α
                        .global          proc_test_code_type$2F0_β
                        .global          proc_test_code_type$2F0_γ
                        .global          proc_test_code_type$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_code_type$2F0_α_body:
                        lea              rax, [rip + n879_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n872_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx880_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx880_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx880_101
.Lx880_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx880_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_code_type$2F0_ω
                                                                                        jmp   n873_lit_string_α
n872_op11_β:
                                                                                        jmp   proc_test_code_type$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n873_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx881_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n874_lit_string_α
.Lx881_0:
                        .quad            .Lx881_0_s
.Lx881_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n874_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n875_lit_string_α
.Lx882_0:
                        .quad            .Lx882_0_s
.Lx882_0_s:
                        .string          "code_type"
#-----------------------------------------------------------------------------------------------------------------------
n875_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n876_op11_α
.Lx883_0:
                        .quad            .Lx883_0_s
.Lx883_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n876_op11_α:
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
                                                                                        je    n878_op11_α
                                                                                        jmp   n877_call_proc_staged_α
n876_op11_β:
                                                                                        jmp   n878_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n877_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx886_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx886_21
.Lx886_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx886_21:
                        mov              rdi, qword ptr [rip + .Lx886_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx886_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx886_3]
                        lea              rdx, [rip + .Lx886_4]
                                                                                        jmp   rax
.Lx886_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx886_2
.Lx886_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx886_2
.Lx886_1:
                        call             rt_faildescr@PLT
.Lx886_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n878_op11_α
                                                                                        jmp   n879_suspend_α
n877_call_proc_staged_β:
                                                                                        jmp   n878_op11_α
.Lx886_0:
                        .quad            .Lx886_0_s
.Lx886_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n878_op11_α:
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
                                                                                        je    proc_test_code_type$2F0_ω
                                                                                        jmp   proc_test_code_type$2F0_ω
n878_op11_β:
                                                                                        jmp   proc_test_code_type$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n879_suspend_α:
                        lea              rax, [rip + n879_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_code_type$2F0_γ
n879_suspend_β:
                                                                                        jmp   n877_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_code_type$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_code_type$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_code_type$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_code_type$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_code_type$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ct$2F2_α
proc_ct$2F2_α:
                        .global          proc_ct$2F2_α
                        .global          proc_ct$2F2_β
                        .global          proc_ct$2F2_γ
                        .global          proc_ct$2F2_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_ct$2F2_α_body:
                        lea              rax, [rip + n894_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n890_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n891_var_ref_α
.Lx895_0:
                        .quad            .Lx895_0_s
.Lx895_0_s:
                        .string          "ct"
#-----------------------------------------------------------------------------------------------------------------------
n891_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n892_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n892_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n893_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n893_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 0
.Lx900_60:
                        .section         .rodata
.Lbynamegenfn353:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn353]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        lea              rcx, [rbp + 112]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_ct$2F2_ω
                                                                                        jmp   n894_suspend_α
n893_call_builtin_gen_β:
                                                                                        jmp   .Lx900_60
#-----------------------------------------------------------------------------------------------------------------------
n894_suspend_α:
                        lea              rax, [rip + n894_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_ct$2F2_γ
n894_suspend_β:
                                                                                        jmp   n893_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_ct$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ct$2F2_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_ct$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_ct$2F2_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ct$2F2_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
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
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$bag_group/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$bag_group$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "gen/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_gen$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3216
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "gen/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_gen$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1072
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "t_code_type/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_t_code_type$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 944
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "test_range/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_test_range$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_test_range$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "gen_t/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_gen_t$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1184
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_$2C$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_8/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_pj_dir_8$2F0_α]
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
.Lstartup_pname11:      .string          "pj_dir_6/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pj_dir_6$2F0_α]
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
.Lstartup_pname12:      .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "//0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_$2F$2F0_α]
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
                        lea              rsi, [rip + proc_$2F$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "pj_dir_7/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_pj_dir_7$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "assert_ct/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_assert_ct$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "test_code_type/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_test_code_type$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "ct/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_ct$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
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
n903_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n904_call_proc_staged_α
.Lx905_0:
                        .quad            .Lx905_0_s
.Lx905_0_s:
                        .string          "code_type"
#-----------------------------------------------------------------------------------------------------------------------
n904_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx907_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx907_21
.Lx907_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx907_21:
                        mov              rdi, qword ptr [rip + .Lx907_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx907_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx907_3]
                        lea              rdx, [rip + .Lx907_4]
                                                                                        jmp   rax
.Lx907_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx907_2
.Lx907_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx907_2
.Lx907_1:
                        call             rt_faildescr@PLT
.Lx907_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n904_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx907_0:
                        .quad            .Lx907_0_s
.Lx907_0_s:
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
