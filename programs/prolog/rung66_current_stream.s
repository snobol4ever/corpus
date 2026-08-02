                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_stream$2F1_α
proc_current_stream$2F1_α:
proc_current_stream$2F1_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
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
.Lbynamegenfn2:         .string          "$current_stream"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]                    # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        lea              rcx, [rbp + 64]                                # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx5_240
                        add              rsp, 16
                                                                                        jmp   proc_current_stream$2F1_ω
.Lx5_240:
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
                        add              rsp, 16
                                                                                        jmp   proc_current_stream$2F1_γ
n2_suspend_β:
                                                                                        jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_current_stream$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_current_stream$2F1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_current_stream$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_current_stream$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_length$2F2_α
proc_length$2F2_α:
proc_length$2F2_α_body:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
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
                                                                                        jne   .Lx21_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx21_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx21_101
.Lx21_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx21_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx21_240
                        add              rsp, 208
                                                                                        jmp   proc_length$2F2_ω
.Lx21_240:
                                                                                        jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                        add              rsp, 208
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
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
.Lx26_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx26_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx26_41
                        cmp              esi, 1
                                                                                        jne   .Lx26_55
                        mov              r8, rax
                                                                                        jmp   .Lx26_40
.Lx26_55:
                        cmp              esi, 2
                                                                                        jne   .Lx26_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx26_41
                        mov              r8, rax
                                                                                        jmp   .Lx26_40
.Lx26_56:
                        cmp              eax, 72
                                                                                        jne   .Lx26_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx26_41
                        cmp              rax, r8
                                                                                        je    .Lx26_41
                        mov              r8, rax
                                                                                        jmp   .Lx26_40
.Lx26_41:
                        lea              r9, [rbp + 368]
.Lx26_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx26_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx26_43
                        cmp              esi, 1
                                                                                        jne   .Lx26_57
                        mov              r9, rax
                                                                                        jmp   .Lx26_42
.Lx26_57:
                        cmp              esi, 2
                                                                                        jne   .Lx26_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx26_43
                        mov              r9, rax
                                                                                        jmp   .Lx26_42
.Lx26_58:
                        cmp              eax, 72
                                                                                        jne   .Lx26_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx26_43
                        cmp              rax, r9
                                                                                        je    .Lx26_43
                        mov              r9, rax
                                                                                        jmp   .Lx26_42
.Lx26_43:
                        cmp              r8, r9
                                                                                        je    .Lx26_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx26_44
                        cmp              eax, 104
                                                                                        je    .Lx26_44
                        cmp              eax, 72
                                                                                        jne   .Lx26_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx26_44
                                                                                        jmp   .Lx26_45
.Lx26_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx26_53
                        cmp              eax, 104
                                                                                        je    .Lx26_53
                        cmp              eax, 72
                                                                                        jne   .Lx26_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx26_53
                                                                                        jmp   .Lx26_46
.Lx26_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx26_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx26_53
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
                                                                                        jmp   .Lx26_51
.Lx26_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx26_47
                        cmp              eax, 104
                                                                                        je    .Lx26_47
                        cmp              eax, 72
                                                                                        jne   .Lx26_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx26_47
                                                                                        jmp   .Lx26_48
.Lx26_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx26_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx26_53
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
                                                                                        jmp   .Lx26_51
.Lx26_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx26_49
                        cmp              edx, 80
                                                                                        je    .Lx26_53
                                                                                        jmp   .Lx26_52
.Lx26_49:
                        cmp              edx, 80
                                                                                        je    .Lx26_52
                        cmp              ecx, 5
                                                                                        je    .Lx26_53
                        cmp              edx, 5
                                                                                        je    .Lx26_53
                        cmp              ecx, 3
                                                                                        jne   .Lx26_50
                        cmp              edx, 3
                                                                                        jne   .Lx26_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx26_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx26_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx26_51
                                                                                        jmp   .Lx26_52
.Lx26_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx26_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx26_53
.Lx26_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx26_54
.Lx26_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx26_54
.Lx26_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx26_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx26_240
                        add              rsp, 208
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx26_240:
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        add              rsp, 208
                                                                                        jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
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
.Lx31_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx31_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_41
                        cmp              rax, r8
                                                                                        je    .Lx31_41
                        mov              r8, rax
                                                                                        jmp   .Lx31_40
.Lx31_41:
                        lea              r9, [rbp + 288]
.Lx31_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx31_44
                        cmp              eax, 72
                                                                                        jne   .Lx31_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx31_44
                                                                                        jmp   .Lx31_45
.Lx31_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx31_53
                        cmp              eax, 104
                                                                                        je    .Lx31_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx31_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx31_49
                        cmp              edx, 80
                                                                                        je    .Lx31_53
                                                                                        jmp   .Lx31_52
.Lx31_49:
                        cmp              edx, 80
                                                                                        je    .Lx31_52
                        cmp              ecx, 5
                                                                                        je    .Lx31_53
                        cmp              edx, 5
                                                                                        je    .Lx31_53
                        cmp              ecx, 3
                                                                                        jne   .Lx31_50
                        cmp              edx, 3
                                                                                        jne   .Lx31_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx31_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx31_54
.Lx31_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx31_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx31_240
                        add              rsp, 208
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx31_240:
                                                                                        jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                        add              rsp, 208
                                                                                        jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n17_var_ref_α
.Lx34_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx38_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx38_21
.Lx38_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx38_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx38_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx38_23
.Lx38_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx38_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx38_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx38_25
.Lx38_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx38_25:
                        mov              edi, 3                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx38_1
                        lea              rcx, [rip + .Lx38_3]
                        lea              rdx, [rip + .Lx38_4]
                                                                                        jmp   rax
.Lx38_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx38_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx38_2
.Lx38_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx38_2
.Lx38_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx38_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx38_2
.Lx38_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx38_2
.Lx38_1:
                        call             rt_faildescr@PLT
.Lx38_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx38_240
                        add              rsp, 208
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx38_240:
                                                                                        jmp   n19_suspend_α
n18_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n19_suspend_α:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 208
                                                                                        jmp   proc_length$2F2_γ
n19_suspend_β:
                                                                                        jmp   n18_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
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
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   proc_length$2F2_ω
n20_call_builtin_prolog_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_member$2F2_α
proc_member$2F2_α:
proc_member$2F2_α_body:
                        lea              rax, [rip + n50_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        sub              rsp, 192
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx64_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx64_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx64_101
.Lx64_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx64_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx64_240
                        add              rsp, 192
                                                                                        jmp   proc_member$2F2_ω
.Lx64_240:
                                                                                        jmp   n43_var_ref_α
n42_call_builtin_prolog_β:
                        add              rsp, 192
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n45_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx69_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx69_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_41
                        cmp              esi, 1
                                                                                        jne   .Lx69_55
                        mov              r8, rax
                                                                                        jmp   .Lx69_40
.Lx69_55:
                        cmp              esi, 2
                                                                                        jne   .Lx69_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_41
                        mov              r8, rax
                                                                                        jmp   .Lx69_40
.Lx69_56:
                        cmp              eax, 72
                                                                                        jne   .Lx69_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_41
                        cmp              rax, r8
                                                                                        je    .Lx69_41
                        mov              r8, rax
                                                                                        jmp   .Lx69_40
.Lx69_41:
                        lea              r9, [rbp + 608]
.Lx69_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx69_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_43
                        cmp              esi, 1
                                                                                        jne   .Lx69_57
                        mov              r9, rax
                                                                                        jmp   .Lx69_42
.Lx69_57:
                        cmp              esi, 2
                                                                                        jne   .Lx69_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_43
                        mov              r9, rax
                                                                                        jmp   .Lx69_42
.Lx69_58:
                        cmp              eax, 72
                                                                                        jne   .Lx69_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_43
                        cmp              rax, r9
                                                                                        je    .Lx69_43
                        mov              r9, rax
                                                                                        jmp   .Lx69_42
.Lx69_43:
                        cmp              r8, r9
                                                                                        je    .Lx69_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_44
                        cmp              eax, 104
                                                                                        je    .Lx69_44
                        cmp              eax, 72
                                                                                        jne   .Lx69_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx69_44
                                                                                        jmp   .Lx69_45
.Lx69_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_53
                        cmp              eax, 104
                                                                                        je    .Lx69_53
                        cmp              eax, 72
                                                                                        jne   .Lx69_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx69_53
                                                                                        jmp   .Lx69_46
.Lx69_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx69_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx69_53
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
                                                                                        jmp   .Lx69_51
.Lx69_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_47
                        cmp              eax, 104
                                                                                        je    .Lx69_47
                        cmp              eax, 72
                                                                                        jne   .Lx69_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx69_47
                                                                                        jmp   .Lx69_48
.Lx69_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx69_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx69_53
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
                                                                                        jmp   .Lx69_51
.Lx69_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx69_49
                        cmp              edx, 80
                                                                                        je    .Lx69_53
                                                                                        jmp   .Lx69_52
.Lx69_49:
                        cmp              edx, 80
                                                                                        je    .Lx69_52
                        cmp              ecx, 5
                                                                                        je    .Lx69_53
                        cmp              edx, 5
                                                                                        je    .Lx69_53
                        cmp              ecx, 3
                                                                                        jne   .Lx69_50
                        cmp              edx, 3
                                                                                        jne   .Lx69_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx69_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx69_51
                                                                                        jmp   .Lx69_52
.Lx69_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx69_53
.Lx69_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx69_54
.Lx69_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx69_54
.Lx69_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx69_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n51_call_builtin_prolog_α
                                                                                        jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx76_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx76_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_61
                        cmp              esi, 1
                                                                                        jne   .Lx76_62
                        mov              r8, rax
                                                                                        jmp   .Lx76_60
.Lx76_62:
                        cmp              esi, 2
                                                                                        jne   .Lx76_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx76_61
                        mov              r8, rax
                                                                                        jmp   .Lx76_60
.Lx76_63:
                        cmp              eax, 72
                                                                                        jne   .Lx76_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_61
                        cmp              rax, r8
                                                                                        je    .Lx76_61
                        mov              r8, rax
                                                                                        jmp   .Lx76_60
.Lx76_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx76_80
                        cmp              eax, 104
                                                                                        je    .Lx76_80
                        cmp              eax, 72
                                                                                        jne   .Lx76_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx76_80
                                                                                        jmp   .Lx76_74
.Lx76_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx76_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx76_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx76_73
                        lea              r9, [rbp + 512]
.Lx76_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx76_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_65
                        cmp              esi, 1
                                                                                        jne   .Lx76_66
                        mov              r9, rax
                                                                                        jmp   .Lx76_64
.Lx76_66:
                        cmp              esi, 2
                                                                                        jne   .Lx76_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx76_65
                        mov              r9, rax
                                                                                        jmp   .Lx76_64
.Lx76_67:
                        cmp              eax, 72
                                                                                        jne   .Lx76_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_65
                        cmp              rax, r9
                                                                                        je    .Lx76_65
                        mov              r9, rax
                                                                                        jmp   .Lx76_64
.Lx76_65:
                        lea              rcx, [rbp + 528]
.Lx76_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx76_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx76_69
                        cmp              esi, 1
                                                                                        jne   .Lx76_70
                        mov              rcx, rax
                                                                                        jmp   .Lx76_68
.Lx76_70:
                        cmp              esi, 2
                                                                                        jne   .Lx76_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx76_69
                        mov              rcx, rax
                                                                                        jmp   .Lx76_68
.Lx76_71:
                        cmp              eax, 72
                                                                                        jne   .Lx76_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx76_69
                        cmp              rax, rcx
                                                                                        je    .Lx76_69
                        mov              rcx, rax
                                                                                        jmp   .Lx76_68
.Lx76_69:
                        cmp              r9, rcx
                                                                                        je    .Lx76_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx76_75
                        cmp              eax, 104
                                                                                        je    .Lx76_75
                        cmp              eax, 72
                                                                                        jne   .Lx76_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx76_75
                                                                                        jmp   .Lx76_72
.Lx76_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx76_76
                        cmp              eax, 104
                                                                                        je    .Lx76_76
                        cmp              eax, 72
                                                                                        jne   .Lx76_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx76_76
                                                                                        jmp   .Lx76_72
.Lx76_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx76_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx76_72
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
                                                                                        jmp   .Lx76_77
.Lx76_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx76_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx76_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx76_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx76_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx76_72
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
                        lea              r9, [rbp + 512]
.Lx76_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx76_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_82
                        cmp              esi, 1
                                                                                        jne   .Lx76_83
                        mov              r9, rax
                                                                                        jmp   .Lx76_81
.Lx76_83:
                        cmp              esi, 2
                                                                                        jne   .Lx76_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx76_82
                        mov              r9, rax
                                                                                        jmp   .Lx76_81
.Lx76_84:
                        cmp              eax, 72
                                                                                        jne   .Lx76_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx76_82
                        cmp              rax, r9
                                                                                        je    .Lx76_82
                        mov              r9, rax
                                                                                        jmp   .Lx76_81
.Lx76_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx76_85
                        cmp              eax, 104
                                                                                        je    .Lx76_85
                        cmp              eax, 72
                                                                                        jne   .Lx76_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx76_85
                                                                                        jmp   .Lx76_86
.Lx76_85:
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
                                                                                        jmp   .Lx76_87
.Lx76_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx76_87:
                        lea              rcx, [rbp + 528]
.Lx76_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx76_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx76_89
                        cmp              esi, 1
                                                                                        jne   .Lx76_90
                        mov              rcx, rax
                                                                                        jmp   .Lx76_88
.Lx76_90:
                        cmp              esi, 2
                                                                                        jne   .Lx76_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx76_89
                        mov              rcx, rax
                                                                                        jmp   .Lx76_88
.Lx76_91:
                        cmp              eax, 72
                                                                                        jne   .Lx76_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx76_89
                        cmp              rax, rcx
                                                                                        je    .Lx76_89
                        mov              rcx, rax
                                                                                        jmp   .Lx76_88
.Lx76_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx76_92
                        cmp              eax, 104
                                                                                        je    .Lx76_92
                        cmp              eax, 72
                                                                                        jne   .Lx76_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx76_92
                                                                                        jmp   .Lx76_93
.Lx76_92:
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
                                                                                        jmp   .Lx76_94
.Lx76_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx76_94:
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
                                                                                        jmp   .Lx76_77
.Lx76_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx76_77
.Lx76_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx76_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n51_call_builtin_prolog_α
                                                                                        jmp   n50_suspend_α
n49_call_builtin_prolog_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_suspend_α:
                        lea              rax, [rip + n50_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 192
                                                                                        jmp   proc_member$2F2_γ
n50_suspend_β:
                                                                                        jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n52_var_ref_α
n51_call_builtin_prolog_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
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
.Lx84_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx84_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_41
                        cmp              esi, 1
                                                                                        jne   .Lx84_55
                        mov              r8, rax
                                                                                        jmp   .Lx84_40
.Lx84_55:
                        cmp              esi, 2
                                                                                        jne   .Lx84_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_41
                        mov              r8, rax
                                                                                        jmp   .Lx84_40
.Lx84_56:
                        cmp              eax, 72
                                                                                        jne   .Lx84_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_41
                        cmp              rax, r8
                                                                                        je    .Lx84_41
                        mov              r8, rax
                                                                                        jmp   .Lx84_40
.Lx84_41:
                        lea              r9, [rbp + 368]
.Lx84_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx84_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_43
                        cmp              esi, 1
                                                                                        jne   .Lx84_57
                        mov              r9, rax
                                                                                        jmp   .Lx84_42
.Lx84_57:
                        cmp              esi, 2
                                                                                        jne   .Lx84_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_43
                        mov              r9, rax
                                                                                        jmp   .Lx84_42
.Lx84_58:
                        cmp              eax, 72
                                                                                        jne   .Lx84_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_43
                        cmp              rax, r9
                                                                                        je    .Lx84_43
                        mov              r9, rax
                                                                                        jmp   .Lx84_42
.Lx84_43:
                        cmp              r8, r9
                                                                                        je    .Lx84_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_44
                        cmp              eax, 104
                                                                                        je    .Lx84_44
                        cmp              eax, 72
                                                                                        jne   .Lx84_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx84_44
                                                                                        jmp   .Lx84_45
.Lx84_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_53
                        cmp              eax, 104
                                                                                        je    .Lx84_53
                        cmp              eax, 72
                                                                                        jne   .Lx84_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx84_53
                                                                                        jmp   .Lx84_46
.Lx84_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx84_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx84_53
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
                                                                                        jmp   .Lx84_51
.Lx84_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_47
                        cmp              eax, 104
                                                                                        je    .Lx84_47
                        cmp              eax, 72
                                                                                        jne   .Lx84_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx84_47
                                                                                        jmp   .Lx84_48
.Lx84_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx84_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx84_53
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
                                                                                        jmp   .Lx84_51
.Lx84_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx84_49
                        cmp              edx, 80
                                                                                        je    .Lx84_53
                                                                                        jmp   .Lx84_52
.Lx84_49:
                        cmp              edx, 80
                                                                                        je    .Lx84_52
                        cmp              ecx, 5
                                                                                        je    .Lx84_53
                        cmp              edx, 5
                                                                                        je    .Lx84_53
                        cmp              ecx, 3
                                                                                        jne   .Lx84_50
                        cmp              edx, 3
                                                                                        jne   .Lx84_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx84_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx84_51
                                                                                        jmp   .Lx84_52
.Lx84_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx84_53
.Lx84_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx84_54
.Lx84_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx84_54
.Lx84_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx84_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n63_call_builtin_prolog_α
                                                                                        jmp   n55_var_ref_α
n54_call_builtin_prolog_β:
                                                                                        jmp   n63_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n57_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n58_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
.Lx91_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx91_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx91_61
                        cmp              esi, 1
                                                                                        jne   .Lx91_62
                        mov              r8, rax
                                                                                        jmp   .Lx91_60
.Lx91_62:
                        cmp              esi, 2
                                                                                        jne   .Lx91_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx91_61
                        mov              r8, rax
                                                                                        jmp   .Lx91_60
.Lx91_63:
                        cmp              eax, 72
                                                                                        jne   .Lx91_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx91_61
                        cmp              rax, r8
                                                                                        je    .Lx91_61
                        mov              r8, rax
                                                                                        jmp   .Lx91_60
.Lx91_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx91_80
                        cmp              eax, 104
                                                                                        je    .Lx91_80
                        cmp              eax, 72
                                                                                        jne   .Lx91_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx91_80
                                                                                        jmp   .Lx91_74
.Lx91_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx91_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx91_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx91_73
                        lea              r9, [rbp + 272]
.Lx91_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx91_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx91_65
                        cmp              esi, 1
                                                                                        jne   .Lx91_66
                        mov              r9, rax
                                                                                        jmp   .Lx91_64
.Lx91_66:
                        cmp              esi, 2
                                                                                        jne   .Lx91_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx91_65
                        mov              r9, rax
                                                                                        jmp   .Lx91_64
.Lx91_67:
                        cmp              eax, 72
                                                                                        jne   .Lx91_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx91_65
                        cmp              rax, r9
                                                                                        je    .Lx91_65
                        mov              r9, rax
                                                                                        jmp   .Lx91_64
.Lx91_65:
                        lea              rcx, [rbp + 288]
.Lx91_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx91_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx91_69
                        cmp              esi, 1
                                                                                        jne   .Lx91_70
                        mov              rcx, rax
                                                                                        jmp   .Lx91_68
.Lx91_70:
                        cmp              esi, 2
                                                                                        jne   .Lx91_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx91_69
                        mov              rcx, rax
                                                                                        jmp   .Lx91_68
.Lx91_71:
                        cmp              eax, 72
                                                                                        jne   .Lx91_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx91_69
                        cmp              rax, rcx
                                                                                        je    .Lx91_69
                        mov              rcx, rax
                                                                                        jmp   .Lx91_68
.Lx91_69:
                        cmp              r9, rcx
                                                                                        je    .Lx91_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx91_75
                        cmp              eax, 104
                                                                                        je    .Lx91_75
                        cmp              eax, 72
                                                                                        jne   .Lx91_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx91_75
                                                                                        jmp   .Lx91_72
.Lx91_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx91_76
                        cmp              eax, 104
                                                                                        je    .Lx91_76
                        cmp              eax, 72
                                                                                        jne   .Lx91_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx91_76
                                                                                        jmp   .Lx91_72
.Lx91_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx91_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx91_72
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
                                                                                        jmp   .Lx91_77
.Lx91_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx91_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx91_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx91_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx91_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx91_72
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
                        lea              r9, [rbp + 272]
.Lx91_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx91_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx91_82
                        cmp              esi, 1
                                                                                        jne   .Lx91_83
                        mov              r9, rax
                                                                                        jmp   .Lx91_81
.Lx91_83:
                        cmp              esi, 2
                                                                                        jne   .Lx91_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx91_82
                        mov              r9, rax
                                                                                        jmp   .Lx91_81
.Lx91_84:
                        cmp              eax, 72
                                                                                        jne   .Lx91_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx91_82
                        cmp              rax, r9
                                                                                        je    .Lx91_82
                        mov              r9, rax
                                                                                        jmp   .Lx91_81
.Lx91_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx91_85
                        cmp              eax, 104
                                                                                        je    .Lx91_85
                        cmp              eax, 72
                                                                                        jne   .Lx91_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx91_85
                                                                                        jmp   .Lx91_86
.Lx91_85:
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
                                                                                        jmp   .Lx91_87
.Lx91_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx91_87:
                        lea              rcx, [rbp + 288]
.Lx91_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx91_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx91_89
                        cmp              esi, 1
                                                                                        jne   .Lx91_90
                        mov              rcx, rax
                                                                                        jmp   .Lx91_88
.Lx91_90:
                        cmp              esi, 2
                                                                                        jne   .Lx91_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx91_89
                        mov              rcx, rax
                                                                                        jmp   .Lx91_88
.Lx91_91:
                        cmp              eax, 72
                                                                                        jne   .Lx91_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx91_89
                        cmp              rax, rcx
                                                                                        je    .Lx91_89
                        mov              rcx, rax
                                                                                        jmp   .Lx91_88
.Lx91_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx91_92
                        cmp              eax, 104
                                                                                        je    .Lx91_92
                        cmp              eax, 72
                                                                                        jne   .Lx91_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx91_92
                                                                                        jmp   .Lx91_93
.Lx91_92:
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
                                                                                        jmp   .Lx91_94
.Lx91_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx91_94:
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
                                                                                        jmp   .Lx91_77
.Lx91_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx91_77
.Lx91_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx91_77:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n63_call_builtin_prolog_α
                                                                                        jmp   n59_var_ref_α
n58_call_builtin_prolog_β:
                                                                                        jmp   n63_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n61_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx97_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx97_21
.Lx97_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx97_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx97_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx97_23
.Lx97_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx97_23:
                        mov              edi, 2                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx97_1
                        lea              rcx, [rip + .Lx97_3]
                        lea              rdx, [rip + .Lx97_4]
                                                                                        jmp   rax
.Lx97_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx97_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx97_2
.Lx97_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx97_2
.Lx97_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx97_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx97_2
.Lx97_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx97_2
.Lx97_1:
                        call             rt_faildescr@PLT
.Lx97_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n63_call_builtin_prolog_α
                                                                                        jmp   n62_suspend_α
n61_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n62_suspend_α:
                        lea              rax, [rip + n62_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n62_suspend_β:
                                                                                        jmp   n61_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
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
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   proc_member$2F2_ω
n63_call_builtin_prolog_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_β:
                                                                                        jmp   qword ptr [rbp + 656]
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_member$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$length_$2F3_α
proc_$length_$2F3_α:
proc_$length_$2F3_α_body:
                        lea              rax, [rip + n115_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        sub              rsp, 304
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx142_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx142_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx142_101
.Lx142_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx142_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx142_240
                        add              rsp, 304
                                                                                        jmp   proc_$length_$2F3_ω
.Lx142_240:
                                                                                        jmp   n102_var_ref_α
n101_call_builtin_prolog_β:
                        add              rsp, 304
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n103_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n104_lit_string_α
.Lx145_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 2
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n105_call_builtin_prolog_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
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
.Lx147_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx147_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx147_111
                        cmp              esi, 1
                                                                                        jne   .Lx147_112
                        mov              r8, rax
                                                                                        jmp   .Lx147_110
.Lx147_112:
                        cmp              esi, 2
                                                                                        jne   .Lx147_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx147_111
                        mov              r8, rax
                                                                                        jmp   .Lx147_110
.Lx147_113:
                        cmp              eax, 72
                                                                                        jne   .Lx147_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx147_111
                        cmp              rax, r8
                                                                                        je    .Lx147_111
                        mov              r8, rax
                                                                                        jmp   .Lx147_110
.Lx147_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx147_114
                        cmp              eax, 104
                                                                                        je    .Lx147_114
                        cmp              eax, 72
                                                                                        jne   .Lx147_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx147_114
                                                                                        jmp   .Lx147_118
.Lx147_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx147_115
                        cmp              eax, 3
                                                                                        je    .Lx147_114
                        cmp              eax, 2
                                                                                        jne   .Lx147_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx147_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx147_114
                                                                                        jmp   .Lx147_116
.Lx147_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx147_117
.Lx147_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx147_117
.Lx147_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx147_117:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx147_240
                        add              rsp, 304
                                                                                        jmp   n117_var_ref_α
.Lx147_240:
                                                                                        jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                        add              rsp, 304
                                                                                        jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 1088], 2                      # result
                        mov              dword ptr [rbp + 1092], 2
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n108_call_builtin_prolog_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx151_2]
                                                                                        jmp   .Lx151_3
.Lx151_2:
                        .quad            .Lx151_2_s
.Lx151_2_s:
                        .string          "[]"
.Lx151_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_builtin_prolog_α
                                                                                        jmp   n109_var_ref_α
n108_call_builtin_prolog_β:
                                                                                        jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
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
.Lx156_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx156_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        cmp              esi, 1
                                                                                        jne   .Lx156_55
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_55:
                        cmp              esi, 2
                                                                                        jne   .Lx156_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_56:
                        cmp              eax, 72
                                                                                        jne   .Lx156_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        cmp              rax, r8
                                                                                        je    .Lx156_41
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_41:
                        lea              r9, [rbp + 976]
.Lx156_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx156_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        cmp              esi, 1
                                                                                        jne   .Lx156_57
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_57:
                        cmp              esi, 2
                                                                                        jne   .Lx156_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_58:
                        cmp              eax, 72
                                                                                        jne   .Lx156_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        cmp              rax, r9
                                                                                        je    .Lx156_43
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_43:
                        cmp              r8, r9
                                                                                        je    .Lx156_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_44
                        cmp              eax, 104
                                                                                        je    .Lx156_44
                        cmp              eax, 72
                                                                                        jne   .Lx156_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx156_44
                                                                                        jmp   .Lx156_45
.Lx156_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_53
                        cmp              eax, 104
                                                                                        je    .Lx156_53
                        cmp              eax, 72
                                                                                        jne   .Lx156_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx156_53
                                                                                        jmp   .Lx156_46
.Lx156_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx156_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx156_53
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
                                                                                        jmp   .Lx156_51
.Lx156_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_47
                        cmp              eax, 104
                                                                                        je    .Lx156_47
                        cmp              eax, 72
                                                                                        jne   .Lx156_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx156_47
                                                                                        jmp   .Lx156_48
.Lx156_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx156_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx156_53
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
                                                                                        jmp   .Lx156_51
.Lx156_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx156_49
                        cmp              edx, 80
                                                                                        je    .Lx156_53
                                                                                        jmp   .Lx156_52
.Lx156_49:
                        cmp              edx, 80
                                                                                        je    .Lx156_52
                        cmp              ecx, 5
                                                                                        je    .Lx156_53
                        cmp              edx, 5
                                                                                        je    .Lx156_53
                        cmp              ecx, 3
                                                                                        jne   .Lx156_50
                        cmp              edx, 3
                                                                                        jne   .Lx156_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx156_51
                                                                                        jmp   .Lx156_52
.Lx156_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx156_53
.Lx156_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx156_54
.Lx156_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx156_54
.Lx156_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx156_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_builtin_prolog_α
                                                                                        jmp   n112_var_ref_α
n111_call_builtin_prolog_β:
                                                                                        jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
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
.Lx161_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx161_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx161_41
                        cmp              rax, r8
                                                                                        je    .Lx161_41
                        mov              r8, rax
                                                                                        jmp   .Lx161_40
.Lx161_41:
                        lea              r9, [rbp + 896]
.Lx161_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx161_44
                        cmp              eax, 72
                                                                                        jne   .Lx161_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx161_44
                                                                                        jmp   .Lx161_45
.Lx161_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx161_53
                        cmp              eax, 104
                                                                                        je    .Lx161_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx161_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx161_49
                        cmp              edx, 80
                                                                                        je    .Lx161_53
                                                                                        jmp   .Lx161_52
.Lx161_49:
                        cmp              edx, 80
                                                                                        je    .Lx161_52
                        cmp              ecx, 5
                                                                                        je    .Lx161_53
                        cmp              edx, 5
                                                                                        je    .Lx161_53
                        cmp              ecx, 3
                                                                                        jne   .Lx161_50
                        cmp              edx, 3
                                                                                        jne   .Lx161_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx161_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx161_54
.Lx161_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx161_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_builtin_prolog_α
                                                                                        jmp   n115_suspend_α
n114_call_builtin_prolog_β:
                                                                                        jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_suspend_α:
                        lea              rax, [rip + n115_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 304
                                                                                        jmp   proc_$length_$2F3_γ
n115_suspend_β:
                                                                                        jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n117_var_ref_α
n116_call_builtin_prolog_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 784], 3                       # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n119_lit_integer_α
.Lx167_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n120_call_builtin_prolog_α
.Lx168_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
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
.Lx169_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx169_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_111
                        cmp              esi, 1
                                                                                        jne   .Lx169_112
                        mov              r8, rax
                                                                                        jmp   .Lx169_110
.Lx169_112:
                        cmp              esi, 2
                                                                                        jne   .Lx169_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx169_111
                        mov              r8, rax
                                                                                        jmp   .Lx169_110
.Lx169_113:
                        cmp              eax, 72
                                                                                        jne   .Lx169_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx169_111
                        cmp              rax, r8
                                                                                        je    .Lx169_111
                        mov              r8, rax
                                                                                        jmp   .Lx169_110
.Lx169_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx169_114
                        cmp              eax, 104
                                                                                        je    .Lx169_114
                        cmp              eax, 72
                                                                                        jne   .Lx169_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx169_114
                                                                                        jmp   .Lx169_118
.Lx169_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        jne   .Lx169_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx169_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx169_115
                                                                                        jmp   .Lx169_114
.Lx169_119:
                        cmp              eax, 3
                                                                                        jne   .Lx169_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx169_114
                                                                                        jmp   .Lx169_115
.Lx169_120:
                        cmp              eax, 2
                                                                                        jne   .Lx169_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx169_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx169_114
                                                                                        jmp   .Lx169_115
.Lx169_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx169_117
.Lx169_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx169_117
.Lx169_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx169_117:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n141_call_builtin_prolog_α
                                                                                        jmp   n121_var_ref_α
n120_call_builtin_prolog_β:
                                                                                        jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n124_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
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
.Lx176_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx176_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx176_61
                        cmp              esi, 1
                                                                                        jne   .Lx176_62
                        mov              r8, rax
                                                                                        jmp   .Lx176_60
.Lx176_62:
                        cmp              esi, 2
                                                                                        jne   .Lx176_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx176_61
                        mov              r8, rax
                                                                                        jmp   .Lx176_60
.Lx176_63:
                        cmp              eax, 72
                                                                                        jne   .Lx176_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx176_61
                        cmp              rax, r8
                                                                                        je    .Lx176_61
                        mov              r8, rax
                                                                                        jmp   .Lx176_60
.Lx176_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx176_80
                        cmp              eax, 104
                                                                                        je    .Lx176_80
                        cmp              eax, 72
                                                                                        jne   .Lx176_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx176_80
                                                                                        jmp   .Lx176_74
.Lx176_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx176_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx176_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx176_73
                        lea              r9, [rbp + 640]
.Lx176_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx176_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx176_65
                        cmp              esi, 1
                                                                                        jne   .Lx176_66
                        mov              r9, rax
                                                                                        jmp   .Lx176_64
.Lx176_66:
                        cmp              esi, 2
                                                                                        jne   .Lx176_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx176_65
                        mov              r9, rax
                                                                                        jmp   .Lx176_64
.Lx176_67:
                        cmp              eax, 72
                                                                                        jne   .Lx176_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx176_65
                        cmp              rax, r9
                                                                                        je    .Lx176_65
                        mov              r9, rax
                                                                                        jmp   .Lx176_64
.Lx176_65:
                        lea              rcx, [rbp + 656]
.Lx176_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx176_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx176_69
                        cmp              esi, 1
                                                                                        jne   .Lx176_70
                        mov              rcx, rax
                                                                                        jmp   .Lx176_68
.Lx176_70:
                        cmp              esi, 2
                                                                                        jne   .Lx176_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx176_69
                        mov              rcx, rax
                                                                                        jmp   .Lx176_68
.Lx176_71:
                        cmp              eax, 72
                                                                                        jne   .Lx176_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx176_69
                        cmp              rax, rcx
                                                                                        je    .Lx176_69
                        mov              rcx, rax
                                                                                        jmp   .Lx176_68
.Lx176_69:
                        cmp              r9, rcx
                                                                                        je    .Lx176_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx176_75
                        cmp              eax, 104
                                                                                        je    .Lx176_75
                        cmp              eax, 72
                                                                                        jne   .Lx176_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx176_75
                                                                                        jmp   .Lx176_72
.Lx176_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx176_76
                        cmp              eax, 104
                                                                                        je    .Lx176_76
                        cmp              eax, 72
                                                                                        jne   .Lx176_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx176_76
                                                                                        jmp   .Lx176_72
.Lx176_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx176_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx176_72
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
                                                                                        jmp   .Lx176_77
.Lx176_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx176_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx176_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx176_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx176_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx176_72
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
.Lx176_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx176_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx176_82
                        cmp              esi, 1
                                                                                        jne   .Lx176_83
                        mov              r9, rax
                                                                                        jmp   .Lx176_81
.Lx176_83:
                        cmp              esi, 2
                                                                                        jne   .Lx176_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx176_82
                        mov              r9, rax
                                                                                        jmp   .Lx176_81
.Lx176_84:
                        cmp              eax, 72
                                                                                        jne   .Lx176_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx176_82
                        cmp              rax, r9
                                                                                        je    .Lx176_82
                        mov              r9, rax
                                                                                        jmp   .Lx176_81
.Lx176_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx176_85
                        cmp              eax, 104
                                                                                        je    .Lx176_85
                        cmp              eax, 72
                                                                                        jne   .Lx176_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx176_85
                                                                                        jmp   .Lx176_86
.Lx176_85:
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
                                                                                        jmp   .Lx176_87
.Lx176_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx176_87:
                        lea              rcx, [rbp + 656]
.Lx176_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx176_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx176_89
                        cmp              esi, 1
                                                                                        jne   .Lx176_90
                        mov              rcx, rax
                                                                                        jmp   .Lx176_88
.Lx176_90:
                        cmp              esi, 2
                                                                                        jne   .Lx176_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx176_89
                        mov              rcx, rax
                                                                                        jmp   .Lx176_88
.Lx176_91:
                        cmp              eax, 72
                                                                                        jne   .Lx176_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx176_89
                        cmp              rax, rcx
                                                                                        je    .Lx176_89
                        mov              rcx, rax
                                                                                        jmp   .Lx176_88
.Lx176_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx176_92
                        cmp              eax, 104
                                                                                        je    .Lx176_92
                        cmp              eax, 72
                                                                                        jne   .Lx176_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx176_92
                                                                                        jmp   .Lx176_93
.Lx176_92:
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
                                                                                        jmp   .Lx176_94
.Lx176_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx176_94:
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
                                                                                        jmp   .Lx176_77
.Lx176_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx176_77
.Lx176_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx176_77:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n141_call_builtin_prolog_α
                                                                                        jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                                                                                        jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
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
.Lx181_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx181_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx181_41
                        cmp              esi, 1
                                                                                        jne   .Lx181_55
                        mov              r8, rax
                                                                                        jmp   .Lx181_40
.Lx181_55:
                        cmp              esi, 2
                                                                                        jne   .Lx181_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx181_41
                        mov              r8, rax
                                                                                        jmp   .Lx181_40
.Lx181_56:
                        cmp              eax, 72
                                                                                        jne   .Lx181_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx181_41
                        cmp              rax, r8
                                                                                        je    .Lx181_41
                        mov              r8, rax
                                                                                        jmp   .Lx181_40
.Lx181_41:
                        lea              r9, [rbp + 544]
.Lx181_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx181_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx181_43
                        cmp              esi, 1
                                                                                        jne   .Lx181_57
                        mov              r9, rax
                                                                                        jmp   .Lx181_42
.Lx181_57:
                        cmp              esi, 2
                                                                                        jne   .Lx181_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx181_43
                        mov              r9, rax
                                                                                        jmp   .Lx181_42
.Lx181_58:
                        cmp              eax, 72
                                                                                        jne   .Lx181_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx181_43
                        cmp              rax, r9
                                                                                        je    .Lx181_43
                        mov              r9, rax
                                                                                        jmp   .Lx181_42
.Lx181_43:
                        cmp              r8, r9
                                                                                        je    .Lx181_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx181_44
                        cmp              eax, 104
                                                                                        je    .Lx181_44
                        cmp              eax, 72
                                                                                        jne   .Lx181_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx181_44
                                                                                        jmp   .Lx181_45
.Lx181_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx181_53
                        cmp              eax, 104
                                                                                        je    .Lx181_53
                        cmp              eax, 72
                                                                                        jne   .Lx181_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx181_53
                                                                                        jmp   .Lx181_46
.Lx181_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx181_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx181_53
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
                                                                                        jmp   .Lx181_51
.Lx181_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx181_47
                        cmp              eax, 104
                                                                                        je    .Lx181_47
                        cmp              eax, 72
                                                                                        jne   .Lx181_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx181_47
                                                                                        jmp   .Lx181_48
.Lx181_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx181_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx181_53
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
                                                                                        jmp   .Lx181_51
.Lx181_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx181_49
                        cmp              edx, 80
                                                                                        je    .Lx181_53
                                                                                        jmp   .Lx181_52
.Lx181_49:
                        cmp              edx, 80
                                                                                        je    .Lx181_52
                        cmp              ecx, 5
                                                                                        je    .Lx181_53
                        cmp              edx, 5
                                                                                        je    .Lx181_53
                        cmp              ecx, 3
                                                                                        jne   .Lx181_50
                        cmp              edx, 3
                                                                                        jne   .Lx181_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx181_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx181_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx181_51
                                                                                        jmp   .Lx181_52
.Lx181_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx181_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx181_53
.Lx181_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx181_54
.Lx181_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx181_54
.Lx181_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx181_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n141_call_builtin_prolog_α
                                                                                        jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                                                                                        jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
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
.Lx186_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx186_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx186_41
                        cmp              esi, 1
                                                                                        jne   .Lx186_55
                        mov              r8, rax
                                                                                        jmp   .Lx186_40
.Lx186_55:
                        cmp              esi, 2
                                                                                        jne   .Lx186_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx186_41
                        mov              r8, rax
                                                                                        jmp   .Lx186_40
.Lx186_56:
                        cmp              eax, 72
                                                                                        jne   .Lx186_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx186_41
                        cmp              rax, r8
                                                                                        je    .Lx186_41
                        mov              r8, rax
                                                                                        jmp   .Lx186_40
.Lx186_41:
                        lea              r9, [rbp + 464]
.Lx186_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx186_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx186_43
                        cmp              esi, 1
                                                                                        jne   .Lx186_57
                        mov              r9, rax
                                                                                        jmp   .Lx186_42
.Lx186_57:
                        cmp              esi, 2
                                                                                        jne   .Lx186_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx186_43
                        mov              r9, rax
                                                                                        jmp   .Lx186_42
.Lx186_58:
                        cmp              eax, 72
                                                                                        jne   .Lx186_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx186_43
                        cmp              rax, r9
                                                                                        je    .Lx186_43
                        mov              r9, rax
                                                                                        jmp   .Lx186_42
.Lx186_43:
                        cmp              r8, r9
                                                                                        je    .Lx186_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx186_44
                        cmp              eax, 104
                                                                                        je    .Lx186_44
                        cmp              eax, 72
                                                                                        jne   .Lx186_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx186_44
                                                                                        jmp   .Lx186_45
.Lx186_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx186_53
                        cmp              eax, 104
                                                                                        je    .Lx186_53
                        cmp              eax, 72
                                                                                        jne   .Lx186_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx186_53
                                                                                        jmp   .Lx186_46
.Lx186_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx186_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx186_53
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
                                                                                        jmp   .Lx186_51
.Lx186_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx186_47
                        cmp              eax, 104
                                                                                        je    .Lx186_47
                        cmp              eax, 72
                                                                                        jne   .Lx186_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx186_47
                                                                                        jmp   .Lx186_48
.Lx186_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx186_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx186_53
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
                                                                                        jmp   .Lx186_51
.Lx186_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx186_49
                        cmp              edx, 80
                                                                                        je    .Lx186_53
                                                                                        jmp   .Lx186_52
.Lx186_49:
                        cmp              edx, 80
                                                                                        je    .Lx186_52
                        cmp              ecx, 5
                                                                                        je    .Lx186_53
                        cmp              edx, 5
                                                                                        je    .Lx186_53
                        cmp              ecx, 3
                                                                                        jne   .Lx186_50
                        cmp              edx, 3
                                                                                        jne   .Lx186_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx186_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx186_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx186_51
                                                                                        jmp   .Lx186_52
.Lx186_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx186_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx186_53
.Lx186_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx186_54
.Lx186_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx186_54
.Lx186_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx186_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n141_call_builtin_prolog_α
                                                                                        jmp   n131_var_ref_α
n130_call_builtin_prolog_β:
                                                                                        jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n132_var_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n134_call_builtin_prolog_α
.Lx191_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n141_call_builtin_prolog_α
                                                                                        jmp   n135_call_builtin_prolog_α
n134_call_builtin_prolog_β:
                                                                                        jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n141_call_builtin_prolog_α
                                                                                        jmp   n136_var_ref_α
n135_call_builtin_prolog_β:
                                                                                        jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n137_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n139_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx201_21
.Lx201_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx201_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx201_23
.Lx201_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx201_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx201_25
.Lx201_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx201_25:
                        mov              edi, 3                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx201_1
                        lea              rcx, [rip + .Lx201_3]
                        lea              rdx, [rip + .Lx201_4]
                                                                                        jmp   rax
.Lx201_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx201_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx201_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_1:
                        call             rt_faildescr@PLT
.Lx201_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n141_call_builtin_prolog_α
                                                                                        jmp   n140_suspend_α
n139_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n140_suspend_α:
                        lea              rax, [rip + n140_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n140_suspend_β:
                                                                                        jmp   n139_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   proc_$length_$2F3_ω
n141_call_builtin_prolog_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1216]
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "current_stream/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_current_stream$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 112
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
.Lstartup_pname2:       .string          "member/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_member$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$length_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$length_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
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
n205_call_builtin_prolog_α:
                        sub              rsp, 432
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx264_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx264_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx264_101
.Lx264_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx264_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx264_240
                        add              rsp, 432
                                                                                        jmp   main_ω
.Lx264_240:
                                                                                        jmp   n206_lit_string_α
n205_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 17
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n207_lit_string_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "/tmp/rung66_a.txt"
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 1648], 2                      # result
                        mov              dword ptr [rbp + 1652], 5
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n208_var_ref_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n209_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn270:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]                         # fn
                        lea              rsi, [rbp + 1584]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx269_240
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
.Lx269_240:
                                                                                        jmp   n210_var_ref_α
n209_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n211_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_proc_staged_α:
                        mov              qword ptr [rbp + 1520], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx274_20
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx274_21
.Lx274_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1552]                    # v
                        mov              rdx, qword ptr [rbp + 1560]                    # v
                        call             rt_arg_stage@PLT
.Lx274_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx274_1
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4]
                                                                                        jmp   rax
.Lx274_3:
                        mov              qword ptr [rbp + 1528], rsp
                        mov              rax, qword ptr [rbp + 1520]
                        test             rax, rax
                                                                                        jne   .Lx274_5
                        mov              qword ptr [rbp + 1520], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx274_2
.Lx274_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx274_2
.Lx274_4:
                        mov              rax, qword ptr [rbp + 1520]
                        test             rax, rax
                                                                                        jne   .Lx274_6
                        mov              qword ptr [rbp + 1520], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx274_2
.Lx274_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx274_2
.Lx274_1:
                        call             rt_faildescr@PLT
.Lx274_2:
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx274_240
                        add              rsp, 432
                                                                                        jmp   n214_lit_string_α
.Lx274_240:
                                                                                        jmp   n212_lit_string_α
n211_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1528]
                                                                                        jmp   qword ptr [rsp]
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "current_stream/1"
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 1424], 2                      # result
                        mov              dword ptr [rbp + 1428], 11
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n213_call_builtin_prolog_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "found_bound"
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn277:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]                         # fn
                        lea              rsi, [rbp + 1408]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx276_240
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
.Lx276_240:
                                                                                        jmp   n216_lit_string_α
n213_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 15
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n215_call_builtin_prolog_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "not_found_bound"
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn280:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]                         # fn
                        lea              rsi, [rbp + 1456]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n216_lit_string_α
n215_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 1376], 2                      # result
                        mov              dword ptr [rbp + 1380], 0
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n217_call_builtin_prolog_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn283:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]                         # fn
                        lea              rsi, [rbp + 1360]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx282_240
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
.Lx282_240:
                                                                                        jmp   n218_call_builtin_prolog_α
n217_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn285:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx284_240
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
.Lx284_240:
                                                                                        jmp   n219_var_ref_α
n218_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n220_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_proc_staged_α:
                        mov              qword ptr [rbp + 1296], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx289_20
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx289_21
.Lx289_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1328]                    # v
                        mov              rdx, qword ptr [rbp + 1336]                    # v
                        call             rt_arg_stage@PLT
.Lx289_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx289_1
                        lea              rcx, [rip + .Lx289_3]
                        lea              rdx, [rip + .Lx289_4]
                                                                                        jmp   rax
.Lx289_3:
                        mov              qword ptr [rbp + 1304], rsp
                        mov              rax, qword ptr [rbp + 1296]
                        test             rax, rax
                                                                                        jne   .Lx289_5
                        mov              qword ptr [rbp + 1296], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx289_2
.Lx289_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx289_2
.Lx289_4:
                        mov              rax, qword ptr [rbp + 1296]
                        test             rax, rax
                                                                                        jne   .Lx289_6
                        mov              qword ptr [rbp + 1296], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx289_2
.Lx289_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx289_2
.Lx289_1:
                        call             rt_faildescr@PLT
.Lx289_2:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx289_240
                        add              rsp, 432
                                                                                        jmp   n223_call_builtin_prolog_α
.Lx289_240:
                                                                                        jmp   n221_var_α
n220_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1304]
                                                                                        jmp   qword ptr [rsp]
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "current_stream/1"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n222_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn293:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]                         # fn
                        lea              rsi, [rbp + 1216]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx292_240
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
.Lx292_240:
                                                                                        jmp   n220_call_proc_staged_β
n222_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn295:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]                         # fn
                        lea              rsi, [rbp + 1104]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 104
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n224_var_ref_α
n223_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        lea              r8, [rbp + 1152]
.Lx298_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx298_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        cmp              esi, 1
                                                                                        jne   .Lx298_55
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_55:
                        cmp              esi, 2
                                                                                        jne   .Lx298_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_56:
                        cmp              eax, 72
                                                                                        jne   .Lx298_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        cmp              rax, r8
                                                                                        je    .Lx298_41
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_41:
                        lea              r9, [rbp + 1168]
.Lx298_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx298_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        cmp              esi, 1
                                                                                        jne   .Lx298_57
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_57:
                        cmp              esi, 2
                                                                                        jne   .Lx298_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_58:
                        cmp              eax, 72
                                                                                        jne   .Lx298_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        cmp              rax, r9
                                                                                        je    .Lx298_43
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_43:
                        cmp              r8, r9
                                                                                        je    .Lx298_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_44
                        cmp              eax, 104
                                                                                        je    .Lx298_44
                        cmp              eax, 72
                                                                                        jne   .Lx298_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx298_44
                                                                                        jmp   .Lx298_45
.Lx298_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_53
                        cmp              eax, 104
                                                                                        je    .Lx298_53
                        cmp              eax, 72
                                                                                        jne   .Lx298_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx298_53
                                                                                        jmp   .Lx298_46
.Lx298_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx298_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx298_53
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
                                                                                        jmp   .Lx298_51
.Lx298_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_47
                        cmp              eax, 104
                                                                                        je    .Lx298_47
                        cmp              eax, 72
                                                                                        jne   .Lx298_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx298_47
                                                                                        jmp   .Lx298_48
.Lx298_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx298_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx298_53
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
                                                                                        jmp   .Lx298_51
.Lx298_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx298_49
                        cmp              edx, 80
                                                                                        je    .Lx298_53
                                                                                        jmp   .Lx298_52
.Lx298_49:
                        cmp              edx, 80
                                                                                        je    .Lx298_52
                        cmp              ecx, 5
                                                                                        je    .Lx298_53
                        cmp              edx, 5
                                                                                        je    .Lx298_53
                        cmp              ecx, 3
                                                                                        jne   .Lx298_50
                        cmp              edx, 3
                                                                                        jne   .Lx298_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx298_51
                                                                                        jmp   .Lx298_52
.Lx298_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx298_53
.Lx298_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx298_54
.Lx298_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx298_54
.Lx298_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx298_54:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 104
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n226_var_ref_α
n225_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n227_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n228_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_proc_staged_α:
                        mov              qword ptr [rbp + 992], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx304_20
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx304_21
.Lx304_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1024]                    # v
                        mov              rdx, qword ptr [rbp + 1032]                    # v
                        call             rt_arg_stage@PLT
.Lx304_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx304_22
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx304_23
.Lx304_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1040]                    # v
                        mov              rdx, qword ptr [rbp + 1048]                    # v
                        call             rt_arg_stage@PLT
.Lx304_23:
                        mov              edi, 2                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx304_1
                        lea              rcx, [rip + .Lx304_3]
                        lea              rdx, [rip + .Lx304_4]
                                                                                        jmp   rax
.Lx304_3:
                        mov              qword ptr [rbp + 1000], rsp
                        mov              rax, qword ptr [rbp + 992]
                        test             rax, rax
                                                                                        jne   .Lx304_5
                        mov              qword ptr [rbp + 992], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx304_2
.Lx304_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx304_2
.Lx304_4:
                        mov              rax, qword ptr [rbp + 992]
                        test             rax, rax
                                                                                        jne   .Lx304_6
                        mov              qword ptr [rbp + 992], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx304_2
.Lx304_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx304_2
.Lx304_1:
                        call             rt_faildescr@PLT
.Lx304_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n231_lit_string_α
                                                                                        jmp   n229_lit_string_α
n228_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1000]
                                                                                        jmp   qword ptr [rsp]
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 880], 2                       # result
                        mov              dword ptr [rbp + 884], 7
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n230_call_builtin_prolog_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "in_enum"
#-----------------------------------------------------------------------------------------------------------------------
n230_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn307:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]                         # fn
                        lea              rsi, [rbp + 864]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n233_lit_string_α
n230_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 11
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n232_call_builtin_prolog_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "not_in_enum"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn310:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]                         # fn
                        lea              rsi, [rbp + 912]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n233_lit_string_α
n232_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 0
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n234_call_builtin_prolog_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn313:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n235_var_ref_α
n234_call_builtin_prolog_β:
                                                                                        jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n237_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_proc_staged_α:
                        mov              qword ptr [rbp + 736], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx319_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx319_21
.Lx319_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 768]                     # v
                        mov              rdx, qword ptr [rbp + 776]                     # v
                        call             rt_arg_stage@PLT
.Lx319_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx319_22
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx319_23
.Lx319_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 784]                     # v
                        mov              rdx, qword ptr [rbp + 792]                     # v
                        call             rt_arg_stage@PLT
.Lx319_23:
                        mov              edi, 1                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx319_1
                        lea              rcx, [rip + .Lx319_3]
                        lea              rdx, [rip + .Lx319_4]
                                                                                        jmp   rax
.Lx319_3:
                        mov              qword ptr [rbp + 744], rsp
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx319_5
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx319_2
.Lx319_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx319_2
.Lx319_4:
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx319_6
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx319_2
.Lx319_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx319_2
.Lx319_1:
                        call             rt_faildescr@PLT
.Lx319_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n263_call_builtin_prolog_α
                                                                                        jmp   n238_var_α
n237_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 744]
                                                                                        jmp   qword ptr [rsp]
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n240_call_builtin_prolog_α
.Lx322_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n243_lit_string_α
                                                                                        jmp   n241_lit_string_α
n240_call_builtin_prolog_β:
                                                                                        jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 17
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n242_call_builtin_prolog_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "has_std_plus_open"
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn326:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn326]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n245_lit_string_α
n242_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 7
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n244_call_builtin_prolog_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "too_few"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn329:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]                         # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n245_lit_string_α
n244_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 0
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n246_call_builtin_prolog_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn332:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n247_var_ref_α
n246_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n248_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn336:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]                         # fn
                        lea              rsi, [rbp + 432]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n249_var_ref_α
n248_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n250_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 400]                     # v
                        mov              rdx, qword ptr [rbp + 408]                     # v
                        call             rt_arg_stage@PLT
.Lx340_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx340_1
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx340_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx340_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_1:
                        call             rt_faildescr@PLT
.Lx340_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n253_lit_string_α
                                                                                        jmp   n251_lit_string_α
n250_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "current_stream/1"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 11
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n252_call_builtin_prolog_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "still_there"
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn343:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]                         # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n255_lit_string_α
n252_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 16
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n254_call_builtin_prolog_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "gone_after_close"
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn346:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n255_lit_string_α
n254_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 0
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n256_call_builtin_prolog_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn349:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn349]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n257_lit_string_α
n256_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 4
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n258_call_builtin_prolog_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn352:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n259_lit_string_α
n258_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n260_call_builtin_prolog_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn355:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n237_call_proc_staged_β
                                                                                        jmp   n261_move_label_α
n260_call_builtin_prolog_β:
                                                                                        jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n261_move_label_α:
                        lea              rax, [rip + n237_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n262_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n262_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n263_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n262_disjunction_α
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
