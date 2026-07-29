                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
                        .global          proc_$disj0$2F1_α
                        .global          proc_$disj0$2F1_β
                        .global          proc_$disj0$2F1_γ
                        .global          proc_$disj0$2F1_ω
                        sub              rsp, 560
                        mov              [rsp + 536], rcx
                        mov              [rsp + 544], rdx
                        mov              [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 496
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n13_suspend_β]
                        mov              qword ptr [rbp + 496], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx16_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx16_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx16_101
.Lx16_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx16_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
.Lx21_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx21_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx21_41
                        cmp              esi, 1
                                                                                        jne   .Lx21_55
                        mov              r8, rax
                                                                                        jmp   .Lx21_40
.Lx21_55:
                        cmp              esi, 2
                                                                                        jne   .Lx21_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx21_41
                        mov              r8, rax
                                                                                        jmp   .Lx21_40
.Lx21_56:
                        cmp              eax, 13
                                                                                        jne   .Lx21_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx21_41
                        cmp              rax, r8
                                                                                        je    .Lx21_41
                        mov              r8, rax
                                                                                        jmp   .Lx21_40
.Lx21_41:
                        lea              r9, [rbp + 448]
.Lx21_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx21_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx21_43
                        cmp              esi, 1
                                                                                        jne   .Lx21_57
                        mov              r9, rax
                                                                                        jmp   .Lx21_42
.Lx21_57:
                        cmp              esi, 2
                                                                                        jne   .Lx21_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx21_43
                        mov              r9, rax
                                                                                        jmp   .Lx21_42
.Lx21_58:
                        cmp              eax, 13
                                                                                        jne   .Lx21_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx21_43
                        cmp              rax, r9
                                                                                        je    .Lx21_43
                        mov              r9, rax
                                                                                        jmp   .Lx21_42
.Lx21_43:
                        cmp              r8, r9
                                                                                        je    .Lx21_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx21_44
                        cmp              eax, 99
                                                                                        je    .Lx21_44
                        cmp              eax, 13
                                                                                        jne   .Lx21_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx21_44
                                                                                        jmp   .Lx21_45
.Lx21_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx21_53
                        cmp              eax, 99
                                                                                        je    .Lx21_53
                        cmp              eax, 13
                                                                                        jne   .Lx21_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx21_53
                                                                                        jmp   .Lx21_46
.Lx21_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx21_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx21_53
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
                                                                                        jmp   .Lx21_51
.Lx21_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx21_47
                        cmp              eax, 99
                                                                                        je    .Lx21_47
                        cmp              eax, 13
                                                                                        jne   .Lx21_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx21_47
                                                                                        jmp   .Lx21_48
.Lx21_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx21_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx21_53
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
                                                                                        jmp   .Lx21_51
.Lx21_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx21_49
                        cmp              edx, 14
                                                                                        je    .Lx21_53
                                                                                        jmp   .Lx21_52
.Lx21_49:
                        cmp              edx, 14
                                                                                        je    .Lx21_52
                        cmp              ecx, 7
                                                                                        je    .Lx21_53
                        cmp              edx, 7
                                                                                        je    .Lx21_53
                        cmp              ecx, 6
                                                                                        jne   .Lx21_50
                        cmp              edx, 6
                                                                                        jne   .Lx21_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx21_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx21_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx21_51
                                                                                        jmp   .Lx21_52
.Lx21_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx21_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx21_53
.Lx21_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx21_54
.Lx21_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx21_54
.Lx21_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx21_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n6_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx26_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx26_21
.Lx26_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx26_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx26_1
                        lea              rcx, [rip + .Lx26_3]
                        lea              rdx, [rip + .Lx26_4]
                                                                                        jmp   rax
.Lx26_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx26_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx26_2
.Lx26_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx26_2
.Lx26_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx26_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx26_2
.Lx26_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx26_2
.Lx26_1:
                        call             rt_faildescr@PLT
.Lx26_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_var_α
n6_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "a/1"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn34:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n12_lit_string_α
n10_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
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
.Lx35_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx35_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx35_41
                        cmp              esi, 1
                                                                                        jne   .Lx35_55
                        mov              r8, rax
                                                                                        jmp   .Lx35_40
.Lx35_55:
                        cmp              esi, 2
                                                                                        jne   .Lx35_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx35_41
                        mov              r8, rax
                                                                                        jmp   .Lx35_40
.Lx35_56:
                        cmp              eax, 13
                                                                                        jne   .Lx35_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx35_41
                        cmp              rax, r8
                                                                                        je    .Lx35_41
                        mov              r8, rax
                                                                                        jmp   .Lx35_40
.Lx35_41:
                        lea              r9, [rbp + 144]
.Lx35_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx35_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx35_43
                        cmp              esi, 1
                                                                                        jne   .Lx35_57
                        mov              r9, rax
                                                                                        jmp   .Lx35_42
.Lx35_57:
                        cmp              esi, 2
                                                                                        jne   .Lx35_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx35_43
                        mov              r9, rax
                                                                                        jmp   .Lx35_42
.Lx35_58:
                        cmp              eax, 13
                                                                                        jne   .Lx35_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx35_43
                        cmp              rax, r9
                                                                                        je    .Lx35_43
                        mov              r9, rax
                                                                                        jmp   .Lx35_42
.Lx35_43:
                        cmp              r8, r9
                                                                                        je    .Lx35_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx35_44
                        cmp              eax, 99
                                                                                        je    .Lx35_44
                        cmp              eax, 13
                                                                                        jne   .Lx35_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx35_44
                                                                                        jmp   .Lx35_45
.Lx35_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx35_53
                        cmp              eax, 99
                                                                                        je    .Lx35_53
                        cmp              eax, 13
                                                                                        jne   .Lx35_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx35_53
                                                                                        jmp   .Lx35_46
.Lx35_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx35_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx35_53
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
                                                                                        jmp   .Lx35_51
.Lx35_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx35_47
                        cmp              eax, 99
                                                                                        je    .Lx35_47
                        cmp              eax, 13
                                                                                        jne   .Lx35_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx35_47
                                                                                        jmp   .Lx35_48
.Lx35_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx35_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx35_53
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
                                                                                        jmp   .Lx35_51
.Lx35_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx35_49
                        cmp              edx, 14
                                                                                        je    .Lx35_53
                                                                                        jmp   .Lx35_52
.Lx35_49:
                        cmp              edx, 14
                                                                                        je    .Lx35_52
                        cmp              ecx, 7
                                                                                        je    .Lx35_53
                        cmp              edx, 7
                                                                                        je    .Lx35_53
                        cmp              ecx, 6
                                                                                        jne   .Lx35_50
                        cmp              edx, 6
                                                                                        jne   .Lx35_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx35_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx35_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx35_51
                                                                                        jmp   .Lx35_52
.Lx35_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx35_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx35_53
.Lx35_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx35_54
.Lx35_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx35_54
.Lx35_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx35_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_suspend_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n15_op11_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_suspend_α:
                        lea              rax, [rip + n13_suspend_β]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n13_suspend_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
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
n14_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn41:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n5_op11_α
n15_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 496]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 536]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rax, [rbp + 544]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_a$2F1_α
proc_a$2F1_α:
                        .global          proc_a$2F1_α
                        .global          proc_a$2F1_β
                        .global          proc_a$2F1_γ
                        .global          proc_a$2F1_ω
                        sub              rsp, 832
                        mov              [rsp + 808], rcx
                        mov              [rsp + 816], rdx
                        mov              [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 784
                        mov              edx, 800
                        call             rt_jmp_frame_lexprep2@PLT
proc_a$2F1_α_body:
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rbp + 784], rax
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx70_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx70_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx70_101
.Lx70_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx70_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_a$2F1_ω
                                                                                        jmp   n43_var_ref_α
n42_op11_β:
                                                                                        jmp   proc_a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n45_lit_integer_α
.Lx73_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n46_op11_α
.Lx74_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx75_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_111
                        cmp              esi, 1
                                                                                        jne   .Lx75_112
                        mov              r8, rax
                                                                                        jmp   .Lx75_110
.Lx75_112:
                        cmp              esi, 2
                                                                                        jne   .Lx75_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_111
                        mov              r8, rax
                                                                                        jmp   .Lx75_110
.Lx75_113:
                        cmp              eax, 13
                                                                                        jne   .Lx75_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_111
                        cmp              rax, r8
                                                                                        je    .Lx75_111
                        mov              r8, rax
                                                                                        jmp   .Lx75_110
.Lx75_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_114
                        cmp              eax, 99
                                                                                        je    .Lx75_114
                        cmp              eax, 13
                                                                                        jne   .Lx75_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx75_114
                                                                                        jmp   .Lx75_118
.Lx75_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx75_115
                        cmp              eax, 6
                                                                                        jne   .Lx75_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx75_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx75_115
                                                                                        jmp   .Lx75_114
.Lx75_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx75_117
.Lx75_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx75_117
.Lx75_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx75_117:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n48_var_ref_α
                                                                                        jmp   n47_var_ref_α
n46_op11_β:
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n51_op11_α
.Lx80_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n52_lit_integer_α
.Lx81_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n54_op11_α
                                                                                        jmp   n53_suspend_α
n51_op11_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n55_op11_α
.Lx83_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n53_suspend_α:
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_a$2F1_γ
n53_suspend_β:
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_a$2F1_ω
                                                                                        jmp   n48_var_ref_α
n54_op11_β:
                                                                                        jmp   proc_a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
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
.Lx87_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_111
                        cmp              esi, 1
                                                                                        jne   .Lx87_112
                        mov              r8, rax
                                                                                        jmp   .Lx87_110
.Lx87_112:
                        cmp              esi, 2
                                                                                        jne   .Lx87_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_111
                        mov              r8, rax
                                                                                        jmp   .Lx87_110
.Lx87_113:
                        cmp              eax, 13
                                                                                        jne   .Lx87_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_111
                        cmp              rax, r8
                                                                                        je    .Lx87_111
                        mov              r8, rax
                                                                                        jmp   .Lx87_110
.Lx87_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_114
                        cmp              eax, 99
                                                                                        je    .Lx87_114
                        cmp              eax, 13
                                                                                        jne   .Lx87_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx87_114
                                                                                        jmp   .Lx87_118
.Lx87_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx87_115
                        cmp              eax, 6
                                                                                        jne   .Lx87_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx87_114
                        movabs           rdx, 2
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx87_115
                                                                                        jmp   .Lx87_114
.Lx87_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx87_117
.Lx87_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx87_117
.Lx87_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx87_117:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n57_var_ref_α
                                                                                        jmp   n56_var_ref_α
n55_op11_β:
                                                                                        jmp   n57_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n59_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n60_op11_α
.Lx92_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n61_lit_integer_α
.Lx93_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        movabs           rsi, 2
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n63_op11_α
                                                                                        jmp   n62_suspend_α
n60_op11_β:
                                                                                        jmp   n63_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n64_op11_α
.Lx95_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n62_suspend_α:
                        lea              rax, [rip + n62_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_a$2F1_γ
n62_suspend_β:
                                                                                        jmp   n63_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
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
                                                                                        je    proc_a$2F1_ω
                                                                                        jmp   n57_var_ref_α
n63_op11_β:
                                                                                        jmp   proc_a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
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
.Lx99_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx99_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_111
                        cmp              esi, 1
                                                                                        jne   .Lx99_112
                        mov              r8, rax
                                                                                        jmp   .Lx99_110
.Lx99_112:
                        cmp              esi, 2
                                                                                        jne   .Lx99_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx99_111
                        mov              r8, rax
                                                                                        jmp   .Lx99_110
.Lx99_113:
                        cmp              eax, 13
                                                                                        jne   .Lx99_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_111
                        cmp              rax, r8
                                                                                        je    .Lx99_111
                        mov              r8, rax
                                                                                        jmp   .Lx99_110
.Lx99_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx99_114
                        cmp              eax, 99
                                                                                        je    .Lx99_114
                        cmp              eax, 13
                                                                                        jne   .Lx99_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx99_114
                                                                                        jmp   .Lx99_118
.Lx99_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx99_115
                        cmp              eax, 6
                                                                                        jne   .Lx99_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx99_114
                        movabs           rdx, 3
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx99_115
                                                                                        jmp   .Lx99_114
.Lx99_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx99_117
.Lx99_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx99_117
.Lx99_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx99_117:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n66_op11_α
                                                                                        jmp   n65_var_ref_α
n64_op11_β:
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n67_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
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
                                                                                        je    proc_a$2F1_ω
                                                                                        jmp   proc_a$2F1_ω
n66_op11_β:
                                                                                        jmp   proc_a$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n68_op11_α
.Lx103_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        movabs           rsi, 3
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n66_op11_α
                                                                                        jmp   n69_suspend_α
n68_op11_β:
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_suspend_α:
                        lea              rax, [rip + n69_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_a$2F1_γ
n69_suspend_β:
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_β:
                                                                                        jmp   qword ptr [rbp + 784]
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_a$2F1_res]
                        push             rax
                        mov              rax, [rbp + 808]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_a$2F1_ω:
                        mov              rax, [rbp + 816]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$disj0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$disj0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "a/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_a$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 800
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
                        sub              rsp, 632
                        mov              rdi, rsp
                        mov              ecx, 632
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 624], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx129_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n108_var_ref_α
n107_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        mov              qword ptr [rbp + 544], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx133_20
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx133_21
.Lx133_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx133_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx133_1
                        lea              rcx, [rip + .Lx133_3]
                        lea              rdx, [rip + .Lx133_4]
                                                                                        jmp   rax
.Lx133_3:
                        mov              qword ptr [rbp + 552], rsp
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx133_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx133_2
.Lx133_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx133_2
.Lx133_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx133_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx133_2
.Lx133_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx133_2
.Lx133_1:
                        call             rt_faildescr@PLT
.Lx133_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n111_op11_α
                                                                                        jmp   n110_var_ref_α
n109_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 552]
                                                                                        jmp   qword ptr [rsp]
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n112_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n111_op11_α:
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
n111_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        mov              qword ptr [rbp + 464], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx138_20
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx138_21
.Lx138_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx138_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx138_1
                        lea              rcx, [rip + .Lx138_3]
                        lea              rdx, [rip + .Lx138_4]
                                                                                        jmp   rax
.Lx138_3:
                        mov              qword ptr [rbp + 472], rsp
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx138_5
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx138_2
.Lx138_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx138_2
.Lx138_4:
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx138_6
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx138_2
.Lx138_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx138_2
.Lx138_1:
                        call             rt_faildescr@PLT
.Lx138_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n114_lit_string_α
                                                                                        jmp   n113_var_α
n112_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 472]
                                                                                        jmp   qword ptr [rsp]
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "a/1"
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n115_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n116_op11_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn143:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n109_call_proc_staged_β
                                                                                        jmp   n117_lit_string_α
n115_op11_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n116_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn145:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n109_call_proc_staged_β
                                                                                        jmp   n117_lit_string_α
n116_op11_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n118_op11_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn148:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n109_call_proc_staged_β
                                                                                        jmp   n119_lit_string_α
n118_op11_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n120_op11_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn151:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n109_call_proc_staged_β
                                                                                        jmp   n121_lit_string_α
n120_op11_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n122_op11_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn154:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n109_call_proc_staged_β
                                                                                        jmp   n123_lit_string_α
n122_op11_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n124_op11_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn157:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n109_call_proc_staged_β
                                                                                        jmp   n125_lit_string_α
n124_op11_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n126_op11_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn160:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n109_call_proc_staged_β
                                                                                        jmp   n127_move_label_α
n126_op11_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n127_move_label_α:
                        lea              rax, [rip + n109_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n128_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n128_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 624]
                        add              rsp, 632
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 624]
                        add              rsp, 632
                        ret
                        .section         .note.GNU-stack,"",@progbits
