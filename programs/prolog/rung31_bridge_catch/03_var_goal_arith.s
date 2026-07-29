                        .intel_syntax    noprefix
                        .text
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
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n1_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx5_60:
                        .section         .rodata
.Lbynamegenfn2:         .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n2_suspend_α
n1_call_builtin_gen_β:
                                                                                        jmp   .Lx5_60
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n2_suspend_β:
                                                                                        jmp   n1_call_builtin_gen_β
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
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
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
                        sub              rsp, 728
                        mov              rdi, rsp
                        mov              ecx, 728
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 720], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx30_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx30_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx30_101
.Lx30_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx30_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n9_var_ref_α
n8_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n11_var_ref_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "is"
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n13_lit_integer_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n14_lit_integer_α
.Lx37_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n15_op11_α
.Lx38_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n16_op11_α
n15_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 440]
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
                                                                                        je    n18_op11_α
                                                                                        jmp   n17_op11_α
n16_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
.Lx41_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx41_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        cmp              esi, 1
                                                                                        jne   .Lx41_55
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_55:
                        cmp              esi, 2
                                                                                        jne   .Lx41_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_56:
                        cmp              eax, 13
                                                                                        jne   .Lx41_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_41
                        cmp              rax, r8
                                                                                        je    .Lx41_41
                        mov              r8, rax
                                                                                        jmp   .Lx41_40
.Lx41_41:
                        lea              r9, [rbp + 400]
.Lx41_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx41_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        cmp              esi, 1
                                                                                        jne   .Lx41_57
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_57:
                        cmp              esi, 2
                                                                                        jne   .Lx41_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_58:
                        cmp              eax, 13
                                                                                        jne   .Lx41_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_43
                        cmp              rax, r9
                                                                                        je    .Lx41_43
                        mov              r9, rax
                                                                                        jmp   .Lx41_42
.Lx41_43:
                        cmp              r8, r9
                                                                                        je    .Lx41_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_44
                        cmp              eax, 99
                                                                                        je    .Lx41_44
                        cmp              eax, 13
                                                                                        jne   .Lx41_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx41_44
                                                                                        jmp   .Lx41_45
.Lx41_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_53
                        cmp              eax, 99
                                                                                        je    .Lx41_53
                        cmp              eax, 13
                                                                                        jne   .Lx41_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx41_53
                                                                                        jmp   .Lx41_46
.Lx41_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx41_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx41_53
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
                                                                                        jmp   .Lx41_51
.Lx41_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_47
                        cmp              eax, 99
                                                                                        je    .Lx41_47
                        cmp              eax, 13
                                                                                        jne   .Lx41_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx41_47
                                                                                        jmp   .Lx41_48
.Lx41_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx41_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx41_53
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
                                                                                        jmp   .Lx41_51
.Lx41_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx41_49
                        cmp              edx, 14
                                                                                        je    .Lx41_53
                                                                                        jmp   .Lx41_52
.Lx41_49:
                        cmp              edx, 14
                                                                                        je    .Lx41_52
                        cmp              ecx, 7
                                                                                        je    .Lx41_53
                        cmp              edx, 7
                                                                                        je    .Lx41_53
                        cmp              ecx, 6
                                                                                        jne   .Lx41_50
                        cmp              edx, 6
                                                                                        jne   .Lx41_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx41_51
                                                                                        jmp   .Lx41_52
.Lx41_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx41_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx41_53
.Lx41_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx41_54
.Lx41_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx41_54
.Lx41_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx41_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n19_var_ref_α
n17_op11_β:
                                                                                        jmp   n18_op11_α
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n18_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx45_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx45_101
.Lx45_100:
                        lea              rdi, [rbp + 224]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx45_101:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n21_var_ref_α
n20_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n22_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx49_21
.Lx49_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx49_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx49_1
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4]
                                                                                        jmp   rax
.Lx49_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx49_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx49_2
.Lx49_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx49_2
.Lx49_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx49_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx49_2
.Lx49_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx49_2
.Lx49_1:
                        call             rt_faildescr@PLT
.Lx49_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n23_var_α
n22_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn53:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n24_op11_α
n24_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn55:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n26_lit_string_α
n25_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n27_op11_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn58:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n28_move_label_α
n27_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_move_label_α:
                        lea              rax, [rip + n18_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n29_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n29_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n29_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 720]
                        add              rsp, 728
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 720]
                        add              rsp, 728
                        ret
                        .section         .note.GNU-stack,"",@progbits
