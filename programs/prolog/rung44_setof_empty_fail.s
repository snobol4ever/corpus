                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$fa0$2F1_α
proc_$fa0$2F1_α:
                        .global          proc_$fa0$2F1_α
                        .global          proc_$fa0$2F1_β
                        .global          proc_$fa0$2F1_γ
                        .global          proc_$fa0$2F1_ω
                        sub              rsp, 400
                        mov              [rsp + 376], rcx
                        mov              [rsp + 384], rdx
                        mov              [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 336
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
proc_$fa0$2F1_α_body:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx11_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx11_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx11_101
.Lx11_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx11_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$fa0$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_$fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
.Lx16_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx16_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx16_41
                        cmp              esi, 1
                                                                                        jne   .Lx16_55
                        mov              r8, rax
                                                                                        jmp   .Lx16_40
.Lx16_55:
                        cmp              esi, 2
                                                                                        jne   .Lx16_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx16_41
                        mov              r8, rax
                                                                                        jmp   .Lx16_40
.Lx16_56:
                        cmp              eax, 13
                                                                                        jne   .Lx16_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx16_41
                        cmp              rax, r8
                                                                                        je    .Lx16_41
                        mov              r8, rax
                                                                                        jmp   .Lx16_40
.Lx16_41:
                        lea              r9, [rbp + 288]
.Lx16_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx16_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx16_43
                        cmp              esi, 1
                                                                                        jne   .Lx16_57
                        mov              r9, rax
                                                                                        jmp   .Lx16_42
.Lx16_57:
                        cmp              esi, 2
                                                                                        jne   .Lx16_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx16_43
                        mov              r9, rax
                                                                                        jmp   .Lx16_42
.Lx16_58:
                        cmp              eax, 13
                                                                                        jne   .Lx16_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx16_43
                        cmp              rax, r9
                                                                                        je    .Lx16_43
                        mov              r9, rax
                                                                                        jmp   .Lx16_42
.Lx16_43:
                        cmp              r8, r9
                                                                                        je    .Lx16_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx16_44
                        cmp              eax, 99
                                                                                        je    .Lx16_44
                        cmp              eax, 13
                                                                                        jne   .Lx16_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx16_44
                                                                                        jmp   .Lx16_45
.Lx16_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx16_53
                        cmp              eax, 99
                                                                                        je    .Lx16_53
                        cmp              eax, 13
                                                                                        jne   .Lx16_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx16_53
                                                                                        jmp   .Lx16_46
.Lx16_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx16_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx16_53
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
                                                                                        jmp   .Lx16_51
.Lx16_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx16_47
                        cmp              eax, 99
                                                                                        je    .Lx16_47
                        cmp              eax, 13
                                                                                        jne   .Lx16_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx16_47
                                                                                        jmp   .Lx16_48
.Lx16_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx16_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx16_53
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
                                                                                        jmp   .Lx16_51
.Lx16_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx16_49
                        cmp              edx, 14
                                                                                        je    .Lx16_53
                                                                                        jmp   .Lx16_52
.Lx16_49:
                        cmp              edx, 14
                                                                                        je    .Lx16_52
                        cmp              ecx, 7
                                                                                        je    .Lx16_53
                        cmp              edx, 7
                                                                                        je    .Lx16_53
                        cmp              ecx, 6
                                                                                        jne   .Lx16_50
                        cmp              edx, 6
                                                                                        jne   .Lx16_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx16_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx16_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx16_51
                                                                                        jmp   .Lx16_52
.Lx16_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx16_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx16_53
.Lx16_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx16_54
.Lx16_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx16_54
.Lx16_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx16_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n6_call_proc_staged_α
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
                                                                                        je    proc_$fa0$2F1_ω
                                                                                        jmp   proc_$fa0$2F1_ω
n5_op11_β:
                                                                                        jmp   proc_$fa0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx21_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx21_21
.Lx21_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx21_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx21_1
                        lea              rcx, [rip + .Lx21_3]
                        lea              rdx, [rip + .Lx21_4]
                                                                                        jmp   rax
.Lx21_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx21_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx21_2
.Lx21_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx21_2
.Lx21_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx21_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx21_2
.Lx21_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx21_2
.Lx21_1:
                        call             rt_faildescr@PLT
.Lx21_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n7_var_α
n6_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "num/1"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n9_op11_α
.Lx24_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n6_call_proc_staged_β
                                                                                        jmp   n10_suspend_α
n9_op11_β:
                                                                                        jmp   n6_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n10_suspend_α:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$fa0$2F1_γ
n10_suspend_β:
                                                                                        jmp   n6_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$fa0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 376]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$fa0$2F1_ω:
                        mov              rax, [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_num$2F1_α
proc_num$2F1_α:
                        .global          proc_num$2F1_α
                        .global          proc_num$2F1_β
                        .global          proc_num$2F1_γ
                        .global          proc_num$2F1_ω
                        sub              rsp, 592
                        mov              [rsp + 568], rcx
                        mov              [rsp + 576], rdx
                        mov              [rsp + 584], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 560
                        call             rt_jmp_frame_lexprep2@PLT
proc_num$2F1_α_body:
                        lea              rax, [rip + n39_suspend_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx47_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx47_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx47_101
.Lx47_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx47_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   n29_var_ref_α
n28_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n31_lit_integer_α
.Lx50_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n32_op11_α
.Lx51_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx52_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx52_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx52_111
                        cmp              esi, 1
                                                                                        jne   .Lx52_112
                        mov              r8, rax
                                                                                        jmp   .Lx52_110
.Lx52_112:
                        cmp              esi, 2
                                                                                        jne   .Lx52_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx52_111
                        mov              r8, rax
                                                                                        jmp   .Lx52_110
.Lx52_113:
                        cmp              eax, 13
                                                                                        jne   .Lx52_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx52_111
                        cmp              rax, r8
                                                                                        je    .Lx52_111
                        mov              r8, rax
                                                                                        jmp   .Lx52_110
.Lx52_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx52_114
                        cmp              eax, 99
                                                                                        je    .Lx52_114
                        cmp              eax, 13
                                                                                        jne   .Lx52_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx52_114
                                                                                        jmp   .Lx52_118
.Lx52_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx52_115
                        cmp              eax, 6
                                                                                        jne   .Lx52_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx52_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx52_115
                                                                                        jmp   .Lx52_114
.Lx52_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx52_117
.Lx52_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx52_117
.Lx52_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx52_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n34_var_ref_α
                                                                                        jmp   n33_var_ref_α
n32_op11_β:
                                                                                        jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n37_op11_α
.Lx57_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n38_lit_integer_α
.Lx58_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n39_suspend_α
n37_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n41_op11_α
.Lx60_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n39_suspend_α:
                        lea              rax, [rip + n39_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_num$2F1_γ
n39_suspend_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   n34_var_ref_α
n40_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx64_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx64_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx64_111
                        cmp              esi, 1
                                                                                        jne   .Lx64_112
                        mov              r8, rax
                                                                                        jmp   .Lx64_110
.Lx64_112:
                        cmp              esi, 2
                                                                                        jne   .Lx64_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx64_111
                        mov              r8, rax
                                                                                        jmp   .Lx64_110
.Lx64_113:
                        cmp              eax, 13
                                                                                        jne   .Lx64_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx64_111
                        cmp              rax, r8
                                                                                        je    .Lx64_111
                        mov              r8, rax
                                                                                        jmp   .Lx64_110
.Lx64_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx64_114
                        cmp              eax, 99
                                                                                        je    .Lx64_114
                        cmp              eax, 13
                                                                                        jne   .Lx64_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx64_114
                                                                                        jmp   .Lx64_118
.Lx64_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx64_115
                        cmp              eax, 6
                                                                                        jne   .Lx64_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx64_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx64_115
                                                                                        jmp   .Lx64_114
.Lx64_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx64_117
.Lx64_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx64_117
.Lx64_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx64_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n43_op11_α
                                                                                        jmp   n42_var_ref_α
n41_op11_β:
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
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
                                                                                        je    proc_num$2F1_ω
                                                                                        jmp   proc_num$2F1_ω
n43_op11_β:
                                                                                        jmp   proc_num$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n45_op11_α
.Lx68_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
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
                                                                                        je    n43_op11_α
                                                                                        jmp   n46_suspend_α
n45_op11_β:
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_suspend_α:
                        lea              rax, [rip + n46_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_num$2F1_γ
n46_suspend_β:
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_β:
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_num$2F1_res]
                        push             rax
                        mov              rax, [rbp + 568]
                        mov              rbp, [rbp + 584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_num$2F1_ω:
                        mov              rax, [rbp + 576]
                        lea              rsp, [rbp + 592]
                        mov              rbp, [rbp + 584]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$fa0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$fa0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 368
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "num/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_num$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
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
                        sub              rsp, 2568
                        mov              rdi, rsp
                        mov              ecx, 2568
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2560], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx151_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx151_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx151_101
.Lx151_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx151_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n73_op11_α
n72_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        .section         .rodata
.Lrkfn153:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n74_op11_α
n73_op11_β:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn155:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n76_var_ref_α
n74_op11_β:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n77_op11_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "no_setof"
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn160:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n79_lit_string_α
n77_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2400]
                        lea              r8, [rbp + 2400]
.Lx161_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx161_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx161_41
                        cmp              esi, 1
                                                                                        jne   .Lx161_55
                        mov              r8, rax
                                                                                        jmp   .Lx161_40
.Lx161_55:
                        cmp              esi, 2
                                                                                        jne   .Lx161_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx161_41
                        mov              r8, rax
                                                                                        jmp   .Lx161_40
.Lx161_56:
                        cmp              eax, 13
                                                                                        jne   .Lx161_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx161_41
                        cmp              rax, r8
                                                                                        je    .Lx161_41
                        mov              r8, rax
                                                                                        jmp   .Lx161_40
.Lx161_41:
                        lea              r9, [rbp + 2416]
.Lx161_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx161_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx161_43
                        cmp              esi, 1
                                                                                        jne   .Lx161_57
                        mov              r9, rax
                                                                                        jmp   .Lx161_42
.Lx161_57:
                        cmp              esi, 2
                                                                                        jne   .Lx161_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx161_43
                        mov              r9, rax
                                                                                        jmp   .Lx161_42
.Lx161_58:
                        cmp              eax, 13
                                                                                        jne   .Lx161_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx161_43
                        cmp              rax, r9
                                                                                        je    .Lx161_43
                        mov              r9, rax
                                                                                        jmp   .Lx161_42
.Lx161_43:
                        cmp              r8, r9
                                                                                        je    .Lx161_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx161_44
                        cmp              eax, 99
                                                                                        je    .Lx161_44
                        cmp              eax, 13
                                                                                        jne   .Lx161_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx161_44
                                                                                        jmp   .Lx161_45
.Lx161_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx161_53
                        cmp              eax, 99
                                                                                        je    .Lx161_53
                        cmp              eax, 13
                                                                                        jne   .Lx161_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx161_53
                                                                                        jmp   .Lx161_46
.Lx161_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx161_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx161_53
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
                                                                                        jmp   .Lx161_51
.Lx161_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx161_47
                        cmp              eax, 99
                                                                                        je    .Lx161_47
                        cmp              eax, 13
                                                                                        jne   .Lx161_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx161_47
                                                                                        jmp   .Lx161_48
.Lx161_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx161_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx161_53
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
                                                                                        jmp   .Lx161_51
.Lx161_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx161_49
                        cmp              edx, 14
                                                                                        je    .Lx161_53
                                                                                        jmp   .Lx161_52
.Lx161_49:
                        cmp              edx, 14
                                                                                        je    .Lx161_52
                        cmp              ecx, 7
                                                                                        je    .Lx161_53
                        cmp              edx, 7
                                                                                        je    .Lx161_53
                        cmp              ecx, 6
                                                                                        jne   .Lx161_50
                        cmp              edx, 6
                                                                                        jne   .Lx161_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx161_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx161_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx161_51
                                                                                        jmp   .Lx161_52
.Lx161_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx161_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx161_53
.Lx161_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx161_54
.Lx161_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx161_54
.Lx161_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx161_54:
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n81_var_ref_α
n78_op11_β:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n82_op11_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n80_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn167:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n84_op11_α
n82_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n85_op11_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        .section         .rodata
.Lrkfn170:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n86_var_ref_α
n84_op11_β:
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn172:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n88_var_ref_α
n85_op11_β:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n89_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n90_op11_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "no_bagof"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n91_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α:
                        mov              qword ptr [rbp + 1952], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx179_20
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx179_21
.Lx179_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        call             rt_arg_stage@PLT
.Lx179_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx179_1
                        lea              rcx, [rip + .Lx179_3]
                        lea              rdx, [rip + .Lx179_4]
                                                                                        jmp   rax
.Lx179_3:
                        mov              qword ptr [rbp + 1960], rsp
                        mov              rax, qword ptr [rbp + 1952]
                        test             rax, rax
                                                                                        jne   .Lx179_5
                        mov              qword ptr [rbp + 1952], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx179_2
.Lx179_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx179_2
.Lx179_4:
                        mov              rax, qword ptr [rbp + 1952]
                        test             rax, rax
                                                                                        jne   .Lx179_6
                        mov              qword ptr [rbp + 1952], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx179_2
.Lx179_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx179_2
.Lx179_1:
                        call             rt_faildescr@PLT
.Lx179_2:
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n92_var_α
n89_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1960]
                                                                                        jmp   qword ptr [rsp]
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "$fa0/1"
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn181:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n94_lit_string_α
n90_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n95_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n96_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn187:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n97_var_ref_α
n93_op11_β:
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n98_op11_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2184], rax
                        .section         .rodata
.Lrkfn190:              .string          "$sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n99_var_α
n95_op11_β:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn192:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n89_call_proc_staged_β
n96_op11_β:
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn196:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n101_op11_α
n98_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n102_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1808]
                        lea              r8, [rbp + 1808]
.Lx199_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx199_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        cmp              esi, 1
                                                                                        jne   .Lx199_55
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_55:
                        cmp              esi, 2
                                                                                        jne   .Lx199_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_56:
                        cmp              eax, 13
                                                                                        jne   .Lx199_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        cmp              rax, r8
                                                                                        je    .Lx199_41
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_41:
                        lea              r9, [rbp + 1824]
.Lx199_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx199_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        cmp              esi, 1
                                                                                        jne   .Lx199_57
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_57:
                        cmp              esi, 2
                                                                                        jne   .Lx199_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_58:
                        cmp              eax, 13
                                                                                        jne   .Lx199_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        cmp              rax, r9
                                                                                        je    .Lx199_43
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_43:
                        cmp              r8, r9
                                                                                        je    .Lx199_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_44
                        cmp              eax, 99
                                                                                        je    .Lx199_44
                        cmp              eax, 13
                                                                                        jne   .Lx199_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx199_44
                                                                                        jmp   .Lx199_45
.Lx199_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_53
                        cmp              eax, 99
                                                                                        je    .Lx199_53
                        cmp              eax, 13
                                                                                        jne   .Lx199_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx199_53
                                                                                        jmp   .Lx199_46
.Lx199_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx199_53
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
                                                                                        jmp   .Lx199_51
.Lx199_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_47
                        cmp              eax, 99
                                                                                        je    .Lx199_47
                        cmp              eax, 13
                                                                                        jne   .Lx199_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx199_47
                                                                                        jmp   .Lx199_48
.Lx199_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx199_53
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
                                                                                        jmp   .Lx199_51
.Lx199_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx199_49
                        cmp              edx, 14
                                                                                        je    .Lx199_53
                                                                                        jmp   .Lx199_52
.Lx199_49:
                        cmp              edx, 14
                                                                                        je    .Lx199_52
                        cmp              ecx, 7
                                                                                        je    .Lx199_53
                        cmp              edx, 7
                                                                                        je    .Lx199_53
                        cmp              ecx, 6
                                                                                        jne   .Lx199_50
                        cmp              edx, 6
                                                                                        jne   .Lx199_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx199_51
                                                                                        jmp   .Lx199_52
.Lx199_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx199_53
.Lx199_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx199_54
.Lx199_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx199_54
.Lx199_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx199_54:
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n103_var_ref_α
n100_op11_β:
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        .section         .rodata
.Lrkfn201:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n104_op11_α
n101_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn203:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n79_lit_string_α
n102_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn207:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n106_var_ref_α
n104_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n107_op11_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n108_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn212:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n109_var_ref_α
n107_op11_β:
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1360]
                        lea              r8, [rbp + 1360]
.Lx213_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx213_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        cmp              esi, 1
                                                                                        jne   .Lx213_55
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_55:
                        cmp              esi, 2
                                                                                        jne   .Lx213_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_56:
                        cmp              eax, 13
                                                                                        jne   .Lx213_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        cmp              rax, r8
                                                                                        je    .Lx213_41
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_41:
                        lea              r9, [rbp + 1376]
.Lx213_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx213_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        cmp              esi, 1
                                                                                        jne   .Lx213_57
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_57:
                        cmp              esi, 2
                                                                                        jne   .Lx213_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_58:
                        cmp              eax, 13
                                                                                        jne   .Lx213_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        cmp              rax, r9
                                                                                        je    .Lx213_43
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_43:
                        cmp              r8, r9
                                                                                        je    .Lx213_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_44
                        cmp              eax, 99
                                                                                        je    .Lx213_44
                        cmp              eax, 13
                                                                                        jne   .Lx213_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx213_44
                                                                                        jmp   .Lx213_45
.Lx213_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_53
                        cmp              eax, 99
                                                                                        je    .Lx213_53
                        cmp              eax, 13
                                                                                        jne   .Lx213_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx213_53
                                                                                        jmp   .Lx213_46
.Lx213_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx213_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx213_53
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
                                                                                        jmp   .Lx213_51
.Lx213_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_47
                        cmp              eax, 99
                                                                                        je    .Lx213_47
                        cmp              eax, 13
                                                                                        jne   .Lx213_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx213_47
                                                                                        jmp   .Lx213_48
.Lx213_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx213_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx213_53
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
                                                                                        jmp   .Lx213_51
.Lx213_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx213_49
                        cmp              edx, 14
                                                                                        je    .Lx213_53
                                                                                        jmp   .Lx213_52
.Lx213_49:
                        cmp              edx, 14
                                                                                        je    .Lx213_52
                        cmp              ecx, 7
                                                                                        je    .Lx213_53
                        cmp              edx, 7
                                                                                        je    .Lx213_53
                        cmp              ecx, 6
                                                                                        jne   .Lx213_50
                        cmp              edx, 6
                                                                                        jne   .Lx213_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx213_51
                                                                                        jmp   .Lx213_52
.Lx213_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx213_53
.Lx213_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx213_54
.Lx213_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx213_54
.Lx213_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx213_54:
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n110_var_α
n108_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n111_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n113_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn221:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n114_lit_string_α
n112_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1568]
                        lea              r8, [rbp + 1568]
.Lx222_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx222_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        cmp              esi, 1
                                                                                        jne   .Lx222_55
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_55:
                        cmp              esi, 2
                                                                                        jne   .Lx222_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_56:
                        cmp              eax, 13
                                                                                        jne   .Lx222_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        cmp              rax, r8
                                                                                        je    .Lx222_41
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_41:
                        lea              r9, [rbp + 1584]
.Lx222_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx222_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        cmp              esi, 1
                                                                                        jne   .Lx222_57
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_57:
                        cmp              esi, 2
                                                                                        jne   .Lx222_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_58:
                        cmp              eax, 13
                                                                                        jne   .Lx222_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_43
                        cmp              rax, r9
                                                                                        je    .Lx222_43
                        mov              r9, rax
                                                                                        jmp   .Lx222_42
.Lx222_43:
                        cmp              r8, r9
                                                                                        je    .Lx222_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_44
                        cmp              eax, 99
                                                                                        je    .Lx222_44
                        cmp              eax, 13
                                                                                        jne   .Lx222_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx222_44
                                                                                        jmp   .Lx222_45
.Lx222_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_53
                        cmp              eax, 99
                                                                                        je    .Lx222_53
                        cmp              eax, 13
                                                                                        jne   .Lx222_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx222_53
                                                                                        jmp   .Lx222_46
.Lx222_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx222_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx222_53
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
                                                                                        jmp   .Lx222_51
.Lx222_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_47
                        cmp              eax, 99
                                                                                        je    .Lx222_47
                        cmp              eax, 13
                                                                                        jne   .Lx222_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx222_47
                                                                                        jmp   .Lx222_48
.Lx222_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx222_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx222_53
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
                                                                                        jmp   .Lx222_51
.Lx222_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx222_49
                        cmp              edx, 14
                                                                                        je    .Lx222_53
                                                                                        jmp   .Lx222_52
.Lx222_49:
                        cmp              edx, 14
                                                                                        je    .Lx222_52
                        cmp              ecx, 7
                                                                                        je    .Lx222_53
                        cmp              edx, 7
                                                                                        je    .Lx222_53
                        cmp              ecx, 6
                                                                                        jne   .Lx222_50
                        cmp              edx, 6
                                                                                        jne   .Lx222_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx222_51
                                                                                        jmp   .Lx222_52
.Lx222_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx222_53
.Lx222_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx222_54
.Lx222_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx222_54
.Lx222_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx222_54:
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n115_var_α
n113_op11_β:
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n116_op11_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n117_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n116_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn227:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n118_lit_string_α
n116_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn229:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n94_lit_string_α
n117_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n119_lit_string_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n120_lit_string_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n121_lit_integer_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n122_op11_α
.Lx233_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n123_lit_string_α
n122_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n124_lit_string_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n125_lit_string_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n126_lit_integer_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n127_op11_α
.Lx238_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
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
                                                                                        je    main_ω
                                                                                        jmp   n128_lit_string_α
n127_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n129_lit_string_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n130_lit_string_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n131_lit_integer_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n132_op11_α
.Lx243_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
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
                                                                                        je    main_ω
                                                                                        jmp   n133_lit_string_α
n132_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n134_lit_string_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n135_lit_string_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n136_lit_integer_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n137_op11_α
.Lx248_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n138_lit_string_α
n137_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n139_op11_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n140_op11_α
n139_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n141_op11_α
n140_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n142_op11_α
n141_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n143_var_ref_α
n142_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn258:              .string          "$keysort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n145_var_α
n144_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn262:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n147_lit_string_α
n146_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n148_op11_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn265:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n80_op11_α
                                                                                        jmp   n149_move_label_α
n148_op11_β:
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n149_move_label_α:
                        lea              rax, [rip + n80_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n150_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n150_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n150_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2560]
                        add              rsp, 2568
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2560]
                        add              rsp, 2568
                        ret
                        .section         .note.GNU-stack,"",@progbits
