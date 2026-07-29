                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
                        .global          proc_$disj0$2F1_α
                        .global          proc_$disj0$2F1_β
                        .global          proc_$disj0$2F1_γ
                        .global          proc_$disj0$2F1_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx14_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx14_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx14_101
.Lx14_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx14_101:
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx19_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx19_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx19_41
                        cmp              esi, 1
                                                                                        jne   .Lx19_55
                        mov              r8, rax
                                                                                        jmp   .Lx19_40
.Lx19_55:
                        cmp              esi, 2
                                                                                        jne   .Lx19_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx19_41
                        mov              r8, rax
                                                                                        jmp   .Lx19_40
.Lx19_56:
                        cmp              eax, 13
                                                                                        jne   .Lx19_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx19_41
                        cmp              rax, r8
                                                                                        je    .Lx19_41
                        mov              r8, rax
                                                                                        jmp   .Lx19_40
.Lx19_41:
                        lea              r9, [rbp + 352]
.Lx19_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx19_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx19_43
                        cmp              esi, 1
                                                                                        jne   .Lx19_57
                        mov              r9, rax
                                                                                        jmp   .Lx19_42
.Lx19_57:
                        cmp              esi, 2
                                                                                        jne   .Lx19_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx19_43
                        mov              r9, rax
                                                                                        jmp   .Lx19_42
.Lx19_58:
                        cmp              eax, 13
                                                                                        jne   .Lx19_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx19_43
                        cmp              rax, r9
                                                                                        je    .Lx19_43
                        mov              r9, rax
                                                                                        jmp   .Lx19_42
.Lx19_43:
                        cmp              r8, r9
                                                                                        je    .Lx19_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx19_44
                        cmp              eax, 99
                                                                                        je    .Lx19_44
                        cmp              eax, 13
                                                                                        jne   .Lx19_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx19_44
                                                                                        jmp   .Lx19_45
.Lx19_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx19_53
                        cmp              eax, 99
                                                                                        je    .Lx19_53
                        cmp              eax, 13
                                                                                        jne   .Lx19_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx19_53
                                                                                        jmp   .Lx19_46
.Lx19_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx19_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx19_53
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
                                                                                        jmp   .Lx19_51
.Lx19_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx19_47
                        cmp              eax, 99
                                                                                        je    .Lx19_47
                        cmp              eax, 13
                                                                                        jne   .Lx19_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx19_47
                                                                                        jmp   .Lx19_48
.Lx19_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx19_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx19_53
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
                                                                                        jmp   .Lx19_51
.Lx19_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx19_49
                        cmp              edx, 14
                                                                                        je    .Lx19_53
                                                                                        jmp   .Lx19_52
.Lx19_49:
                        cmp              edx, 14
                                                                                        je    .Lx19_52
                        cmp              ecx, 7
                                                                                        je    .Lx19_53
                        cmp              edx, 7
                                                                                        je    .Lx19_53
                        cmp              ecx, 6
                                                                                        jne   .Lx19_50
                        cmp              edx, 6
                                                                                        jne   .Lx19_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx19_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx19_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx19_51
                                                                                        jmp   .Lx19_52
.Lx19_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx19_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx19_53
.Lx19_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx19_54
.Lx19_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx19_54
.Lx19_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx19_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n6_lit_string_α
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
n6_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n8_op11_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx26_2]
                                                                                        jmp   .Lx26_3
.Lx26_2:
                        .quad            .Lx26_2_s
.Lx26_2_s:
                        .string          "a"
.Lx26_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n10_suspend_α
                                                                                        jmp   n5_op11_α
n8_op11_β:
                                                                                        jmp   n10_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_suspend_α:
                        lea              rax, [rip + n10_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n10_suspend_β:
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
.Lx31_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx31_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_41
                        cmp              esi, 1
                                                                                        jne   .Lx31_55
                        mov              r8, rax
                                                                                        jmp   .Lx31_40
.Lx31_55:
                        cmp              esi, 2
                                                                                        jne   .Lx31_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx31_41
                        mov              r8, rax
                                                                                        jmp   .Lx31_40
.Lx31_56:
                        cmp              eax, 13
                                                                                        jne   .Lx31_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_41
                        cmp              rax, r8
                                                                                        je    .Lx31_41
                        mov              r8, rax
                                                                                        jmp   .Lx31_40
.Lx31_41:
                        lea              r9, [rbp + 144]
.Lx31_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx31_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_43
                        cmp              esi, 1
                                                                                        jne   .Lx31_57
                        mov              r9, rax
                                                                                        jmp   .Lx31_42
.Lx31_57:
                        cmp              esi, 2
                                                                                        jne   .Lx31_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx31_43
                        mov              r9, rax
                                                                                        jmp   .Lx31_42
.Lx31_58:
                        cmp              eax, 13
                                                                                        jne   .Lx31_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_43
                        cmp              rax, r9
                                                                                        je    .Lx31_43
                        mov              r9, rax
                                                                                        jmp   .Lx31_42
.Lx31_43:
                        cmp              r8, r9
                                                                                        je    .Lx31_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx31_44
                        cmp              eax, 99
                                                                                        je    .Lx31_44
                        cmp              eax, 13
                                                                                        jne   .Lx31_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx31_44
                                                                                        jmp   .Lx31_45
.Lx31_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx31_53
                        cmp              eax, 99
                                                                                        je    .Lx31_53
                        cmp              eax, 13
                                                                                        jne   .Lx31_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx31_53
                                                                                        jmp   .Lx31_46
.Lx31_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx31_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx31_53
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
                                                                                        jmp   .Lx31_51
.Lx31_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx31_47
                        cmp              eax, 99
                                                                                        je    .Lx31_47
                        cmp              eax, 13
                                                                                        jne   .Lx31_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx31_47
                                                                                        jmp   .Lx31_48
.Lx31_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx31_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx31_53
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
                                                                                        jmp   .Lx31_51
.Lx31_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx31_49
                        cmp              edx, 14
                                                                                        je    .Lx31_53
                                                                                        jmp   .Lx31_52
.Lx31_49:
                        cmp              edx, 14
                                                                                        je    .Lx31_52
                        cmp              ecx, 7
                                                                                        je    .Lx31_53
                        cmp              edx, 7
                                                                                        je    .Lx31_53
                        cmp              ecx, 6
                                                                                        jne   .Lx31_50
                        cmp              edx, 6
                                                                                        jne   .Lx31_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx31_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx31_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx31_51
                                                                                        jmp   .Lx31_52
.Lx31_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx31_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx31_53
.Lx31_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx31_54
.Lx31_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx31_54
.Lx31_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx31_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n12_suspend_α
n11_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n12_suspend_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
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
n13_op11_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F1_res]
                        push             rax
                        mov              rax, [rbp + 440]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
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
                        mov              esi, 432
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
                        sub              rsp, 2168
                        mov              rdi, rsp
                        mov              ecx, 2168
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2160], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx119_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx119_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx119_101
.Lx119_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx119_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n36_lit_string_α
n35_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n37_lit_string_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n38_op11_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2032]
                        mov              rsi, qword ptr [rip + .Lx122_0]
                                                                                        jmp   .Lx122_1
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "a"
.Lx122_1:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n40_lit_string_α
                                                                                        jmp   n39_lit_string_α
n38_op11_β:
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n41_op11_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "t1_eq"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n42_op11_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "t1_differ"
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn126:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n43_lit_string_α
n41_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lrkfn128:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n43_lit_string_α
n42_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n45_op11_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
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
                                                                                        je    main_ω
                                                                                        jmp   n46_lit_string_α
n44_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn132:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n47_lit_string_α
n45_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n48_op11_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "main_failed"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n49_lit_string_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn136:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn136]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n51_op11_α
                                                                                        jmp   n50_lit_string_α
n48_op11_β:
                                                                                        jmp   n51_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n52_op11_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n53_op11_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
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
n51_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        mov              rsi, qword ptr [rip + .Lx140_0]
                                                                                        jmp   .Lx140_1
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "a"
.Lx140_1:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n55_lit_string_α
                                                                                        jmp   n54_lit_string_α
n52_op11_β:
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn142:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n51_op11_α
                                                                                        jmp   n56_move_label_α
n53_op11_β:
                                                                                        jmp   n51_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n57_op11_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "t2_eq"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n58_op11_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "t2_differ"
#-----------------------------------------------------------------------------------------------------------------------
n56_move_label_α:
                        lea              rax, [rip + n51_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn148:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n60_lit_string_α
n57_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn150:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n60_lit_string_α
n58_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n59_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n61_op11_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn155:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n62_var_ref_α
n61_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n64_op11_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              rsi, qword ptr [rip + .Lx159_2]
                                                                                        jmp   .Lx159_3
.Lx159_2:
                        .quad            .Lx159_2_s
.Lx159_2_s:
                        .string          "a"
.Lx159_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n66_lit_string_α
                                                                                        jmp   n65_lit_string_α
n64_op11_β:
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n67_op11_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "t3_unify"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n68_op11_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "t3_differ"
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn163:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n69_lit_string_α
n67_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn165:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n69_lit_string_α
n68_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n70_op11_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn168:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n71_lit_integer_α
n70_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rbp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n72_lit_integer_α
.Lx169_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n73_op11_α
.Lx170_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n74_lit_string_α
n73_op11_β:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n76_op11_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "t4_eq"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n77_op11_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "t4_differ"
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn175:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n78_lit_string_α
n76_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn177:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n78_lit_string_α
n77_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n79_op11_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn180:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n80_var_ref_α
n79_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n82_op11_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              rsi, qword ptr [rip + .Lx184_2]
                                                                                        jmp   .Lx184_3
.Lx184_2:
                        .quad            .Lx184_2_s
.Lx184_2_s:
                        .string          "a"
.Lx184_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n84_lit_string_α
                                                                                        jmp   n83_var_ref_α
n82_op11_β:
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n86_op11_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "t5_eq"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n87_op11_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn190:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n88_lit_string_α
n86_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx191_2]
                                                                                        jmp   .Lx191_3
.Lx191_2:
                        .quad            .Lx191_2_s
.Lx191_2_s:
                        .string          "b"
.Lx191_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n89_lit_string_α
                                                                                        jmp   n84_lit_string_α
n87_op11_β:
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n90_op11_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n91_op11_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "t5_differ"
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn195:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n92_var_ref_α
n90_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn197:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rbp + 960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n88_lit_string_α
n91_op11_β:
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n93_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_proc_staged_α:
                        mov              qword ptr [rbp + 848], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_20
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx201_21
.Lx201_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        call             rt_arg_stage@PLT
.Lx201_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx201_1
                        lea              rcx, [rip + .Lx201_3]
                        lea              rdx, [rip + .Lx201_4]
                                                                                        jmp   rax
.Lx201_3:
                        mov              qword ptr [rbp + 856], rsp
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx201_5
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_4:
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx201_6
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_1:
                        call             rt_faildescr@PLT
.Lx201_2:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n44_op11_α
                                                                                        jmp   n94_var_ref_α
n93_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 856]
                                                                                        jmp   qword ptr [rsp]
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n95_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn205:              .string          "$tt_var"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn205]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n97_lit_string_α
                                                                                        jmp   n96_lit_string_α
n95_op11_β:
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n98_op11_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "t6_unbound"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n99_op11_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "t6_bound"
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn209:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n100_lit_string_α
n98_op11_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn211:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n100_lit_string_α
n99_op11_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n101_op11_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn214:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n102_lit_string_α
n101_op11_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n103_lit_string_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n104_op11_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              rsi, qword ptr [rip + .Lx217_0]
                                                                                        jmp   .Lx217_1
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "a"
.Lx217_1:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n106_lit_string_α
                                                                                        jmp   n105_var_ref_α
n104_op11_β:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n108_op11_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "t7_differ"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n109_op11_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn223:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n110_lit_string_α
n108_op11_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n109_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              rsi, qword ptr [rip + .Lx224_2]
                                                                                        jmp   .Lx224_3
.Lx224_2:
                        .quad            .Lx224_2_s
.Lx224_2_s:
                        .string          "c"
.Lx224_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n106_lit_string_α
                                                                                        jmp   n111_lit_string_α
n109_op11_β:
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n112_op11_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n113_op11_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "t7_unify"
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn228:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n114_lit_string_α
n112_op11_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn230:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n110_lit_string_α
n113_op11_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n115_op11_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn233:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n116_lit_string_α
n115_op11_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n117_op11_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn236:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n118_move_label_α
n117_op11_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n118_move_label_α:
                        lea              rax, [rip + n93_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n59_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2160]
                        add              rsp, 2168
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2160]
                        add              rsp, 2168
                        ret
                        .section         .note.GNU-stack,"",@progbits
